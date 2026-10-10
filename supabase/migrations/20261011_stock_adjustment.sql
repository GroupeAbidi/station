CREATE OR REPLACE FUNCTION public.station_adjust_stock(p_user_id text, p_product_id text, p_delta_milli integer, p_reason text)
RETURNS jsonb LANGUAGE plpgsql SECURITY DEFINER SET search_path = public, extensions AS $$
DECLARE p "Product"%ROWTYPE; ref text := 'INV-' || to_char(now(), 'YYYYMMDDHH24MISS') || '-' || upper(substr(replace(extensions.gen_random_uuid()::text, '-', ''), 1, 5)); movement_id text := extensions.gen_random_uuid()::text;
BEGIN
  IF p_delta_milli = 0 THEN RAISE EXCEPTION 'Variation obligatoire.'; END IF;
  SELECT * INTO p FROM "Product" WHERE "id" = p_product_id FOR UPDATE;
  IF NOT FOUND THEN RAISE EXCEPTION 'Article introuvable.'; END IF;
  IF p."baseUnit" = 'PCE' AND mod(abs(p_delta_milli), 1000) <> 0 THEN RAISE EXCEPTION 'Les pièces doivent avoir une quantité entière.'; END IF;
  IF p."stockMilli" + p_delta_milli < 0 THEN RAISE EXCEPTION 'Stock insuffisant pour correction.'; END IF;
  UPDATE "Product" SET "stockMilli" = "stockMilli" + p_delta_milli, "updatedAt" = now() WHERE "id" = p_product_id;
  INSERT INTO "StockMovement" ("id","productId","deltaMilli","balanceAfterMilli","type","sourceRef","note","userId") VALUES (movement_id,p_product_id,p_delta_milli,p."stockMilli" + p_delta_milli,'ADJUSTMENT',ref,p_reason,p_user_id);
  INSERT INTO "AuditEvent" ("id","userId","action","entityType","entityId","details") VALUES (extensions.gen_random_uuid()::text,p_user_id,'STOCK_ADJUSTMENT','StockMovement',movement_id,p_reason);
  RETURN jsonb_build_object('id',movement_id,'sourceRef',ref,'balanceAfterMilli',p."stockMilli" + p_delta_milli);
END; $$;
