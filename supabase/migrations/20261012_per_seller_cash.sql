-- Every cash sale must use the open cash session owned by the seller creating it.
CREATE OR REPLACE FUNCTION public.station_check_cash_session_owner()
RETURNS trigger LANGUAGE plpgsql SECURITY DEFINER SET search_path = public AS $$
BEGIN
  IF NEW."paymentMethod" = 'CASH' AND NOT EXISTS (
    SELECT 1 FROM "CashSession"
    WHERE "id" = NEW."cashSessionId"
      AND "userId" = NEW."createdById"
      AND "closedAt" IS NULL
  ) THEN
    RAISE EXCEPTION 'La vente en especes doit utiliser la caisse ouverte du vendeur.';
  END IF;
  RETURN NEW;
END;
$$;

DROP TRIGGER IF EXISTS station_sale_cash_owner ON "Sale";
CREATE TRIGGER station_sale_cash_owner
BEFORE INSERT ON "Sale"
FOR EACH ROW EXECUTE FUNCTION public.station_check_cash_session_owner();
