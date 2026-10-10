CREATE OR REPLACE FUNCTION public.station_create_sale(
  p_user_id text,
  p_client text,
  p_payment_method text,
  p_cash_session_id text,
  p_lines jsonb
) RETURNS jsonb
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public, extensions
AS $$
DECLARE
  v_sale_id text := extensions.gen_random_uuid()::text;
  v_ref text := 'VTE-' || to_char(now(), 'YYYYMMDDHH24MISS') || '-' || upper(substr(replace(extensions.gen_random_uuid()::text, '-', ''), 1, 5));
  v_cash_id text;
  v_total integer := 0;
  v_item record;
  v_product "Product"%ROWTYPE;
  v_base integer;
  v_unit_price integer;
  v_line_total integer;
  v_cost integer;
BEGIN
  IF jsonb_typeof(p_lines) <> 'array' OR jsonb_array_length(p_lines) = 0 THEN
    RAISE EXCEPTION 'Une vente doit contenir au moins un article.';
  END IF;
  IF p_payment_method NOT IN ('CASH', 'CARD', 'CREDIT') THEN
    RAISE EXCEPTION 'Mode de paiement invalide.';
  END IF;
  IF p_payment_method = 'CASH' THEN
    SELECT "id" INTO v_cash_id FROM "CashSession"
    WHERE "id" = COALESCE(p_cash_session_id, "id") AND "closedAt" IS NULL
    ORDER BY "openedAt" DESC LIMIT 1;
    IF v_cash_id IS NULL THEN RAISE EXCEPTION 'Ouvrez une caisse avant d’enregistrer une vente en espèces.'; END IF;
  END IF;

  FOR v_item IN SELECT * FROM jsonb_to_recordset(p_lines) AS x("productId" text, "qtyMilli" integer, "sellUnit" text, "priceCents" integer)
  LOOP
    SELECT * INTO v_product FROM "Product" WHERE "id" = v_item."productId" AND "active" = true FOR UPDATE;
    IF NOT FOUND THEN RAISE EXCEPTION 'Article inactif ou introuvable.'; END IF;
    IF v_item."qtyMilli" IS NULL OR v_item."qtyMilli" <= 0 THEN RAISE EXCEPTION 'Quantité invalide.'; END IF;
    IF v_item."sellUnit" = 'BASE' THEN v_base := v_item."qtyMilli";
    ELSIF v_item."sellUnit" = 'PURCHASE' THEN v_base := v_item."qtyMilli" * v_product."purchaseFactorMilli" / 1000;
    ELSE RAISE EXCEPTION 'Unité de vente invalide.'; END IF;
    IF v_product."baseUnit" = 'PCE' AND mod(v_base, 1000) <> 0 THEN RAISE EXCEPTION 'Les pièces doivent avoir une quantité entière.'; END IF;
    IF v_product."stockMilli" < v_base THEN RAISE EXCEPTION 'Stock insuffisant pour : %.', v_product."name"; END IF;
    v_unit_price := COALESCE(v_item."priceCents", CASE WHEN v_item."sellUnit" = 'BASE' THEN v_product."salePriceCents" ELSE v_product."salePriceCents" * v_product."purchaseFactorMilli" / 1000 END);
    v_line_total := round(v_unit_price * v_item."qtyMilli" / 1000.0);
    v_total := v_total + v_line_total;
  END LOOP;

  INSERT INTO "Sale" ("id", "ref", "client", "totalCents", "paymentMethod", "cashSessionId", "createdById")
  VALUES (v_sale_id, v_ref, COALESCE(p_client, ''), v_total, p_payment_method, v_cash_id, p_user_id);
  FOR v_item IN SELECT * FROM jsonb_to_recordset(p_lines) AS x("productId" text, "qtyMilli" integer, "sellUnit" text, "priceCents" integer)
  LOOP
    SELECT * INTO v_product FROM "Product" WHERE "id" = v_item."productId" FOR UPDATE;
    v_base := CASE WHEN v_item."sellUnit" = 'BASE' THEN v_item."qtyMilli" ELSE v_item."qtyMilli" * v_product."purchaseFactorMilli" / 1000 END;
    v_unit_price := COALESCE(v_item."priceCents", CASE WHEN v_item."sellUnit" = 'BASE' THEN v_product."salePriceCents" ELSE v_product."salePriceCents" * v_product."purchaseFactorMilli" / 1000 END);
    v_line_total := round(v_unit_price * v_item."qtyMilli" / 1000.0);
    v_cost := round(v_product."purchasePriceCents" * CASE WHEN v_item."sellUnit" = 'BASE' THEN v_base::numeric / v_product."purchaseFactorMilli" ELSE v_item."qtyMilli"::numeric / 1000 END);
    UPDATE "Product" SET "stockMilli" = "stockMilli" - v_base, "updatedAt" = now() WHERE "id" = v_product."id";
    INSERT INTO "SaleLine" ("id", "saleId", "productId", "qtyMilli", "sellUnit", "qtyBaseMilli", "priceCents", "costCents", "totalCents")
    VALUES (extensions.gen_random_uuid()::text, v_sale_id, v_product."id", v_item."qtyMilli", v_item."sellUnit", v_base, v_unit_price, v_cost, v_line_total);
    INSERT INTO "StockMovement" ("id", "productId", "deltaMilli", "balanceAfterMilli", "type", "sourceRef", "userId", "note")
    VALUES (extensions.gen_random_uuid()::text, v_product."id", -v_base, v_product."stockMilli" - v_base, 'SALE', v_ref, p_user_id, COALESCE(p_client, ''));
  END LOOP;
  INSERT INTO "AuditEvent" ("id", "userId", "action", "entityType", "entityId", "details")
  VALUES (extensions.gen_random_uuid()::text, p_user_id, 'SALE', 'Sale', v_sale_id, v_ref);
  RETURN jsonb_build_object('id', v_sale_id, 'ref', v_ref, 'totalCents', v_total);
END;
$$;
