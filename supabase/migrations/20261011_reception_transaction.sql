CREATE OR REPLACE FUNCTION public.station_receive_goods(p_user_id text, p_request_id text, p_note text, p_lines jsonb)
RETURNS jsonb LANGUAGE plpgsql SECURITY DEFINER SET search_path = public, extensions AS $$
DECLARE req "PurchaseRequest"%ROWTYPE; receipt_id text := extensions.gen_random_uuid()::text; ref text := 'REC-' || to_char(now(), 'YYYYMMDDHH24MISS') || '-' || upper(substr(replace(extensions.gen_random_uuid()::text, '-', ''),1,5)); item record; line "PurchaseLine"%ROWTYPE; product "Product"%ROWTYPE; qty integer; base integer; v_status text;
BEGIN
  SELECT * INTO req FROM "PurchaseRequest" WHERE "id" = p_request_id FOR UPDATE;
  IF NOT FOUND OR req."status" NOT IN ('APPROVED','PARTIAL') THEN RAISE EXCEPTION 'La demande doit être approuvée et non terminée.'; END IF;
  IF jsonb_typeof(p_lines) <> 'array' OR jsonb_array_length(p_lines) = 0 THEN RAISE EXCEPTION 'Saisissez au moins une quantité.'; END IF;
  INSERT INTO "Reception" ("id","ref","requestId","createdById","note") VALUES (receipt_id,ref,p_request_id,p_user_id,COALESCE(p_note,''));
  FOR item IN SELECT * FROM jsonb_to_recordset(p_lines) AS x("purchaseLineId" text,"quantityMilli" integer) LOOP
    SELECT * INTO line FROM "PurchaseLine" WHERE "id" = item."purchaseLineId" AND "requestId" = p_request_id FOR UPDATE;
    IF NOT FOUND OR item."quantityMilli" IS NULL OR item."quantityMilli" <= 0 OR item."quantityMilli" > line."requestedMilli" - line."receivedMilli" THEN RAISE EXCEPTION 'Quantité de réception invalide.'; END IF;
    SELECT * INTO product FROM "Product" WHERE "id" = line."productId" AND "active" = true FOR UPDATE;
    IF NOT FOUND THEN RAISE EXCEPTION 'Article inactif.'; END IF;
    qty := item."quantityMilli";
    -- Multiply as bigint first: e.g. 1,000 citernes of 200 L must not overflow an integer mid-calculation.
    base := (qty::bigint * product."purchaseFactorMilli"::bigint / 1000)::integer;
    IF product."baseUnit" = 'PCE' AND mod(base,1000) <> 0 THEN RAISE EXCEPTION 'Les pièces doivent avoir une quantité entière.'; END IF;
    INSERT INTO "ReceptionLine" ("id","receptionId","productId","qtyPurchaseMilli","qtyBaseMilli") VALUES (extensions.gen_random_uuid()::text,receipt_id,product."id",qty,base);
    UPDATE "PurchaseLine" SET "receivedMilli" = "receivedMilli" + qty WHERE "id" = line."id";
    UPDATE "Product" SET "stockMilli" = "stockMilli" + base, "updatedAt" = now() WHERE "id" = product."id";
    INSERT INTO "StockMovement" ("id","productId","deltaMilli","balanceAfterMilli","type","sourceRef","note","userId") VALUES (extensions.gen_random_uuid()::text,product."id",base,product."stockMilli" + base,'RECEPTION',ref,COALESCE(p_note,''),p_user_id);
  END LOOP;
  SELECT CASE WHEN bool_and("receivedMilli" = "requestedMilli") THEN 'RECEIVED' ELSE 'PARTIAL' END INTO v_status FROM "PurchaseLine" WHERE "requestId" = p_request_id;
  UPDATE "PurchaseRequest" SET "status" = v_status, "updatedAt" = now() WHERE "id" = p_request_id;
  INSERT INTO "AuditEvent" ("id","userId","action","entityType","entityId","details") VALUES (extensions.gen_random_uuid()::text,p_user_id,'GOODS_RECEIPT','Reception',receipt_id,ref || ' ' || req."ref");
  RETURN jsonb_build_object('id',receipt_id,'ref',ref,'status',v_status);
END; $$;
