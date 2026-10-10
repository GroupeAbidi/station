CREATE OR REPLACE FUNCTION public.station_return_sale(p_user_id text, p_sale_id text, p_reason text, p_lines jsonb)
RETURNS jsonb LANGUAGE plpgsql SECURITY DEFINER SET search_path = public, extensions AS $$
DECLARE sale "Sale"%ROWTYPE; ret_id text := extensions.gen_random_uuid()::text; ref text := 'RET-' || to_char(now(),'YYYYMMDDHH24MISS') || '-' || upper(substr(replace(extensions.gen_random_uuid()::text,'-',''),1,5)); item record; line "SaleLine"%ROWTYPE; product "Product"%ROWTYPE; already integer; qty integer; base integer; amount integer; total integer := 0;
BEGIN
  SELECT * INTO sale FROM "Sale" WHERE "id" = p_sale_id FOR UPDATE; IF NOT FOUND THEN RAISE EXCEPTION 'Vente introuvable.'; END IF;
  IF jsonb_typeof(p_lines) <> 'array' OR jsonb_array_length(p_lines)=0 THEN RAISE EXCEPTION 'Sélectionnez au moins une ligne.'; END IF;
  FOR item IN SELECT * FROM jsonb_to_recordset(p_lines) AS x("saleLineId" text,"quantityMilli" integer) LOOP
    SELECT * INTO line FROM "SaleLine" WHERE "id"=item."saleLineId" AND "saleId"=p_sale_id FOR UPDATE;
    IF NOT FOUND OR item."quantityMilli" IS NULL OR item."quantityMilli"<=0 THEN RAISE EXCEPTION 'Ligne de retour invalide.'; END IF;
    SELECT COALESCE(sum("qtyMilli"),0) INTO already FROM "SaleReturnLine" WHERE "saleLineId"=line."id";
    IF item."quantityMilli" > line."qtyMilli"-already THEN RAISE EXCEPTION 'Quantité retournée supérieure à la quantité vendue.'; END IF;
    total := total + round(line."totalCents" * item."quantityMilli" / line."qtyMilli"::numeric);
  END LOOP;
  INSERT INTO "SaleReturn" ("id","ref","saleId","createdById","reason","totalCents") VALUES(ret_id,ref,p_sale_id,p_user_id,p_reason,total);
  FOR item IN SELECT * FROM jsonb_to_recordset(p_lines) AS x("saleLineId" text,"quantityMilli" integer) LOOP
    SELECT * INTO line FROM "SaleLine" WHERE "id"=item."saleLineId"; SELECT * INTO product FROM "Product" WHERE "id"=line."productId" FOR UPDATE;
    qty:=item."quantityMilli"; base:=line."qtyBaseMilli"*qty/line."qtyMilli"; amount:=round(line."totalCents"*qty/line."qtyMilli"::numeric);
    INSERT INTO "SaleReturnLine" ("id","returnId","saleLineId","qtyMilli","qtyBaseMilli","amountCents") VALUES(extensions.gen_random_uuid()::text,ret_id,line."id",qty,base,amount);
    UPDATE "Product" SET "stockMilli"="stockMilli"+base,"updatedAt"=now() WHERE "id"=product."id";
    INSERT INTO "StockMovement" ("id","productId","deltaMilli","balanceAfterMilli","type","sourceRef","note","userId") VALUES(extensions.gen_random_uuid()::text,product."id",base,product."stockMilli"+base,'RETURN',ref,p_reason,p_user_id);
  END LOOP;
  INSERT INTO "AuditEvent" ("id","userId","action","entityType","entityId","details") VALUES(extensions.gen_random_uuid()::text,p_user_id,'SALE_RETURN','SaleReturn',ret_id,ref||' '||sale."ref");
  RETURN jsonb_build_object('id',ret_id,'ref',ref,'totalCents',total);
END; $$;
