INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "createdAt", "updatedAt"
)
VALUES (
  extensions.gen_random_uuid()::text, 'TEST-RIZ-1KG', 'TEST-0001', 'Riz test 1 KG', 'riz test 1 kg', 'Test',
  'PCE', 'Sac', 1000, 100000, 10000, 5000, 7000, true, now(), now()
)
ON CONFLICT ("internalCode") DO UPDATE SET
  "stockMilli" = 100000,
  "salePriceCents" = 7000,
  "purchasePriceCents" = 5000,
  "active" = true,
  "updatedAt" = now();
