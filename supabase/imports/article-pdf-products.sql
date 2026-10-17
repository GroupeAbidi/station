-- Generated from ARTICLE.pdf (66 pages).
-- 1335 valid product records; 34 malformed rows excluded.
-- This imports catalog entries and prices only. Stock remains zero so that stock movements remain auditable.
-- Existing products with the same internal code or normalized designation are preserved.
BEGIN;
INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PURFIN-SPEED-FIRE', NULL, 'PURFIN SPEED FIRE', 'purfin speed fire', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 22000, 40000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PURFIN-SPEED-FIRE' OR "normalizedName" = 'purfin speed fire'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-JILIA', NULL, 'JILIA', 'jilia', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 40000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-JILIA' OR "normalizedName" = 'jilia'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-ASIA-ROYALEP90', NULL, 'ASIA ROYAEP90', 'asia royaep90', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 27000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-ASIA-ROYALEP90' OR "normalizedName" = 'asia royaep90'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GLACIOL-G13-5L', NULL, 'GLACIOL FORSCH G13 5L', 'glaciol forsch g13 5l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 150000, 190000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GLACIOL-G13-5L' OR "normalizedName" = 'glaciol forsch g13 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-EXOL-5W30-5L', NULL, 'EXOL 5W30 5L', 'exol 5w30 5l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 660000, 730000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-EXOL-5W30-5L' OR "normalizedName" = 'exol 5w30 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FA-2712', NULL, 'FILTRE ALSAFA FA-2712', 'filtre alsafa fa-2712', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 145000, 180000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FA-2712' OR "normalizedName" = 'filtre alsafa fa-2712'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-K1122', NULL, 'FILTRE K1122', 'filtre k1122', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 135000, 170000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-K1122' OR "normalizedName" = 'filtre k1122'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LF0223', NULL, 'FILTRE AIR LF0223', 'filtre air lf0223', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 95000, 120000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LF0223' OR "normalizedName" = 'filtre air lf0223'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-13223289317-00', NULL, 'FILTRE GFB 13223289317', 'filtre gfb 13223289317', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 105000, 140000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-13223289317-00' OR "normalizedName" = 'filtre gfb 13223289317'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-AF045', NULL, 'FILTRE AMC AF045', 'filtre amc af045', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 55000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-AF045' OR "normalizedName" = 'filtre amc af045'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-203204500-00', NULL, 'FILTRE ORYX 203204500', 'filtre oryx 203204500', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 65000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-203204500-00' OR "normalizedName" = 'filtre oryx 203204500'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FA-138', NULL, 'FILTRE VESTAL VS-FA 138', 'filtre vestal vs-fa 138', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 50000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FA-138' OR "normalizedName" = 'filtre vestal vs-fa 138'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-28113-2P300', NULL, 'FILTRE AIR 28113-2P300', 'filtre air 28113-2p300', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 70000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-28113-2P300' OR "normalizedName" = 'filtre air 28113-2p300'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-NATA-100AH', NULL, 'BATTERIE NATA 100AH', 'batterie nata 100ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1395000, 1550000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-NATA-100AH' OR "normalizedName" = 'batterie nata 100ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-NATA-75AH', NULL, 'BATTERIE NATA 75AH', 'batterie nata 75ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1000000, 1150000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-NATA-75AH' OR "normalizedName" = 'batterie nata 75ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-EXOL-0W20-5L', NULL, 'EXOL 0W20 5L', 'exol 0w20 5l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 840000, 940000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-EXOL-0W20-5L' OR "normalizedName" = 'exol 0w20 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FG-41', NULL, 'FILTRE VESTAL VS-FG 41', 'filtre vestal vs-fg 41', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 60000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FG-41' OR "normalizedName" = 'filtre vestal vs-fg 41'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-28113-1Y100', NULL, 'FILTRE AIR HNB 28113-1Y100', 'filtre air hnb 28113-1y100', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-28113-1Y100' OR "normalizedName" = 'filtre air hnb 28113-1y100'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TL-7240', NULL, 'FILTRE AUTOTTEILLE TL 7240', 'filtre autotteille tl 7240', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 55000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TL-7240' OR "normalizedName" = 'filtre autotteille tl 7240'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LAVE-GLACE-BLK-5L', NULL, 'LAVE GLACE BLK 5L', 'lave glace blk 5l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 40000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LAVE-GLACE-BLK-5L' OR "normalizedName" = 'lave glace blk 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-MATADOR-95', NULL, 'BATTERIE MATADOR 95', 'batterie matador 95', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1450000, 1650000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-MATADOR-95' OR "normalizedName" = 'batterie matador 95'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-MOTUL-5W30-5L', NULL, 'MOTUL 5W30 5L', 'motul 5w30 5l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 900000, 1030000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-MOTUL-5W30-5L' OR "normalizedName" = 'motul 5w30 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FH32', NULL, 'FILTRE VESTAL VS-FH32', 'filtre vestal vs-fh32', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 35000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FH32' OR "normalizedName" = 'filtre vestal vs-fh32'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-ASSAD-180AH', NULL, 'BATTERIE ASSAD 180AH', 'batterie assad 180ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 2200000, 2350000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-ASSAD-180AH' OR "normalizedName" = 'batterie assad 180ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-FASTENERGY-40AH', NULL, 'BATTERIE FASTENERGY 40AH', 'batterie fastenergy 40ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 700000, 850000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-FASTENERGY-40AH' OR "normalizedName" = 'batterie fastenergy 40ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-VITO-PRO-100AH', NULL, 'BATTERIE VITO PRO 100AH', 'batterie vito pro 100ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1420000, 1570000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-VITO-PRO-100AH' OR "normalizedName" = 'batterie vito pro 100ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-VOLTRA-62AH', NULL, 'BATTERIE VOLTRA 62AH', 'batterie voltra 62ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 840000, 990000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-VOLTRA-62AH' OR "normalizedName" = 'batterie voltra 62ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-PREMEX-62AH', NULL, 'BATTERIE PREMEX 62AH', 'batterie premex 62ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 880000, 1030000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-PREMEX-62AH' OR "normalizedName" = 'batterie premex 62ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GLACIOL-PROM-2L', NULL, 'GLACIOL PROM 2L', 'glaciol prom 2l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 37000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GLACIOL-PROM-2L' OR "normalizedName" = 'glaciol prom 2l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TL51791E', NULL, 'FILTRE AUTOTEILE TL51791E', 'filtre autoteile tl51791e', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 155000, 200000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TL51791E' OR "normalizedName" = 'filtre autoteile tl51791e'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TF8404', NULL, 'FILTRE AUTOTEILE TF8404', 'filtre autoteile tf8404', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 105000, 160000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TF8404' OR "normalizedName" = 'filtre autoteile tf8404'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GRAISSE-OLIDEX-1KG', NULL, 'GRAISSE OLIDEX 1KG', 'graisse olidex 1kg', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 29000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GRAISSE-OLIDEX-1KG' OR "normalizedName" = 'graisse olidex 1kg'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-NATA-65AH', NULL, 'BATTERIE NATA 65AH', 'batterie nata 65ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 920000, 1170000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-NATA-65AH' OR "normalizedName" = 'batterie nata 65ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-NEX-POWER-60AH', NULL, 'BATTERIE NEX POWER 60AH', 'batterie nex power 60ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 860000, 1010000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-NEX-POWER-60AH' OR "normalizedName" = 'batterie nex power 60ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PETROBARAKA-S40-20L', NULL, 'PETROBARAKA S40 20L', 'petrobaraka s40 20l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 825000, 950000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PETROBARAKA-S40-20L' OR "normalizedName" = 'petrobaraka s40 20l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-T-WL7151', NULL, 'FILTRE TECNO T-WL7151', 'filtre tecno t-wl7151', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 65000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-T-WL7151' OR "normalizedName" = 'filtre tecno t-wl7151'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-AS-3002', NULL, 'FILTRE SAFI AS 3002', 'filtre safi as 3002', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 65000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-AS-3002' OR "normalizedName" = 'filtre safi as 3002'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-T-WL7296', NULL, 'FILTRE TECNO T-WL7296', 'filtre tecno t-wl7296', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-T-WL7296' OR "normalizedName" = 'filtre tecno t-wl7296'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GLACIOL-PROM-26-20L', NULL, 'GLACIOL PROM -26 20L', 'glaciol prom -26 20l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 570000, 680000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GLACIOL-PROM-26-20L' OR "normalizedName" = 'glaciol prom -26 20l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GLACIOL-SOPRE-OIL-5L', NULL, 'GLACIOL SOPRE OIL 5L', 'glaciol sopre oil 5l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 57000, 75000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GLACIOL-SOPRE-OIL-5L' OR "normalizedName" = 'glaciol sopre oil 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-SOPRE-OIL-10W40-4TMM', NULL, 'SOPRE-OIL 10W40 4TMM', 'sopre-oil 10w40 4tmm', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 62000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-SOPRE-OIL-10W40-4TMM' OR "normalizedName" = 'sopre-oil 10w40 4tmm'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-EXTENTOUR-2KG', NULL, 'EXTENTOUR 2KG', 'extentour 2kg', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 300000, 380000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-EXTENTOUR-2KG' OR "normalizedName" = 'extentour 2kg'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PURFIN-EYTEL', NULL, 'PURFIN EYTEL', 'purfin eytel', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 27000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PURFIN-EYTEL' OR "normalizedName" = 'purfin eytel'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PURFIN-DELICE', NULL, 'PURFIN DELICE', 'purfin delice', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 27000, 40000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PURFIN-DELICE' OR "normalizedName" = 'purfin delice'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-AF-081', NULL, 'FILTRE AMC AF 081', 'filtre amc af 081', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 115000, 160000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-AF-081' OR "normalizedName" = 'filtre amc af 081'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FG85', NULL, 'FILTRE VESTAL VS-FG85', 'filtre vestal vs-fg85', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 120000, 150000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FG85' OR "normalizedName" = 'filtre vestal vs-fg85'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-HY-8009', NULL, 'FILTRE HONG SHENG HY 8009', 'filtre hong sheng hy 8009', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 30000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-HY-8009' OR "normalizedName" = 'filtre hong sheng hy 8009'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-JX-0814', NULL, 'FILTRE HUGO JX 0814', 'filtre hugo jx 0814', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 55000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-JX-0814' OR "normalizedName" = 'filtre hugo jx 0814'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-AKROM-180AH', NULL, 'BATTERIE AKROM 180AH', 'batterie akrom 180ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 2100000, 2250000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-AKROM-180AH' OR "normalizedName" = 'batterie akrom 180ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VERMAX-75AH', NULL, 'BATTERIE VERMAX 75AH', 'batterie vermax 75ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 940000, 1090000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VERMAX-75AH' OR "normalizedName" = 'batterie vermax 75ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-8-97148270-0', NULL, 'FILTRE HUGO 8-97148270-0', 'filtre hugo 8-97148270-0', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 85000, 110000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-8-97148270-0' OR "normalizedName" = 'filtre hugo 8-97148270-0'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-ARCO-60AH', NULL, 'BATTERIE ARCO 60AH', 'batterie arco 60ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 910000, 1060000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-ARCO-60AH' OR "normalizedName" = 'batterie arco 60ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FLIPEN-MAX-65AH', NULL, 'BATTERIE FLIPEN MAX 65AH', 'batterie flipen max 65ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 900000, 1050000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FLIPEN-MAX-65AH' OR "normalizedName" = 'batterie flipen max 65ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-ORIGINAL-BLK-5L', NULL, 'GLACIOL ORIGINAL BLK 5L', 'glaciol original blk 5l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 145000, 190000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-ORIGINAL-BLK-5L' OR "normalizedName" = 'glaciol original blk 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-AUTOMATIVE-BLK-2L', NULL, 'GLACIOL AUTOMATIVE BLK 2L', 'glaciol automative blk 2l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 30000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-AUTOMATIVE-BLK-2L' OR "normalizedName" = 'glaciol automative blk 2l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-DOT-4-PROM', NULL, 'DOT 4 PROM', 'dot 4 prom', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 62000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-DOT-4-PROM' OR "normalizedName" = 'dot 4 prom'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-DOT-3-PROM', NULL, 'DOT 3 PROM', 'dot 3 prom', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 56000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-DOT-3-PROM' OR "normalizedName" = 'dot 3 prom'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-0-5L-OILFINO-10W40', NULL, '0.5L OILFINO 10W40', '0.5l oilfino 10w40', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 46500, 54000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-0-5L-OILFINO-10W40' OR "normalizedName" = '0.5l oilfino 10w40'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LIQUI-MOLLY-RADIATEUR-CLEANER', NULL, 'LIQUI MOLLY RADIATEUR CLEANER', 'liqui molly radiateur cleaner', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 110000, 140000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LIQUI-MOLLY-RADIATEUR-CLEANER' OR "normalizedName" = 'liqui molly radiateur cleaner'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LIQUI-MOLLY-SOUPAPES-NETTES-150-ML', NULL, 'LIQUI MOLLY SOUPAPES NETTES 150 ML', 'liqui molly soupapes nettes 150 ml', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 95000, 120000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LIQUI-MOLLY-SOUPAPES-NETTES-150-ML' OR "normalizedName" = 'liqui molly soupapes nettes 150 ml'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FLIPEN-MAX-185-AH', NULL, 'BATTERIE FLIPEN MAX 185 AH', 'batterie flipen max 185 ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 2100000, 2250000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FLIPEN-MAX-185-AH' OR "normalizedName" = 'batterie flipen max 185 ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-AF0065', NULL, 'FILTRE AMC AF0065', 'filtre amc af0065', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 900000, 1100000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-AF0065' OR "normalizedName" = 'filtre amc af0065'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FH90', NULL, 'FILTRE VESTAL VS-FH90', 'filtre vestal vs-fh90', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 35000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FH90' OR "normalizedName" = 'filtre vestal vs-fh90'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-17801-61030', NULL, 'FILTRE AFLEX 17801-61030', 'filtre aflex 17801-61030', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 145000, 190000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-17801-61030' OR "normalizedName" = 'filtre aflex 17801-61030'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GF-0500-1N', NULL, 'FILTRE GFB GF-0500/1N', 'filtre gfb gf-0500/1n', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 70000, 100000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GF-0500-1N' OR "normalizedName" = 'filtre gfb gf-0500/1n'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FC28-B', NULL, 'FILTRE ELEMENT VS-FC28-B', 'filtre element vs-fc28-b', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 55000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FC28-B' OR "normalizedName" = 'filtre element vs-fc28-b'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-CHARTTOTON-NOIR-GRAND', NULL, 'CHARTTOTON NOIR GRAND', 'charttoton noir grand', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 10000, 15000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-CHARTTOTON-NOIR-GRAND' OR "normalizedName" = 'charttoton noir grand'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PROFWELL-PLASTIQUE-750ML', NULL, 'PROFWELL PLASTIQUE 750ML', 'profwell plastique 750ml', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 46000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PROFWELL-PLASTIQUE-750ML' OR "normalizedName" = 'profwell plastique 750ml'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-AKTROM-160AH', NULL, 'BATTERIE AKTROM 160AH', 'batterie aktrom 160ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 2000000, 2150000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-AKTROM-160AH' OR "normalizedName" = 'batterie aktrom 160ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-MATADOR-63AH', NULL, 'BATTERIE MATADOR 63AH', 'batterie matador 63ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1000000, 1150000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-MATADOR-63AH' OR "normalizedName" = 'batterie matador 63ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-OK6B0-23-603A', NULL, 'FILTRE KING OK6B0-23-603A', 'filtre king ok6b0-23-603a', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 90000, 130000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-OK6B0-23-603A' OR "normalizedName" = 'filtre king ok6b0-23-603a'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-8-94414796-3', NULL, 'FILTRE KING 8-94414796-3', 'filtre king 8-94414796-3', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 40000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-8-94414796-3' OR "normalizedName" = 'filtre king 8-94414796-3'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-1444-VL', NULL, 'FILTRE ORYX 1444 VL', 'filtre oryx 1444 vl', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 65000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-1444-VL' OR "normalizedName" = 'filtre oryx 1444 vl'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-1444-TJ', NULL, 'FILTRE ORYX 1444 TJ', 'filtre oryx 1444 tj', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 40000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-1444-TJ' OR "normalizedName" = 'filtre oryx 1444 tj'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FA-52', NULL, 'FILTRE VESTAL FA-52', 'filtre vestal fa-52', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 40000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FA-52' OR "normalizedName" = 'filtre vestal fa-52'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILEX-1109AY', NULL, 'FILTRE FILEX 1109AY', 'filtre filex 1109ay', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 30000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILEX-1109AY' OR "normalizedName" = 'filtre filex 1109ay'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GRAISSE-PETRO-BARAKA-COMPLEXE-15KG', NULL, 'GRAISSE PETRO BARAKA COMPLEXE 15KG', 'graisse petro baraka complexe 15kg', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 1750000, 1900000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GRAISSE-PETRO-BARAKA-COMPLEXE-15KG' OR "normalizedName" = 'graisse petro baraka complexe 15kg'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GRAISSE-MIZA-100-GR', NULL, 'GRAISSE MIZA 100 Gr', 'graisse miza 100 gr', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 6500, 15000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GRAISSE-MIZA-100-GR' OR "normalizedName" = 'graisse miza 100 gr'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GRAISSE-MIZA-350-GR', NULL, 'GRAISSE MIZA 350 Gr', 'graisse miza 350 gr', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 13500, 25000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GRAISSE-MIZA-350-GR' OR "normalizedName" = 'graisse miza 350 gr'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-E422H-D86', NULL, 'FILTRE HENGST E422H D86', 'filtre hengst e422h d86', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 380000, 480000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-E422H-D86' OR "normalizedName" = 'filtre hengst e422h d86'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LINJETTE-AUTONET', NULL, 'LINJETTE AUTONET', 'linjette autonet', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 15000, 20000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LINJETTE-AUTONET' OR "normalizedName" = 'linjette autonet'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-PERFECT', NULL, 'FILTRE PERFECT', 'filtre perfect', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 28000, 40000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-PERFECT' OR "normalizedName" = 'filtre perfect'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-SMOKE-STOP', NULL, 'SMOKE STOP', 'smoke stop', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 90000, 120000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-SMOKE-STOP' OR "normalizedName" = 'smoke stop'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PURFIN-PONALIZA-MAGIC', NULL, 'PURFIN PONALIZA MAGIC', 'purfin ponaliza magic', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 19000, 25000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PURFIN-PONALIZA-MAGIC' OR "normalizedName" = 'purfin ponaliza magic'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LAVE-GLACE-NAF-5L', NULL, 'LAVE GLACE NAF 5L', 'lave glace naf 5l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 72000, 100000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LAVE-GLACE-NAF-5L' OR "normalizedName" = 'lave glace naf 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-ARCO-180AH', NULL, 'BATTERIE ARCO 180AH', 'batterie arco 180ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 2200000, 2350000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-ARCO-180AH' OR "normalizedName" = 'batterie arco 180ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-205-55-R16-91V-PC7', NULL, 'PNEU CONTINENTAL 205/55 R16 91V PC7', 'pneu continental 205/55 r16 91v pc7', 'Pneus',
       'PCE', 'PCE', 1000, 0, 0, 1480000, 1600000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-205-55-R16-91V-PC7' OR "normalizedName" = 'pneu continental 205/55 r16 91v pc7'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-215-55-R16-93V-S-L3', NULL, 'PNEU CONTINENTAL 215/55 R16 93V S-L3', 'pneu continental 215/55 r16 93v s-l3', 'Pneus',
       'PCE', 'PCE', 1000, 0, 0, 1785000, 1870000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-215-55-R16-93V-S-L3' OR "normalizedName" = 'pneu continental 215/55 r16 93v s-l3'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-195-75-16C-107-105R', NULL, 'PNEU CONTINENTAL 195/75 16C 107/105R', 'pneu continental 195/75 16c 107/105r', 'Pneus',
       'PCE', 'PCE', 1000, 0, 0, 1860000, 1990000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-195-75-16C-107-105R' OR "normalizedName" = 'pneu continental 195/75 16c 107/105r'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-195-70-R15-C104-102R', NULL, 'PNEU CONTINENTAL 195/70 R15 C104/102R', 'pneu continental 195/70 r15 c104/102r', 'Pneus',
       'PCE', 'PCE', 1000, 0, 0, 1550000, 1620000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-195-70-R15-C104-102R' OR "normalizedName" = 'pneu continental 195/70 r15 c104/102r'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-205-45-R17-88W', NULL, 'PNEU CONTINENTAL 205/45 R17 88W', 'pneu continental 205/45 r17 88w', 'Pneus',
       'PCE', 'PCE', 1000, 0, 0, 2010000, 2300000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-205-45-R17-88W' OR "normalizedName" = 'pneu continental 205/45 r17 88w'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-185-60-R14-82H', NULL, 'PNEU CONTINENTAL 185/60 R14 82H', 'pneu continental 185/60 r14 82h', 'Pneus',
       'PCE', 'PCE', 1000, 0, 0, 1105000, 1150000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-185-60-R14-82H' OR "normalizedName" = 'pneu continental 185/60 r14 82h'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-225-45-R17-91V', NULL, 'PNEU CONTINENTAL 225/45 R17 91V', 'pneu continental 225/45 r17 91v', 'Pneus',
       'PCE', 'PCE', 1000, 0, 0, 1510000, 1600000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-225-45-R17-91V' OR "normalizedName" = 'pneu continental 225/45 r17 91v'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-185-60-R15-84T', NULL, 'PNEU CONTINENTAL 185/60 R15 84T', 'pneu continental 185/60 r15 84t', 'Pneus',
       'PCE', 'PCE', 1000, 0, 0, 1275000, 1350000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-185-60-R15-84T' OR "normalizedName" = 'pneu continental 185/60 r15 84t'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-175-65-R14-82T', NULL, 'PNEU CONTINENTAL 175/65 R14 82T', 'pneu continental 175/65 r14 82t', 'Pneus',
       'PCE', 'PCE', 1000, 0, 0, 1040000, 1090000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-175-65-R14-82T' OR "normalizedName" = 'pneu continental 175/65 r14 82t'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-195-55-R16-91H', NULL, 'PNEU CONTINENTAL 195/55 R16 91H', 'pneu continental 195/55 r16 91h', 'Pneus',
       'PCE', 'PCE', 1000, 0, 0, 1470000, 1520000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-195-55-R16-91H' OR "normalizedName" = 'pneu continental 195/55 r16 91h'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-195-55-R16-87H', NULL, 'PNEU CONTINENTAL 195/55 R16 87H', 'pneu continental 195/55 r16 87h', 'Pneus',
       'PCE', 'PCE', 1000, 0, 0, 1470000, 1520000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-195-55-R16-87H' OR "normalizedName" = 'pneu continental 195/55 r16 87h'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PETROSEB-EP90-20L', NULL, 'PETROSEB EP90 20L', 'petroseb ep90 20l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 780000, 850000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PETROSEB-EP90-20L' OR "normalizedName" = 'petroseb ep90 20l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PETROSEB-10W-20L', NULL, 'PETROSEB 10W 20L', 'petroseb 10w 20l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 600000, 700000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PETROSEB-10W-20L' OR "normalizedName" = 'petroseb 10w 20l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-OILFINO-5W40-1L', NULL, 'OILFINO 5W40 1L', 'oilfino 5w40 1l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 130000, 150000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-OILFINO-5W40-1L' OR "normalizedName" = 'oilfino 5w40 1l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-OILFINO-5W30-1L', NULL, 'OILFINO 5W30 1L', 'oilfino 5w30 1l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 135000, 160000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-OILFINO-5W30-1L' OR "normalizedName" = 'oilfino 5w30 1l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-28130-5A500', NULL, 'FILTRE GENIUNE 28130 5A500', 'filtre geniune 28130 5a500', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 220000, 320000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-28130-5A500' OR "normalizedName" = 'filtre geniune 28130 5a500'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-KIT-873327', NULL, 'FILTRE KIT 873327', 'filtre kit 873327', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 300000, 450000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-KIT-873327' OR "normalizedName" = 'filtre kit 873327'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TL7424', NULL, 'FILTRE AUTOTEILLE TL7424', 'filtre autoteille tl7424', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TL7424' OR "normalizedName" = 'filtre autoteille tl7424'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TL7171', NULL, 'FILTRE AUTOTEILLE TL7171', 'filtre autoteille tl7171', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 32500, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TL7171' OR "normalizedName" = 'filtre autoteille tl7171'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-OLIDEX-S40-20L', NULL, 'OLIDEX S40 20L', 'olidex s40 20l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 510000, 620000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-OLIDEX-S40-20L' OR "normalizedName" = 'olidex s40 20l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-OLIDEX-10W-20L', NULL, 'OLIDEX 10W 20L', 'olidex 10w 20l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 370000, 500000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-OLIDEX-10W-20L' OR "normalizedName" = 'olidex 10w 20l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-T-WL7082', NULL, 'FILTRE TECNO T-WL7082', 'filtre tecno t-wl7082', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 33000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-T-WL7082' OR "normalizedName" = 'filtre tecno t-wl7082'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FA79', NULL, 'FILTRE VESTAL FA79', 'filtre vestal fa79', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 55000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FA79' OR "normalizedName" = 'filtre vestal fa79'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-28130-5H001', NULL, 'FILTRE KING 28130-5H001', 'filtre king 28130-5h001', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 110000, 160000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-28130-5H001' OR "normalizedName" = 'filtre king 28130-5h001'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TL7300-A', NULL, 'FILTRE AUTOTEILLE TL7300-A', 'filtre autoteille tl7300-a', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 100000, 130000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TL7300-A' OR "normalizedName" = 'filtre autoteille tl7300-a'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TL7478', NULL, 'FILTRE AUTOTEILLE TL7478', 'filtre autoteille tl7478', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 43000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TL7478' OR "normalizedName" = 'filtre autoteille tl7478'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TL7413', NULL, 'FILTRE AUTOTEILLE TL7413', 'filtre autoteille tl7413', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 31500, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TL7413' OR "normalizedName" = 'filtre autoteille tl7413'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-CYCLE-MOTOR-FLUSH', NULL, 'CYCLE MOTOR FLUSH', 'cycle motor flush', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 135000, 150000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-CYCLE-MOTOR-FLUSH' OR "normalizedName" = 'cycle motor flush'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LAVE-GLACE-MATIC-AUTO-5L', NULL, 'LAVE GLACE MATIC AUTO 5L', 'lave glace matic auto 5l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 32000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LAVE-GLACE-MATIC-AUTO-5L' OR "normalizedName" = 'lave glace matic auto 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LAVE-GLACE-NAF-AUTO-2L', NULL, 'LAVE GLACE NAF-AUTO 2L', 'lave glace naf-auto 2l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 34000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LAVE-GLACE-NAF-AUTO-2L' OR "normalizedName" = 'lave glace naf-auto 2l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GLACIOL-NAF-G12-2L', NULL, 'GLACIOL NAF G12 2L', 'glaciol naf g12 2l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 80000, 95000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GLACIOL-NAF-G12-2L' OR "normalizedName" = 'glaciol naf g12 2l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GLACIOL-NAF-G12-5L', NULL, 'GLACIOL NAF G12 5L', 'glaciol naf g12 5l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 170000, 200000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GLACIOL-NAF-G12-5L' OR "normalizedName" = 'glaciol naf g12 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LUXOIL-EP-90-1L', NULL, 'LUXOIL EP 90 1L', 'luxoil ep 90 1l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 38000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LUXOIL-EP-90-1L' OR "normalizedName" = 'luxoil ep 90 1l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-ATF-PETRO-BARAKA-1L', NULL, 'ATF PETRO BARAKA 1L', 'atf petro baraka 1l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 74000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-ATF-PETRO-BARAKA-1L' OR "normalizedName" = 'atf petro baraka 1l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-OILFINO-MOTO-4T-10W40-1L', NULL, 'OILFINO MOTO 4T 10W40 1L', 'oilfino moto 4t 10w40 1l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 105000, 130000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-OILFINO-MOTO-4T-10W40-1L' OR "normalizedName" = 'oilfino moto 4t 10w40 1l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-OILFINO-5W40-ULTRA-LL-5L', NULL, 'OILFINO 5W40 ULTRA LL 5L', 'oilfino 5w40 ultra ll 5l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 650000, 740000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-OILFINO-5W40-ULTRA-LL-5L' OR "normalizedName" = 'oilfino 5w40 ultra ll 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-OILFINO-5W30-ULTRA-G-5L', NULL, 'OILFINO 5W30 ULTRA G 5L', 'oilfino 5w30 ultra g 5l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 720000, 790000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-OILFINO-5W30-ULTRA-G-5L' OR "normalizedName" = 'oilfino 5w30 ultra g 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-HYDRO-180AH', NULL, 'BATTERIE HYDRO 180AH', 'batterie hydro 180ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 2200000, 2350000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-HYDRO-180AH' OR "normalizedName" = 'batterie hydro 180ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-SUPAVOLT-52AH', NULL, 'BATTERIE SUPAVOLT 52AH', 'batterie supavolt 52ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 790000, 940000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-SUPAVOLT-52AH' OR "normalizedName" = 'batterie supavolt 52ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TL7477', NULL, 'FILTREAUTOTEILE TL7477', 'filtreautoteile tl7477', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TL7477' OR "normalizedName" = 'filtreautoteile tl7477'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TL7096', NULL, 'FILTRE AUTOTEILE TL7096', 'filtre autoteile tl7096', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 55000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TL7096' OR "normalizedName" = 'filtre autoteile tl7096'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-0-5-LPETRO-BARAKA-15W40', NULL, '0.5 lpetro baraka 15w40', '0.5 lpetro baraka 15w40', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 25000, 32000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-0-5-LPETRO-BARAKA-15W40' OR "normalizedName" = '0.5 lpetro baraka 15w40'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FPL-022', NULL, 'FILTRE AL SAFA FPL-022', 'filtre al safa fpl-022', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 40000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FPL-022' OR "normalizedName" = 'filtre al safa fpl-022'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-OE-1444-CA', NULL, 'FILTRE ORYX OE 1444 CA', 'filtre oryx oe 1444 ca', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 40000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-OE-1444-CA' OR "normalizedName" = 'filtre oryx oe 1444 ca'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-AF021', NULL, 'FILTRE AMC AF021', 'filtre amc af021', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 48000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-AF021' OR "normalizedName" = 'filtre amc af021'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GRAISSE-ABLUB-0-5KG', NULL, 'GRAISSE ABLUB 0.5KG', 'graisse ablub 0.5kg', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 46000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GRAISSE-ABLUB-0-5KG' OR "normalizedName" = 'graisse ablub 0.5kg'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GRAISSE-MAG0-5KG', NULL, 'GRAISSE MAG0.5KG', 'graisse mag0.5kg', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 43000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GRAISSE-MAG0-5KG' OR "normalizedName" = 'graisse mag0.5kg'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FG65', NULL, 'FILTRE VESTAL VS-FG65', 'filtre vestal vs-fg65', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 220000, 260000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FG65' OR "normalizedName" = 'filtre vestal vs-fg65'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PL420', NULL, 'FILTRE WEICHAI PL420', 'filtre weichai pl420', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 130000, 180000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PL420' OR "normalizedName" = 'filtre weichai pl420'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LS841', NULL, 'FILTRE TECNO LS841', 'filtre tecno ls841', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 98000, 150000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LS841' OR "normalizedName" = 'filtre tecno ls841'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-1030-00', NULL, 'FILTRE JMC 1030', 'filtre jmc 1030', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 69000, 100000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-1030-00' OR "normalizedName" = 'filtre jmc 1030'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FA-2710JX', NULL, 'FILTRE ALSAFA FA-2710JX', 'filtre alsafa fa-2710jx', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 290000, 380000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FA-2710JX' OR "normalizedName" = 'filtre alsafa fa-2710jx'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-17801-61030-2', NULL, 'FILTRE REAL STON 17801-61030', 'filtre real ston 17801-61030', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 120000, 160000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-17801-61030-2' OR "normalizedName" = 'filtre real ston 17801-61030'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TL7254', NULL, 'FILTRE AUTOTEILE TL7254', 'filtre autoteile tl7254', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 30000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TL7254' OR "normalizedName" = 'filtre autoteile tl7254'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-OP-632-4', NULL, 'FILTRE EVENUS OP 632/4', 'filtre evenus op 632/4', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-OP-632-4' OR "normalizedName" = 'filtre evenus op 632/4'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-DO4243', NULL, 'FILTRE ELEMFIL DO4243', 'filtre elemfil do4243', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 26000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-DO4243' OR "normalizedName" = 'filtre elemfil do4243'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-04E115561H', NULL, 'FILTRE VOLKSWAGEN 04E115561H', 'filtre volkswagen 04e115561h', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 73000, 120000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-04E115561H' OR "normalizedName" = 'filtre volkswagen 04e115561h'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TL7520', NULL, 'FILTRE AUTOTEILLE TL7520', 'filtre autoteille tl7520', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 31500, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TL7520' OR "normalizedName" = 'filtre autoteille tl7520'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LUXOIL-10W-20L', NULL, 'LUXOIL 10W 20L', 'luxoil 10w 20l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 600000, 700000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LUXOIL-10W-20L' OR "normalizedName" = 'luxoil 10w 20l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PETROSAM-20L-10W', NULL, 'PETROSAM 20L 10W', 'petrosam 20l 10w', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 580000, 680000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PETROSAM-20L-10W' OR "normalizedName" = 'petrosam 20l 10w'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-4T-500-10W40-1L', NULL, 'TOTAL HI-PERF 4T 500 10W40 1L', 'total hi-perf 4t 500 10w40 1l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 77000, 100000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-4T-500-10W40-1L' OR "normalizedName" = 'total hi-perf 4t 500 10w40 1l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-2T-SUPER-SPORT-1L', NULL, 'TOTAL NEPTUNA 2T SUPER SPORT 1L', 'total neptuna 2t super sport 1l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 126000, 145000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-2T-SUPER-SPORT-1L' OR "normalizedName" = 'total neptuna 2t super sport 1l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-T-WL7129', NULL, 'FILTRE TECNO T-WL7129', 'filtre tecno t-wl7129', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 30000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-T-WL7129' OR "normalizedName" = 'filtre tecno t-wl7129'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-ASSAD-100-AH', NULL, 'BATTERIE ASSAD 100 AH', 'batterie assad 100 ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1400000, 1550000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-ASSAD-100-AH' OR "normalizedName" = 'batterie assad 100 ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-ARTICLE', NULL, 'FILTRE GF-04425/1 R', 'filtre gf-04425/1 r', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 90000, 130000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-ARTICLE' OR "normalizedName" = 'filtre gf-04425/1 r'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FA-1526', NULL, 'FILTRE ALSAFA FA-1526', 'filtre alsafa fa-1526', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FA-1526' OR "normalizedName" = 'filtre alsafa fa-1526'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-ASSAD-150-AH', NULL, 'BATTERIE ASSAD 150 AH', 'batterie assad 150 ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 2000000, 2150000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-ASSAD-150-AH' OR "normalizedName" = 'batterie assad 150 ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TF8388', NULL, 'FILTRE AUTOTEILE TF8388', 'filtre autoteile tf8388', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 110000, 130000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TF8388' OR "normalizedName" = 'filtre autoteile tf8388'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TL7061-A', NULL, 'FILTRE AUTOTEILE TL7061-A', 'filtre autoteile tl7061-a', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 90000, 130000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TL7061-A' OR "normalizedName" = 'filtre autoteile tl7061-a'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TF8460', NULL, 'FILTRE AUTOTEILE TF8460', 'filtre autoteile tf8460', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 220000, 280000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TF8460' OR "normalizedName" = 'filtre autoteile tf8460'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TL7172', NULL, 'FILTRE AUTOTEILE TL7172', 'filtre autoteile tl7172', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 34000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TL7172' OR "normalizedName" = 'filtre autoteile tl7172'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TL7131', NULL, 'FILTRE AUTOTEILE TL7131', 'filtre autoteile tl7131', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 29000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TL7131' OR "normalizedName" = 'filtre autoteile tl7131'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-ARCO-45AH', NULL, 'BATTERIE ARCO 45AH', 'batterie arco 45ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 830000, 980000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-ARCO-45AH' OR "normalizedName" = 'batterie arco 45ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-AKTROM-120AH', NULL, 'BATTERIE AKTROM 120AH', 'batterie aktrom 120ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1700000, 1850000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-AKTROM-120AH' OR "normalizedName" = 'batterie aktrom 120ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BOUCHON-RADIATEUR', NULL, 'BOUCHON RADIATEUR', 'bouchon radiateur', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 16300, 20000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BOUCHON-RADIATEUR' OR "normalizedName" = 'bouchon radiateur'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-165469466R', NULL, 'FILTRE AIR ORYX 165469466R', 'filtre air oryx 165469466r', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-165469466R' OR "normalizedName" = 'filtre air oryx 165469466r'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-MOTO-SCOOTER-10W40-1L-4T', NULL, 'MOTO SCOOTER 10W40 1L 4T', 'moto scooter 10w40 1l 4t', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 120000, 160000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-MOTO-SCOOTER-10W40-1L-4T' OR "normalizedName" = 'moto scooter 10w40 1l 4t'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-EB-STAR-DIESEL', NULL, 'EB STAR DIESEL', 'eb star diesel', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 85000, 100000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-EB-STAR-DIESEL' OR "normalizedName" = 'eb star diesel'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-EB-STAR-ESSENCE', NULL, 'EB STAR ESSENCE', 'eb star essence', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 80000, 100000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-EB-STAR-ESSENCE' OR "normalizedName" = 'eb star essence'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TAPIS-GUCCI', NULL, 'TAPIS GUCCI', 'tapis gucci', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 250000, 350000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TAPIS-GUCCI' OR "normalizedName" = 'tapis gucci'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-AF015', NULL, 'FILTRE AMC AF015', 'filtre amc af015', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 60000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-AF015' OR "normalizedName" = 'filtre amc af015'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FA143', NULL, 'FILTRE SUZUKI VS-FA143', 'filtre suzuki vs-fa143', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FA143' OR "normalizedName" = 'filtre suzuki vs-fa143'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-04E129620A', NULL, 'FILTRE GFB 04E129620A', 'filtre gfb 04e129620a', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 50000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-04E129620A' OR "normalizedName" = 'filtre gfb 04e129620a'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FA-2645JX', NULL, 'FILTRE AL SAFA FA-2645JX', 'filtre al safa fa-2645jx', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 490000, 620000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FA-2645JX' OR "normalizedName" = 'filtre al safa fa-2645jx'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PROFWELL-PLASTIC', NULL, 'PROFWELL PLASTIC', 'profwell plastic', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 60000, 65000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PROFWELL-PLASTIC' OR "normalizedName" = 'profwell plastic'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TL7476', NULL, 'FILTRE AUTOTEILE TL7476', 'filtre autoteile tl7476', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 43000, 65000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TL7476' OR "normalizedName" = 'filtre autoteile tl7476'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VERMAX-80', NULL, 'BATTERIE VERMAX 80', 'batterie vermax 80', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1150000, 1300000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VERMAX-80' OR "normalizedName" = 'batterie vermax 80'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FH17', NULL, 'FILTRE VESTAL VS-FH17', 'filtre vestal vs-fh17', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 35000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FH17' OR "normalizedName" = 'filtre vestal vs-fh17'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TL', NULL, 'FILTRE AUTOTEILE', 'filtre autoteile', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TL' OR "normalizedName" = 'filtre autoteile'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-REXON-EP-90-20L', NULL, 'REXON EP 90 20L', 'rexon ep 90 20l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 520000, 650000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-REXON-EP-90-20L' OR "normalizedName" = 'rexon ep 90 20l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-AF-048', NULL, 'FILTRE AMC AF-048', 'filtre amc af-048', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 105000, 150000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-AF-048' OR "normalizedName" = 'filtre amc af-048'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-A6510901552', NULL, 'FILTRE HNB A6510901552', 'filtre hnb a6510901552', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 375000, 470000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-A6510901552' OR "normalizedName" = 'filtre hnb a6510901552'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-NC-FG32', NULL, 'FILTRE INCI NC-FG32', 'filtre inci nc-fg32', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 550000, 650000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-NC-FG32' OR "normalizedName" = 'filtre inci nc-fg32'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-A6111800009', NULL, 'FILTRE HNB A6111800009', 'filtre hnb a6111800009', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 40000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-A6111800009' OR "normalizedName" = 'filtre hnb a6111800009'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FA105', NULL, 'FILTRTE VESTALE VS-FA105', 'filtrte vestale vs-fa105', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 105000, 220000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FA105' OR "normalizedName" = 'filtrte vestale vs-fa105'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TL7409', NULL, 'FILTRE AUTOTEILE TL7409', 'filtre autoteile tl7409', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 50000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TL7409' OR "normalizedName" = 'filtre autoteile tl7409'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TL7203', NULL, 'FILTRE AUTOTEILE TL7203', 'filtre autoteile tl7203', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 37500, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TL7203' OR "normalizedName" = 'filtre autoteile tl7203'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-REXONE-10W-20L', NULL, 'HUILE REXONE 10W 20L', 'huile rexone 10w 20l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 420000, 520000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-REXONE-10W-20L' OR "normalizedName" = 'huile rexone 10w 20l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PB-9310-5W30-5L', NULL, 'HUILE PETRO BARAKA PB-9310 5W30 5L', 'huile petro baraka pb-9310 5w30 5l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 685000, 770000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PB-9310-5W30-5L' OR "normalizedName" = 'huile petro baraka pb-9310 5w30 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-10W40-7170-5L', NULL, 'PETRO BARAKA10W40 7170 5L', 'petro baraka10w40 7170 5l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 490000, 560000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-10W40-7170-5L' OR "normalizedName" = 'petro baraka10w40 7170 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VERMAX-45AH-G', NULL, 'BATTERIE VERMAX 45AH G.', 'batterie vermax 45ah g.', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 830000, 980000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VERMAX-45AH-G' OR "normalizedName" = 'batterie vermax 45ah g.'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-ARCO-85-AH', NULL, 'BATTERIE ARCO 85 AH', 'batterie arco 85 ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1250000, 1400000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-ARCO-85-AH' OR "normalizedName" = 'batterie arco 85 ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FA72', NULL, 'FILTRE VESTAL VS-FA72', 'filtre vestal vs-fa72', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 55000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FA72' OR "normalizedName" = 'filtre vestal vs-fa72'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FH-21', NULL, 'FILTRE INCI FH-21', 'filtre inci fh-21', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 30000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FH-21' OR "normalizedName" = 'filtre inci fh-21'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-1444-TV', NULL, 'FILTRE OTOFIL 1444 TV', 'filtre otofil 1444 tv', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 50000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-1444-TV' OR "normalizedName" = 'filtre otofil 1444 tv'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-25181616-00', NULL, 'FILTRE HNB 25181616', 'filtre hnb 25181616', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 30000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-25181616-00' OR "normalizedName" = 'filtre hnb 25181616'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TOTAL-9000-5W40-5L', NULL, 'TOTAL 9000 5W40 5L', 'total 9000 5w40 5l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 560000, 640000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TOTAL-9000-5W40-5L' OR "normalizedName" = 'total 9000 5w40 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PURFIN-SPEEDFIRE', NULL, 'PURFIN SPEEDFIRE', 'purfin speedfire', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 26000, 40000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PURFIN-SPEEDFIRE' OR "normalizedName" = 'purfin speedfire'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TL57521', NULL, 'FILTRE AUTOTEILLE TL57521', 'filtre autoteille tl57521', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 100000, 120000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TL57521' OR "normalizedName" = 'filtre autoteille tl57521'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TL7197', NULL, 'FILTRE AUTOTEILE TL7197', 'filtre autoteile tl7197', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 46000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TL7197' OR "normalizedName" = 'filtre autoteile tl7197'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-0-5L-TOTAL-C3-5W40', NULL, '0.5L TOTAL C3 5W40', '0.5l total c3 5w40', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 56000, 63000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-0-5L-TOTAL-C3-5W40' OR "normalizedName" = '0.5l total c3 5w40'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LS867B', NULL, 'FILTRE HAOGO LS867B', 'filtre haogo ls867b', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 32000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LS867B' OR "normalizedName" = 'filtre haogo ls867b'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-FA-189', NULL, 'FILTRE FA 189', 'filtre fa 189', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 130000, 160000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-FA-189' OR "normalizedName" = 'filtre fa 189'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-OILFINO-10W40-1L', NULL, 'OILFINO 10W40 1L', 'oilfino 10w40 1l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 11500, 135000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-OILFINO-10W40-1L' OR "normalizedName" = 'oilfino 10w40 1l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-OILFINO-5W40-5L', NULL, 'OILFINO 5W40 5L', 'oilfino 5w40 5l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 620000, 690000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-OILFINO-5W40-5L' OR "normalizedName" = 'oilfino 5w40 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-OILFINO-15W40-5L', NULL, 'OILFINO 15W40 5L', 'oilfino 15w40 5l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 340000, 400000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-OILFINO-15W40-5L' OR "normalizedName" = 'oilfino 15w40 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-OILFINO-10W40-5L', NULL, 'OILFINO 10W40 5L', 'oilfino 10w40 5l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 480000, 550000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-OILFINO-10W40-5L' OR "normalizedName" = 'oilfino 10w40 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-NEXT-POWER-95-AH', NULL, 'BATTERIE NEXT POWER 95 AH', 'batterie next power 95 ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1450000, 1600000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-NEXT-POWER-95-AH' OR "normalizedName" = 'batterie next power 95 ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-ARCO-75-AH', NULL, 'BATTERIE ARCO 75 AH', 'batterie arco 75 ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1050000, 1200000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-ARCO-75-AH' OR "normalizedName" = 'batterie arco 75 ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-NORDWORK-180-AH', NULL, 'BATTERIE NORDWORK 180 AH', 'batterie nordwork 180 ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 2100000, 2250000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-NORDWORK-180-AH' OR "normalizedName" = 'batterie nordwork 180 ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-7421380472-00', NULL, 'FILTRE HUGO 7421380472', 'filtre hugo 7421380472', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 130000, 180000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-7421380472-00' OR "normalizedName" = 'filtre hugo 7421380472'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GRAISSE-PETRO-BARAKA-EP2-15KG', NULL, 'GRAISSE PETRO BARAKA EP2 15KG', 'graisse petro baraka ep2 15kg', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 1400000, 1550000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GRAISSE-PETRO-BARAKA-EP2-15KG' OR "normalizedName" = 'graisse petro baraka ep2 15kg'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GRAISSE-PETRO-GRAISSE-ROUGE-15KG', NULL, 'GRAISSE PETRO GRAISSE ROUGE 15KG', 'graisse petro graisse rouge 15kg', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 400000, 500000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GRAISSE-PETRO-GRAISSE-ROUGE-15KG' OR "normalizedName" = 'graisse petro graisse rouge 15kg'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-GOLD-FIL-E154HD48', NULL, 'FILTRE GOLD FIL E154HD48', 'filtre gold fil e154hd48', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 48000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-GOLD-FIL-E154HD48' OR "normalizedName" = 'filtre gold fil e154hd48'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-AUTOTEILE-TL51820', NULL, 'FILTRE AUTOTEILE TL51820', 'filtre autoteile tl51820', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 63000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-AUTOTEILE-TL51820' OR "normalizedName" = 'filtre autoteile tl51820'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-AD-BLEU-10L', NULL, 'AD BLEU 10L', 'ad bleu 10l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 480000, 550000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-AD-BLEU-10L' OR "normalizedName" = 'ad bleu 10l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-CBS-180AH', NULL, 'BATTERIE CBS 180AH', 'batterie cbs 180ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1950000, 2100000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-CBS-180AH' OR "normalizedName" = 'batterie cbs 180ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-CBS-150AH', NULL, 'BATTERIE CBS 150AH', 'batterie cbs 150ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1900000, 2050000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-CBS-150AH' OR "normalizedName" = 'batterie cbs 150ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-ARCO-40AH', NULL, 'BATTERIE ARCO 40AH', 'batterie arco 40ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 710000, 860000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-ARCO-40AH' OR "normalizedName" = 'batterie arco 40ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-MATADOR-40AH', NULL, 'BATTERIE MATADOR 40AH', 'batterie matador 40ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 720000, 870000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-MATADOR-40AH' OR "normalizedName" = 'batterie matador 40ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-MOTUL-10W40-5L', NULL, 'MOTUL 10W40 5L', 'motul 10w40 5l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 750000, 830000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-MOTUL-10W40-5L' OR "normalizedName" = 'motul 10w40 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-SOPRE-OIL-S40-1L', NULL, 'SOPRE OIL S40 1L', 'sopre oil s40 1l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 38000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-SOPRE-OIL-S40-1L' OR "normalizedName" = 'sopre oil s40 1l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FA48', NULL, 'FILTRE VS-FA48', 'filtre vs-fa48', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 38000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FA48' OR "normalizedName" = 'filtre vs-fa48'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-JAC-2328', NULL, 'FILTRE JAC 2328', 'filtre jac 2328', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 155000, 190000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-JAC-2328' OR "normalizedName" = 'filtre jac 2328'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-ALSAFA-OBS-189', NULL, 'FILTRE ALSAFA OBS 189', 'filtre alsafa obs 189', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 135000, 180000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-ALSAFA-OBS-189' OR "normalizedName" = 'filtre alsafa obs 189'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-OBS-181', NULL, 'FILTRE ALSAFA OBS-181', 'filtre alsafa obs-181', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 29000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-OBS-181' OR "normalizedName" = 'filtre alsafa obs-181'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-26300-42010', NULL, 'FILTRE HUOGO 26300-42010', 'filtre huogo 26300-42010', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 44000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-26300-42010' OR "normalizedName" = 'filtre huogo 26300-42010'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-ELEMFIL-DO4264', NULL, 'FILTRE ELEMFIL DO4264', 'filtre elemfil do4264', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 27000, 40000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-ELEMFIL-DO4264' OR "normalizedName" = 'filtre elemfil do4264'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-OE667-1', NULL, 'FILTRON OE667/1', 'filtron oe667/1', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 49000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-OE667-1' OR "normalizedName" = 'filtron oe667/1'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-ELELEMFIL-LS871P', NULL, 'FILTRE ELEMFIL LS871P', 'filtre elemfil ls871p', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 27000, 40000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-ELELEMFIL-LS871P' OR "normalizedName" = 'filtre elemfil ls871p'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GRAISSE-AB-LUB-1KG', NULL, 'GRAISSE AB LUB 1KG', 'graisse ab lub 1kg', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 79000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GRAISSE-AB-LUB-1KG' OR "normalizedName" = 'graisse ab lub 1kg'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-ASSAD-50AH', NULL, 'BATTERIE ASSAD 50AH', 'batterie assad 50ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 770000, 920000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-ASSAD-50AH' OR "normalizedName" = 'batterie assad 50ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-18499-00', NULL, 'FILTRE AIR 18499', 'filtre air 18499', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 87000, 110000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-18499-00' OR "normalizedName" = 'filtre air 18499'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-AF016', NULL, 'FILTRE AMC AF016', 'filtre amc af016', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-AF016' OR "normalizedName" = 'filtre amc af016'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-28113-4F000', NULL, 'FILTRE HUGO 28113-4F000', 'filtre hugo 28113-4f000', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 85000, 120000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-28113-4F000' OR "normalizedName" = 'filtre hugo 28113-4f000'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-AF-049', NULL, 'FILTRE AF 049', 'filtre af 049', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 155000, 190000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-AF-049' OR "normalizedName" = 'filtre af 049'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LF3349', NULL, 'FILTRE LF3349', 'filtre lf3349', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 80000, 110000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LF3349' OR "normalizedName" = 'filtre lf3349'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-17801-61030-3', NULL, 'FILTRE HUAGO 17801-61030', 'filtre huago 17801-61030', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 100000, 130000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-17801-61030-3' OR "normalizedName" = 'filtre huago 17801-61030'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-AUTO-SUPRA-26C-20L', NULL, 'GLACIOL COOLELF AUTO SUPRA -26C 20L', 'glaciol coolelf auto supra -26c 20l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 710000, 820000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-AUTO-SUPRA-26C-20L' OR "normalizedName" = 'glaciol coolelf auto supra -26c 20l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FA-192', NULL, 'FILTRE VESTAL VS-FA 192', 'filtre vestal vs-fa 192', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 170000, 220000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FA-192' OR "normalizedName" = 'filtre vestal vs-fa 192'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-VIGO-90915-YZZJ3', NULL, 'FILTRE VIGO 90915-YZZJ3', 'filtre vigo 90915-yzzj3', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 50000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-VIGO-90915-YZZJ3' OR "normalizedName" = 'filtre vigo 90915-yzzj3'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-AS-3001', NULL, 'FILTRE SAFI AS 3001', 'filtre safi as 3001', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 85000, 120000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-AS-3001' OR "normalizedName" = 'filtre safi as 3001'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-OE-648-6', NULL, 'FILTRE EVENUS OE 648/6', 'filtre evenus oe 648/6', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 35000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-OE-648-6' OR "normalizedName" = 'filtre evenus oe 648/6'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TREVISEUR', NULL, 'TREVISEUR', 'treviseur', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 70000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TREVISEUR' OR "normalizedName" = 'treviseur'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BIKEMASTER-SAE-10W40-1L', NULL, 'BIKEMASTER SAE 10W40 1L', 'bikemaster sae 10w40 1l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 90000, 120000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BIKEMASTER-SAE-10W40-1L' OR "normalizedName" = 'bikemaster sae 10w40 1l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LUXOIL-SAE-40-5L', NULL, 'LUXOIL SAE 40 5L', 'luxoil sae 40 5l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 180000, 260000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LUXOIL-SAE-40-5L' OR "normalizedName" = 'luxoil sae 40 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-FORZA-170AH', NULL, 'BATTERIE FORZA 170AH', 'batterie forza 170ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 2200000, 2350000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-FORZA-170AH' OR "normalizedName" = 'batterie forza 170ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TL7175', NULL, 'FILTRE AUTOTEIL TL7175', 'filtre autoteil tl7175', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 75000, 95000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TL7175' OR "normalizedName" = 'filtre autoteil tl7175'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-DEUTSCHOL-1-5-G12', NULL, 'GLACIOL DEUTSCHOL 1.5 G12', 'glaciol deutschol 1.5 g12', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 115000, 140000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-DEUTSCHOL-1-5-G12' OR "normalizedName" = 'glaciol deutschol 1.5 g12'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-RADEON', NULL, 'GLACIOL', 'glaciol', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 47000, 65000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-RADEON' OR "normalizedName" = 'glaciol'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FORZA-40AH', NULL, 'BATTERIE FORZA 40AH', 'batterie forza 40ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 720000, 880000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FORZA-40AH' OR "normalizedName" = 'batterie forza 40ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-HMD-S40-LUXOIL', NULL, 'HMD S40 LUXOIL', 'hmd s40 luxoil', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 31000, 42000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-HMD-S40-LUXOIL' OR "normalizedName" = 'hmd s40 luxoil'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FA-70', NULL, 'FILTRE VESTAL FA-70 1444TV', 'filtre vestal fa-70 1444tv', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 50000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FA-70' OR "normalizedName" = 'filtre vestal fa-70 1444tv'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-AF26569', NULL, 'FILTRE HOW A7 AF26569', 'filtre how a7 af26569', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 460000, 550000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-AF26569' OR "normalizedName" = 'filtre how a7 af26569'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-0-5L-OIL-HMD-50-SONATRACH', NULL, '0.5L OIL HMD 50 SONATRACH', '0.5l oil hmd 50 sonatrach', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 16625, 21000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-0-5L-OIL-HMD-50-SONATRACH' OR "normalizedName" = '0.5l oil hmd 50 sonatrach'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-1L-OIL-HMD-50-SONATRACH', NULL, '1L OIL HMD 50 SONATRACH', '1l oil hmd 50 sonatrach', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 33250, 42000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-1L-OIL-HMD-50-SONATRACH' OR "normalizedName" = '1l oil hmd 50 sonatrach'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GRAISSE-LUXOIL-1KG', NULL, 'GRAISSE LUXOIL 1KG', 'graisse luxoil 1kg', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 63000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GRAISSE-LUXOIL-1KG' OR "normalizedName" = 'graisse luxoil 1kg'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-AMC-AF-047', NULL, 'FILTRE AMC AF-047', 'filtre amc af-047', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 95000, 130000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-AMC-AF-047' OR "normalizedName" = 'filtre amc af-047'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-ELEMFILDO4119', NULL, 'FILTRE ELEMFILDO4119', 'filtre elemfildo4119', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 36000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-ELEMFILDO4119' OR "normalizedName" = 'filtre elemfildo4119'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-ELEMFILDO4196', NULL, 'FILTRE ELEMFILDO4196', 'filtre elemfildo4196', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 27000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-ELEMFILDO4196' OR "normalizedName" = 'filtre elemfildo4196'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-GOLD-FIL-030115561AA', NULL, 'FILTRE GOLD FIL030115561AA', 'filtre gold fil030115561aa', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 30000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-GOLD-FIL-030115561AA' OR "normalizedName" = 'filtre gold fil030115561aa'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PE977-1', NULL, 'FILTRON PE977/1', 'filtron pe977/1', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 300000, 420000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PE977-1' OR "normalizedName" = 'filtron pe977/1'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-OE-646-2', NULL, 'FILTRON OE 646/2', 'filtron oe 646/2', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 250000, 350000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-OE-646-2' OR "normalizedName" = 'filtron oe 646/2'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-A643301', NULL, 'FILTRE FMS A643301', 'filtre fms a643301', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 39000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-A643301' OR "normalizedName" = 'filtre fms a643301'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-RENAULT-GROUP-8200768927', NULL, 'RENAULT GROUP 8200768927', 'renault group 8200768927', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 50000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-RENAULT-GROUP-8200768927' OR "normalizedName" = 'renault group 8200768927'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-OBS-122', NULL, 'FILTRE ALSAFA OBS-122', 'filtre alsafa obs-122', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 70000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-OBS-122' OR "normalizedName" = 'filtre alsafa obs-122'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-POMPE-EAU', NULL, 'POMPE EAU', 'pompe eau', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 600000, 600000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-POMPE-EAU' OR "normalizedName" = 'pompe eau'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BERGAN-110AH', NULL, 'BATTERIE BERGAN 110AH', 'batterie bergan 110ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1800000, 2000000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BERGAN-110AH' OR "normalizedName" = 'batterie bergan 110ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-ARCO-150AH', NULL, 'BATTERIE ARCO150AH', 'batterie arco150ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 2020000, 2170000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-ARCO-150AH' OR "normalizedName" = 'batterie arco150ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-EXOL-SAE-40-1L', NULL, 'EXOL SAE 40 1L', 'exol sae 40 1l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 40000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-EXOL-SAE-40-1L' OR "normalizedName" = 'exol sae 40 1l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PETROSEB-SAE-40-1L', NULL, 'PETROSEB SAE 40 1L', 'petroseb sae 40 1l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 34000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PETROSEB-SAE-40-1L' OR "normalizedName" = 'petroseb sae 40 1l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GRAISSE-OLIPES-1KG', NULL, 'GRAISSE OLIPES 1KG', 'graisse olipes 1kg', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 83000, 105000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GRAISSE-OLIPES-1KG' OR "normalizedName" = 'graisse olipes 1kg'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-OLIDEX-SAE40-20L', NULL, 'OLIDEX SAE40 20L', 'olidex sae40 20l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 550000, 650000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-OLIDEX-SAE40-20L' OR "normalizedName" = 'olidex sae40 20l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TOTAL-20W50-5L', NULL, 'TOTAL 20W50 5L', 'total 20w50 5l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 220000, 290000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TOTAL-20W50-5L' OR "normalizedName" = 'total 20w50 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FA-2727', NULL, 'FILTRE ALSAFA FA-2727', 'filtre alsafa fa-2727', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 313000, 420000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FA-2727' OR "normalizedName" = 'filtre alsafa fa-2727'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-AFT0080-AFT00-81', NULL, 'FILTRE AMC AFT0080/AFT0081', 'filtre amc aft0080/aft0081', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 435000, 520000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-AFT0080-AFT00-81' OR "normalizedName" = 'filtre amc aft0080/aft0081'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FOTTO', NULL, 'FILTRE FOT', 'filtre fot', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 100, 100, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FOTTO' OR "normalizedName" = 'filtre fot'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TWL7197', NULL, 'FILTRE TECNO TWL7197', 'filtre tecno twl7197', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 38000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TWL7197' OR "normalizedName" = 'filtre tecno twl7197'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-STP-TRAITEMENT-HUILE', NULL, 'STP TRAITEMENT HUILE', 'stp traitement huile', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 55000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-STP-TRAITEMENT-HUILE' OR "normalizedName" = 'stp traitement huile'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-STP-ANTI-FUMER-DIESEL', NULL, 'STP ANTI-FUMER DIESEL', 'stp anti-fumer diesel', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 45000, 65000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-STP-ANTI-FUMER-DIESEL' OR "normalizedName" = 'stp anti-fumer diesel'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-STP-TRAITEMENT-DIESEL', NULL, 'STP TRAITEMENT DIESEL', 'stp traitement diesel', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 45000, 65000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-STP-TRAITEMENT-DIESEL' OR "normalizedName" = 'stp traitement diesel'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-AUTOMATIVE-G13-5L', NULL, 'GLACIOL BLK AUTOMATIVE G13 5L', 'glaciol blk automative g13 5l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 120000, 180000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-AUTOMATIVE-G13-5L' OR "normalizedName" = 'glaciol blk automative g13 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-NAFTALIA-SYN-10W40-5L', NULL, 'NAFTALIA SYN. 10W40 5L', 'naftalia syn. 10w40 5l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 390000, 470000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-NAFTALIA-SYN-10W40-5L' OR "normalizedName" = 'naftalia syn. 10w40 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-AF-046', NULL, 'FILTRE AMC AF-046', 'filtre amc af-046', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 100000, 140000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-AF-046' OR "normalizedName" = 'filtre amc af-046'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-17801-0C020', NULL, 'FILTRE TOYOTA 17801-0C020', 'filtre toyota 17801-0c020', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 195000, 230000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-17801-0C020' OR "normalizedName" = 'filtre toyota 17801-0c020'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-T-WL7245', NULL, 'FILTRE TECNO T-WL7245', 'filtre tecno t-wl7245', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 43000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-T-WL7245' OR "normalizedName" = 'filtre tecno t-wl7245'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BERGANE-120AH', NULL, 'BATTERIE BERGANE 120AH', 'batterie bergane 120ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 2000000, 2150000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BERGANE-120AH' OR "normalizedName" = 'batterie bergane 120ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-REMAX-150AH', NULL, 'BATERIE REMAX 150AH', 'baterie remax 150ah', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 1960000, 2110000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-REMAX-150AH' OR "normalizedName" = 'baterie remax 150ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BERGANE-ENERGIE-160AH', NULL, 'BATTERIE BERGANE ENERGIE 160AH', 'batterie bergane energie 160ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 2380000, 2530000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BERGANE-ENERGIE-160AH' OR "normalizedName" = 'batterie bergane energie 160ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GRAISSE-PETRO-GRAISSE-VERT-15KG', NULL, 'GRAISSE PETRO GRAISSE VERT 15KG', 'graisse petro graisse vert 15kg', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 380000, 550000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GRAISSE-PETRO-GRAISSE-VERT-15KG' OR "normalizedName" = 'graisse petro graisse vert 15kg'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FAP-5033JX', NULL, 'FILTRE ALSAFA FAP-5033JX', 'filtre alsafa fap-5033jx', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 240000, 320000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FAP-5033JX' OR "normalizedName" = 'filtre alsafa fap-5033jx'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-11492364-00', NULL, 'FILTRE ELEMFIL 11492364', 'filtre elemfil 11492364', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 220000, 320000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-11492364-00' OR "normalizedName" = 'filtre elemfil 11492364'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-A121627', NULL, 'FILTRE FMS A121627', 'filtre fms a121627', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 35000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-A121627' OR "normalizedName" = 'filtre fms a121627'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FA144', NULL, 'FILTRE SUZUKI VS-FA144', 'filtre suzuki vs-fa144', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FA144' OR "normalizedName" = 'filtre suzuki vs-fa144'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-A142524', NULL, 'FILTRE FMS A142524', 'filtre fms a142524', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 38000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-A142524' OR "normalizedName" = 'filtre fms a142524'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-Q21-1109111', NULL, 'FILTRE CHERY Q21-1109111', 'filtre chery q21-1109111', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 38000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-Q21-1109111' OR "normalizedName" = 'filtre chery q21-1109111'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-030115161AA', NULL, 'FITRE HUGO 030115161AA', 'fitre hugo 030115161aa', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 35000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-030115161AA' OR "normalizedName" = 'fitre hugo 030115161aa'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PBA-009', NULL, 'FILTRE HUGO PBA-009', 'filtre hugo pba-009', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 66000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PBA-009' OR "normalizedName" = 'filtre hugo pba-009'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GLACIOL-ROWE-G13-1-5L', NULL, 'GLACIOL ROWE G13 1.5L', 'glaciol rowe g13 1.5l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 155000, 170000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GLACIOL-ROWE-G13-1-5L' OR "normalizedName" = 'glaciol rowe g13 1.5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GLACIOL-KUHLER-G12-1L', NULL, 'GLACIOL KUHLER G12 1L', 'glaciol kuhler g12 1l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 36000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GLACIOL-KUHLER-G12-1L' OR "normalizedName" = 'glaciol kuhler g12 1l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-SKAY-LUX', NULL, 'SKAY LUX', 'skay lux', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 48000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-SKAY-LUX' OR "normalizedName" = 'skay lux'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-MACRO', NULL, 'MACRO', 'macro', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 35000, 55000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-MACRO' OR "normalizedName" = 'macro'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GALAXY-PURFIN', NULL, 'GALAXY PURFIN', 'galaxy purfin', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 12000, 20000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GALAXY-PURFIN' OR "normalizedName" = 'galaxy purfin'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FA77', NULL, 'FILTRE VESTAL VS-FA77', 'filtre vestal vs-fa77', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 110000, 150000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FA77' OR "normalizedName" = 'filtre vestal vs-fa77'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BERGANE-ENERGIE-95AH', NULL, 'BATTERIE BERGANE ENERGIE 95AH', 'batterie bergane energie 95ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1540000, 1690000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BERGANE-ENERGIE-95AH' OR "normalizedName" = 'batterie bergane energie 95ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BERGANE-65AH', NULL, 'BATTERIE BERGANE 65AH', 'batterie bergane 65ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1140000, 1290000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BERGANE-65AH' OR "normalizedName" = 'batterie bergane 65ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PETRO-BARAKA-SAE-90', NULL, 'PETRO BARAKA SAE 90', 'petro baraka sae 90', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 43000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PETRO-BARAKA-SAE-90' OR "normalizedName" = 'petro baraka sae 90'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PETRO-BARAKA-5W30-5L', NULL, 'PETRO BARAKA 5W30 5L', 'petro baraka 5w30 5l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 530000, 640000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PETRO-BARAKA-5W30-5L' OR "normalizedName" = 'petro baraka 5w30 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FAP-5023', NULL, 'FILTRE ALSAFA FAP-5023', 'filtre alsafa fap-5023', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 335000, 390000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FAP-5023' OR "normalizedName" = 'filtre alsafa fap-5023'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-AF25477', NULL, 'FILTRE ELEMFIL AF25477', 'filtre elemfil af25477', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 185000, 230000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-AF25477' OR "normalizedName" = 'filtre elemfil af25477'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-OP617', NULL, 'FILTRE EVENUS OP617', 'filtre evenus op617', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 25000, 40000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-OP617' OR "normalizedName" = 'filtre evenus op617'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LX26320A500', NULL, 'FILTRE LUXOIL LX26320A500', 'filtre luxoil lx26320a500', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 50000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LX26320A500' OR "normalizedName" = 'filtre luxoil lx26320a500'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PF47', NULL, 'FILTRE HUGO PF47', 'filtre hugo pf47', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 30000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PF47' OR "normalizedName" = 'filtre hugo pf47'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-OE-688', NULL, 'FILTRE FILTRON OE 688', 'filtre filtron oe 688', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 65000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-OE-688' OR "normalizedName" = 'filtre filtron oe 688'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GFB-03L115562', NULL, 'FILTRE GFB 03L115562', 'filtre gfb 03l115562', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 40000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GFB-03L115562' OR "normalizedName" = 'filtre gfb 03l115562'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-8200768913-00', NULL, 'FILTRE LARRGOS8200768913', 'filtre larrgos8200768913', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 28000, 40000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-8200768913-00' OR "normalizedName" = 'filtre larrgos8200768913'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-7700112686-00', NULL, 'FILTRE HUGO 7700112686', 'filtre hugo 7700112686', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 30000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-7700112686-00' OR "normalizedName" = 'filtre hugo 7700112686'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-REMAX-40AH', NULL, 'BATTERIE REMAX 40AH', 'batterie remax 40ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 710000, 860000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-REMAX-40AH' OR "normalizedName" = 'batterie remax 40ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FAP-5008', NULL, 'FILTRE ALSAFA FAP-5008', 'filtre alsafa fap-5008', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 58000, 120000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FAP-5008' OR "normalizedName" = 'filtre alsafa fap-5008'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-07-JM', NULL, 'FILTRE OTOFIL 07 JM', 'filtre otofil 07 jm', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 48000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-07-JM' OR "normalizedName" = 'filtre otofil 07 jm'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-JX0810Y', NULL, 'FILTRE GOLD FIL JX0810Y', 'filtre gold fil jx0810y', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 55000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-JX0810Y' OR "normalizedName" = 'filtre gold fil jx0810y'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TL7086', NULL, 'FILTRE AUTOTEILE TL7086', 'filtre autoteile tl7086', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 32000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TL7086' OR "normalizedName" = 'filtre autoteile tl7086'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PURFIN-MARCUS', NULL, 'PURFIN MARCUS', 'purfin marcus', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 20000, 30000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PURFIN-MARCUS' OR "normalizedName" = 'purfin marcus'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BERGANE-ENERGIE-190AH', NULL, 'BATTERIE BERGANE ENERGIE 190AH', 'batterie bergane energie 190ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 2500000, 2650000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BERGANE-ENERGIE-190AH' OR "normalizedName" = 'batterie bergane energie 190ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-CREPOWER-50AH', NULL, 'BATTERIE CREPOWER 50AH', 'batterie crepower 50ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 830000, 980000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-CREPOWER-50AH' OR "normalizedName" = 'batterie crepower 50ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FA258', NULL, 'FILTRE VESTAL VS-FA258', 'filtre vestal vs-fa258', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 65000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FA258' OR "normalizedName" = 'filtre vestal vs-fa258'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FA05', NULL, 'FILTRE VESTAL VS-FA05', 'filtre vestal vs-fa05', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 40000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FA05' OR "normalizedName" = 'filtre vestal vs-fa05'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-SPFC-208', NULL, 'FILTRE ASAS SPFC 208', 'filtre asas spfc 208', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 90000, 110000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-SPFC-208' OR "normalizedName" = 'filtre asas spfc 208'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FG19-B', NULL, 'FILTRE VESTAL VS-FG19/B', 'filtre vestal vs-fg19/b', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 30000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FG19-B' OR "normalizedName" = 'filtre vestal vs-fg19/b'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-NORDWORK-75AH', NULL, 'BATTERIE NORDWORK 75AH', 'batterie nordwork 75ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 990000, 1140000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-NORDWORK-75AH' OR "normalizedName" = 'batterie nordwork 75ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FA-2595', NULL, 'FILTRE ALSAFA FA-2595', 'filtre alsafa fa-2595', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 230000, 320000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FA-2595' OR "normalizedName" = 'filtre alsafa fa-2595'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PETRO-BARAKA-10W40-1L', NULL, 'PETRO BARAKA 10W40 1L', 'petro baraka 10w40 1l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 80000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PETRO-BARAKA-10W40-1L' OR "normalizedName" = 'petro baraka 10w40 1l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-CASTROL-RN17-5W30-5L', NULL, 'CASTROL RN17 5W30 5L', 'castrol rn17 5w30 5l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 1500000, 1650000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-CASTROL-RN17-5W30-5L' OR "normalizedName" = 'castrol rn17 5w30 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-T-WL7081', NULL, 'FILTRE TECNO T-WL7081', 'filtre tecno t-wl7081', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 30000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-T-WL7081' OR "normalizedName" = 'filtre tecno t-wl7081'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-G5466VO', NULL, 'FILTRE GOLD G5466VO', 'filtre gold g5466vo', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 50000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-G5466VO' OR "normalizedName" = 'filtre gold g5466vo'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FA94', NULL, 'FILTRE VESTAL VS-FA94', 'filtre vestal vs-fa94', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 95000, 120000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FA94' OR "normalizedName" = 'filtre vestal vs-fa94'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FA-115', NULL, 'FILTRE VESTAL FA-115', 'filtre vestal fa-115', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 70000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FA-115' OR "normalizedName" = 'filtre vestal fa-115'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-T-WA6375', NULL, 'FILTRE AIR T-WA6375', 'filtre air t-wa6375', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 70000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-T-WA6375' OR "normalizedName" = 'filtre air t-wa6375'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-T-WA6375-2', NULL, 'FILTRE TECNO T-WA6375', 'filtre tecno t-wa6375', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 55000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-T-WA6375-2' OR "normalizedName" = 'filtre tecno t-wa6375'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-AF-047', NULL, 'FILTRE AF-047', 'filtre af-047', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 85000, 110000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-AF-047' OR "normalizedName" = 'filtre af-047'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-17801-58010', NULL, 'FILTRE ELEMENT AIR 17801-58010', 'filtre element air 17801-58010', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 110000, 140000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-17801-58010' OR "normalizedName" = 'filtre element air 17801-58010'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-0-5L-NAFTILIA-5W40', NULL, '0.5L NAFTILIA 5W40', '0.5l naftilia 5w40', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 41000, 48000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-0-5L-NAFTILIA-5W40' OR "normalizedName" = '0.5l naftilia 5w40'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-ASSAD-40-AH', NULL, 'BATTERIE ASSAD 40 AH', 'batterie assad 40 ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 730000, 880000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-ASSAD-40-AH' OR "normalizedName" = 'batterie assad 40 ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GRAISSE-LUXOIL-0-5-KG', NULL, 'GRAISSE LUXOIL 0.5 KG', 'graisse luxoil 0.5 kg', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 42000, 55000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GRAISSE-LUXOIL-0-5-KG' OR "normalizedName" = 'graisse luxoil 0.5 kg'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-0-5L-CHELIA-TURBO-15W40-IMPOR', NULL, '0.5L CHELIA TURBO 15W40 IMPOR.', '0.5l chelia turbo 15w40 impor.', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 32000, 38000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-0-5L-CHELIA-TURBO-15W40-IMPOR' OR "normalizedName" = '0.5l chelia turbo 15w40 impor.'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GALIDO-DIMINO', NULL, 'GALIDO DIMINO', 'galido dimino', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 110000, 150000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GALIDO-DIMINO' OR "normalizedName" = 'galido dimino'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-CREPOWER-95-AH', NULL, 'BATTERIE CREPOWER 95 AH', 'batterie crepower 95 ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1400000, 1550000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-CREPOWER-95-AH' OR "normalizedName" = 'batterie crepower 95 ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-REMAX-110AH', NULL, 'BATTERIE REMAX 110AH', 'batterie remax 110ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1500000, 1650000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-REMAX-110AH' OR "normalizedName" = 'batterie remax 110ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-NAFTAL-75W80-1L', NULL, 'NAFTAL 75W80 1L', 'naftal 75w80 1l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 120000, 140000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-NAFTAL-75W80-1L' OR "normalizedName" = 'naftal 75w80 1l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-NC-FH06', NULL, 'FILTRE INCI NC-FH06', 'filtre inci nc-fh06', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-NC-FH06' OR "normalizedName" = 'filtre inci nc-fh06'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-AF-015', NULL, 'FILTRE AIR AMC AF 015', 'filtre air amc af 015', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 60000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-AF-015' OR "normalizedName" = 'filtre air amc af 015'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-1103K4', NULL, 'PORT FILTRE FTB 1103K4', 'port filtre ftb 1103k4', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 50000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-1103K4' OR "normalizedName" = 'port filtre ftb 1103k4'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LF-3349', NULL, 'FILTRE HUGO LF 3349', 'filtre hugo lf 3349', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 60000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LF-3349' OR "normalizedName" = 'filtre hugo lf 3349'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-OP-940-3', NULL, 'FILTRE EVENUS OP 940/3', 'filtre evenus op 940/3', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 50000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-OP-940-3' OR "normalizedName" = 'filtre evenus op 940/3'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-OBS-128', NULL, 'FILTREALSAFA OBS-128', 'filtrealsafa obs-128', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 26000, 40000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-OBS-128' OR "normalizedName" = 'filtrealsafa obs-128'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-1109-CK-FR', NULL, 'FILTRE PEAGEOT 1109 CK FR', 'filtre peageot 1109 ck fr', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 50000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-1109-CK-FR' OR "normalizedName" = 'filtre peageot 1109 ck fr'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GRAISSE-PETRO-BARAKA-15KG', NULL, 'GRAISSE PETRO BARAKA 15KG', 'graisse petro baraka 15kg', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 1190000, 1350000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GRAISSE-PETRO-BARAKA-15KG' OR "normalizedName" = 'graisse petro baraka 15kg'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-740-15W40-20L', NULL, 'PETRO BARAKA 740 15W40 20L', 'petro baraka 740 15w40 20l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 980000, 1100000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-740-15W40-20L' OR "normalizedName" = 'petro baraka 740 15w40 20l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-NORDWERK-60-AH', NULL, 'BATTERIE NORDWERK 60 AH', 'batterie nordwerk 60 ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 880000, 1030000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-NORDWERK-60-AH' OR "normalizedName" = 'batterie nordwerk 60 ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-NORDWORK-56-AH', NULL, 'BATTERIE NORDWORK 56 AH', 'batterie nordwork 56 ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 800000, 950000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-NORDWORK-56-AH' OR "normalizedName" = 'batterie nordwork 56 ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TORUS-45AH', NULL, 'BATTERIE TORUS 45AH', 'batterie torus 45ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 830000, 980000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TORUS-45AH' OR "normalizedName" = 'batterie torus 45ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-477556-5', NULL, 'FILTRE HUGO 477556-5', 'filtre hugo 477556-5', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 135000, 180000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-477556-5' OR "normalizedName" = 'filtre hugo 477556-5'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FA216', NULL, 'FILTRE GENIUNE VS-FA216', 'filtre geniune vs-fa216', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 90000, 120000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FA216' OR "normalizedName" = 'filtre geniune vs-fa216'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FAP-5069-JX', NULL, 'FILTRE ALSAFA FAP-5069 JX', 'filtre alsafa fap-5069 jx', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 600000, 750000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FAP-5069-JX' OR "normalizedName" = 'filtre alsafa fap-5069 jx'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FA-226', NULL, 'FILTRE AIR FA-226', 'filtre air fa-226', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 50000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FA-226' OR "normalizedName" = 'filtre air fa-226'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-0B19E-4-01', NULL, 'FILTRE CS 0B19E-4-01', 'filtre cs 0b19e-4-01', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 60000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-0B19E-4-01' OR "normalizedName" = 'filtre cs 0b19e-4-01'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-8200257642-00', NULL, 'FILTRE RENAULT GROUP 8200257642', 'filtre renault group 8200257642', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-8200257642-00' OR "normalizedName" = 'filtre renault group 8200257642'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FH80', NULL, 'FILTRE VESTAL VS-FH80', 'filtre vestal vs-fh80', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 65000, 95000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FH80' OR "normalizedName" = 'filtre vestal vs-fh80'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-MB220900', NULL, 'FILTRE CS MB220900', 'filtre cs mb220900', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 50000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-MB220900' OR "normalizedName" = 'filtre cs mb220900'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-OILFINE-75W80-1L', NULL, 'OILFINE 75W80 1L', 'oilfine 75w80 1l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 81000, 110000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-OILFINE-75W80-1L' OR "normalizedName" = 'oilfine 75w80 1l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TOTAL-SAE-40-20L', NULL, 'TOTAL SAE 40 20L', 'total sae 40 20l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 795000, 900000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TOTAL-SAE-40-20L' OR "normalizedName" = 'total sae 40 20l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LAVE-GLACE-PETRO-BARAKA-5L', NULL, 'LAVE GLACE PETRO BARAKA 5L', 'lave glace petro baraka 5l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 48000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LAVE-GLACE-PETRO-BARAKA-5L' OR "normalizedName" = 'lave glace petro baraka 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-CBS-75AH', NULL, 'BATTERIE CBS 75AH', 'batterie cbs 75ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 960000, 1110000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-CBS-75AH' OR "normalizedName" = 'batterie cbs 75ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-REMAX-75AH', NULL, 'BATTERIE REMAX 75AH', 'batterie remax 75ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1010000, 1160000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-REMAX-75AH' OR "normalizedName" = 'batterie remax 75ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-23390-0L070', NULL, 'FILTRE ELEMENT 23390-0L070', 'filtre element 23390-0l070', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 110000, 140000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-23390-0L070' OR "normalizedName" = 'filtre element 23390-0l070'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-HUGO-26300-35056', NULL, 'FILTRE HUGO 26300-35056', 'filtre hugo 26300-35056', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 29000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-HUGO-26300-35056' OR "normalizedName" = 'filtre hugo 26300-35056'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-OEM-8200768913', NULL, 'FILTRE OEM 8200768913', 'filtre oem 8200768913', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 29000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-OEM-8200768913' OR "normalizedName" = 'filtre oem 8200768913'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-CASTROL-TRANSMAX-75W-80-1L', NULL, 'CASTROL TRANSMAX 75W-80 1L', 'castrol transmax 75w-80 1l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 200000, 230000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-CASTROL-TRANSMAX-75W-80-1L' OR "normalizedName" = 'castrol transmax 75w-80 1l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-ARECA-0W20-5L', NULL, 'ARECA 0W20 5L', 'areca 0w20 5l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 1400000, 1600000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-ARECA-0W20-5L' OR "normalizedName" = 'areca 0w20 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TOTA-BRAKE-FLUID-HBF-4-DOT4', NULL, 'TOTAL BRAKE FLUID HBF 4 DOT4', 'total brake fluid hbf 4 dot4', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 48000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TOTA-BRAKE-FLUID-HBF-4-DOT4' OR "normalizedName" = 'total brake fluid hbf 4 dot4'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-0-5L-CASTROL-EDGE-5W30', NULL, '0.5L CASTROL EDGE 5W30', '0.5l castrol edge 5w30', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 163000, 175000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-0-5L-CASTROL-EDGE-5W30' OR "normalizedName" = '0.5l castrol edge 5w30'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LUXOILSAE-40-1L', NULL, 'LUXOILSAE 40 1L', 'luxoilsae 40 1l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 36000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LUXOILSAE-40-1L' OR "normalizedName" = 'luxoilsae 40 1l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-KP2238', NULL, 'FILTRE HIGER KP2238', 'filtre higer kp2238', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 380000, 480000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-KP2238' OR "normalizedName" = 'filtre higer kp2238'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-DX-468', NULL, 'FILTRE DEXA DX-468', 'filtre dexa dx-468', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 30000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-DX-468' OR "normalizedName" = 'filtre dexa dx-468'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FA147', NULL, 'FILTRE GENUINE PARTS VS-FA147', 'filtre genuine parts vs-fa147', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 95000, 130000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FA147' OR "normalizedName" = 'filtre genuine parts vs-fa147'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-HCX0806N', NULL, 'FILTRE HUGO HCX0806N', 'filtre hugo hcx0806n', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-HCX0806N' OR "normalizedName" = 'filtre hugo hcx0806n'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FA190', NULL, 'FILTRE VESTAL VS-FA190', 'filtre vestal vs-fa190', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 100000, 140000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FA190' OR "normalizedName" = 'filtre vestal vs-fa190'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-CHELIA-TURBO-SUPER-IMPO', NULL, 'CHELIA TURBO SUPER IMPO', 'chelia turbo super impo', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 325000, 395000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-CHELIA-TURBO-SUPER-IMPO' OR "normalizedName" = 'chelia turbo super impo'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-EXOL-5W40-5L', NULL, 'EXOL 5W40 5L', 'exol 5w40 5l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 610000, 690000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-EXOL-5W40-5L' OR "normalizedName" = 'exol 5w40 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-0-5L-LUXOIL-5W40', NULL, '0.5L LUXOIL 5W40', '0.5l luxoil 5w40', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 44000, 51000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-0-5L-LUXOIL-5W40' OR "normalizedName" = '0.5l luxoil 5w40'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-TORUS-100AH', NULL, 'BATTERIE TORUS 100AH', 'batterie torus 100ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1420000, 1570000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-TORUS-100AH' OR "normalizedName" = 'batterie torus 100ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-NORDWORK-160AH', NULL, 'BATTERIE NORDWORK 160AH', 'batterie nordwork 160ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 2100000, 2250000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-NORDWORK-160AH' OR "normalizedName" = 'batterie nordwork 160ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-SUPER-ENERGY-180AH', NULL, 'BATTERIE SUPER ENERGY 180AH', 'batterie super energy 180ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 2150000, 2300000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-SUPER-ENERGY-180AH' OR "normalizedName" = 'batterie super energy 180ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-ASSAD-75AH', NULL, 'BATTERIE ASSAD 75AH', 'batterie assad 75ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 920000, 1070000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-ASSAD-75AH' OR "normalizedName" = 'batterie assad 75ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-REMAX-60AH', NULL, 'BATTERIE REMAX 60AH', 'batterie remax 60ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 870000, 1020000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-REMAX-60AH' OR "normalizedName" = 'batterie remax 60ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FA-56', NULL, 'FILTRE VESTAL FA-56', 'filtre vestal fa-56', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FA-56' OR "normalizedName" = 'filtre vestal fa-56'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-16541599R', NULL, 'FILTRE OTOFIL 16541599R', 'filtre otofil 16541599r', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 39000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-16541599R' OR "normalizedName" = 'filtre otofil 16541599r'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-030115561AB', NULL, 'FILTRE KING 030115561AB', 'filtre king 030115561ab', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 35000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-030115561AB' OR "normalizedName" = 'filtre king 030115561ab'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FG59', NULL, 'FILTRE VESTAL VS-FG59', 'filtre vestal vs-fg59', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 60000, 85000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FG59' OR "normalizedName" = 'filtre vestal vs-fg59'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-HAOGO-1', NULL, 'FILTRE HAOGO', 'filtre haogo', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 80000, 120000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-HAOGO-1' OR "normalizedName" = 'filtre haogo'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-HAOGO-1457434310', NULL, 'FILTRE HAOGO 1457434310', 'filtre haogo 1457434310', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 60000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-HAOGO-1457434310' OR "normalizedName" = 'filtre haogo 1457434310'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-HENGST-E1030K', NULL, 'FILTRE HENGST E1030K', 'filtre hengst e1030k', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 150000, 210000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-HENGST-E1030K' OR "normalizedName" = 'filtre hengst e1030k'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-HENGST-E422K-PD98', NULL, 'FILTRE HENGST E422K PD98', 'filtre hengst e422k pd98', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 400000, 460000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-HENGST-E422K-PD98' OR "normalizedName" = 'filtre hengst e422k pd98'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PO-0034', NULL, 'FILTRE GALAXY PO-0034', 'filtre galaxy po-0034', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 150000, 220000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PO-0034' OR "normalizedName" = 'filtre galaxy po-0034'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-CX0813', NULL, 'FILTRE CHAKMAN CX0813', 'filtre chakman cx0813', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 50000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-CX0813' OR "normalizedName" = 'filtre chakman cx0813'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-STOP-FUIT-RADIATEUR', NULL, 'ATQ GERMANY STOP FUIT', 'atq germany stop fuit', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 115000, 160000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-STOP-FUIT-RADIATEUR' OR "normalizedName" = 'atq germany stop fuit'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-MOTOR-MEDIC', NULL, 'MOTOR MEDIC', 'motor medic', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 100000, 130000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-MOTOR-MEDIC' OR "normalizedName" = 'motor medic'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LUKIOL-G12-5L', NULL, 'LUKIOL G12 5L', 'lukiol g12 5l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 100000, 140000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LUKIOL-G12-5L' OR "normalizedName" = 'lukiol g12 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PLAQUE-80', NULL, 'PLAQUE 80', 'plaque 80', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 1300, 2000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PLAQUE-80' OR "normalizedName" = 'plaque 80'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FOUTA', NULL, 'FOUTA', 'fouta', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 50000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FOUTA' OR "normalizedName" = 'fouta'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LAMPE-T10', NULL, 'LAMPE T10', 'lampe t10', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 3500, 5000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LAMPE-T10' OR "normalizedName" = 'lampe t10'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FICHE-COSSE', NULL, 'FICHE COSSE', 'fiche cosse', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 4500, 6000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FICHE-COSSE' OR "normalizedName" = 'fiche cosse'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VISIBLE-GRAND', NULL, 'VISIBLE GRAND', 'visible grand', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 2500, 5000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VISIBLE-GRAND' OR "normalizedName" = 'visible grand'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FROTOIR-PETIT', NULL, 'FROTOIR PETIT', 'frotoir petit', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 8000, 15000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FROTOIR-PETIT' OR "normalizedName" = 'frotoir petit'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-KRICK-3-TON', NULL, 'KRICK 3 TON', 'krick 3 ton', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 160000, 230000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-KRICK-3-TON' OR "normalizedName" = 'krick 3 ton'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LAVE-GLACE-AMIR', NULL, 'LAVE GLACE AMIR', 'lave glace amir', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 13000, 20000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LAVE-GLACE-AMIR' OR "normalizedName" = 'lave glace amir'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-NAFTALIA-SYNT-5W40-5L', NULL, 'NAFTALIA SYNT 5W40 5L', 'naftalia synt 5w40 5l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 425000, 490000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-NAFTALIA-SYNT-5W40-5L' OR "normalizedName" = 'naftalia synt 5w40 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-CASTROL-EDGE-5W30-4L', NULL, 'CASTROL EDGE 5W30 4L', 'castrol edge 5w30 4l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 1400000, 1500000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-CASTROL-EDGE-5W30-4L' OR "normalizedName" = 'castrol edge 5w30 4l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-SKP-8200033408', NULL, 'FILTRE SKP 8200033408', 'filtre skp 8200033408', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 26000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-SKP-8200033408' OR "normalizedName" = 'filtre skp 8200033408'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-INCI-FH20', NULL, 'FILTRE INCI-FH20', 'filtre inci-fh20', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 60000, 110000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-INCI-FH20' OR "normalizedName" = 'filtre inci-fh20'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TOTAL-QUARTZ-INEO-0W20-5L', NULL, 'TOTAL QUARTZ INEO 0W20 5L', 'total quartz ineo 0w20 5l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 650000, 750000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TOTAL-QUARTZ-INEO-0W20-5L' OR "normalizedName" = 'total quartz ineo 0w20 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GRAISSE-FAGNOOM-MARON-15KG', NULL, 'GRAISSE FAGNOOM MARON 15KG', 'graisse fagnoom maron 15kg', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 530000, 700000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GRAISSE-FAGNOOM-MARON-15KG' OR "normalizedName" = 'graisse fagnoom maron 15kg'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GRAISSE-FAGNOOM-BLEU-15KG', NULL, 'GRAISSE FAGNOOM BLEU 15KG', 'graisse fagnoom bleu 15kg', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 650000, 800000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GRAISSE-FAGNOOM-BLEU-15KG' OR "normalizedName" = 'graisse fagnoom bleu 15kg'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-EAU-DESTILEE-BIO', NULL, 'EAU DESTILEE BIO', 'eau destilee bio', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 4500, 6000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-EAU-DESTILEE-BIO' OR "normalizedName" = 'eau destilee bio'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-DFT-2841', NULL, 'FILTRE DFT 2841', 'filtre dft 2841', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 400000, 550000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-DFT-2841' OR "normalizedName" = 'filtre dft 2841'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-DX-110', NULL, 'FILTRE DEXA DX-110', 'filtre dexa dx-110', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 25000, 40000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-DX-110' OR "normalizedName" = 'filtre dexa dx-110'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-OP-575', NULL, 'FILTRE EVENUS OP575', 'filtre evenus op575', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 30000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-OP-575' OR "normalizedName" = 'filtre evenus op575'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-90915-YZZJ3', NULL, 'FILTRE HANSA 90915-YZZJ3', 'filtre hansa 90915-yzzj3', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 35000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-90915-YZZJ3' OR "normalizedName" = 'filtre hansa 90915-yzzj3'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-SP-2057-5X', NULL, 'FILTRE MAN SP 2057-5X', 'filtre man sp 2057-5x', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 1150000, 1250000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-SP-2057-5X' OR "normalizedName" = 'filtre man sp 2057-5x'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FA-123', NULL, 'FILTRE AIR FA-123', 'filtre air fa-123', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 65000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FA-123' OR "normalizedName" = 'filtre air fa-123'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-TORUS-40AH', NULL, 'BATTERIE TORUS 40AH', 'batterie torus 40ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 730000, 880000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-TORUS-40AH' OR "normalizedName" = 'batterie torus 40ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-REMAX-95AH', NULL, 'BATTERIE REMAX 95AH', 'batterie remax 95ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1450000, 1600000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-REMAX-95AH' OR "normalizedName" = 'batterie remax 95ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-1L-SONATRACH-HYDROLIQUE-46', NULL, '1L SONATRACH HYDROLIQUE 46', '1l sonatrach hydrolique 46', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 31500, 31500, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-1L-SONATRACH-HYDROLIQUE-46' OR "normalizedName" = '1l sonatrach hydrolique 46'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GRAISSE-NEX-800GRS', NULL, 'GRAISSE NEX 800Grs', 'graisse nex 800grs', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 25000, 40000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GRAISSE-NEX-800GRS' OR "normalizedName" = 'graisse nex 800grs'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GRAISSE-DMG-BLEU-15KG', NULL, 'GRAISSE DMG BLEU 15KG', 'graisse dmg bleu 15kg', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 740000, 850000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GRAISSE-DMG-BLEU-15KG' OR "normalizedName" = 'graisse dmg bleu 15kg'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-DMG-SAE40-1L', NULL, 'DMG SAE40 1L', 'dmg sae40 1l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 28000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-DMG-SAE40-1L' OR "normalizedName" = 'dmg sae40 1l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-SOPRE-OIL-SAE-40-5L', NULL, 'SOPRE OIL SAE 40 5L', 'sopre oil sae 40 5l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 180000, 260000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-SOPRE-OIL-SAE-40-5L' OR "normalizedName" = 'sopre oil sae 40 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LUXOIL-10W40-5L', NULL, 'LUXOIL 10W40 5L', 'luxoil 10w40 5l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 350000, 430000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LUXOIL-10W40-5L' OR "normalizedName" = 'luxoil 10w40 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-SOPRE-OIL-SAE40-20L', NULL, 'SOPRE OIL SAE40 20L', 'sopre oil sae40 20l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 650000, 800000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-SOPRE-OIL-SAE40-20L' OR "normalizedName" = 'sopre oil sae40 20l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GLACIOL-PETRO-BARAKA-ORANGE-26-5L', NULL, 'GLACIOL PETRO BARAKA ORANGE -26° 5L', 'glaciol petro baraka orange -26° 5l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 130000, 160000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GLACIOL-PETRO-BARAKA-ORANGE-26-5L' OR "normalizedName" = 'glaciol petro baraka orange -26° 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-ARCO-75AH', NULL, 'BATTERIE ARCO 75AH', 'batterie arco 75ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1060000, 1200000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-ARCO-75AH' OR "normalizedName" = 'batterie arco 75ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-CASTROL-5W40-1L', NULL, 'CASTROL 5W40 1L', 'castrol 5w40 1l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 300000, 340000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-CASTROL-5W40-1L' OR "normalizedName" = 'castrol 5w40 1l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-CASTROL-5W30-1L', NULL, 'CASTROL 5W30 1L', 'castrol 5w30 1l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 300000, 340000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-CASTROL-5W30-1L' OR "normalizedName" = 'castrol 5w30 1l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TOTAL-QUARTZ-0W30-5L', NULL, 'TOTAL QUARTZ 0W30 5L', 'total quartz 0w30 5l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 695000, 790000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TOTAL-QUARTZ-0W30-5L' OR "normalizedName" = 'total quartz 0w30 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FA212', NULL, 'FILTRE AIR VS-FA212', 'filtre air vs-fa212', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 200000, 240000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FA212' OR "normalizedName" = 'filtre air vs-fa212'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FA02', NULL, 'FILTRE AIR OTOFIL FA02', 'filtre air otofil fa02', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 40000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FA02' OR "normalizedName" = 'filtre air otofil fa02'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-ROCH-75', NULL, 'BATTERIE ROCH 75', 'batterie roch 75', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1000000, 1140000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-ROCH-75' OR "normalizedName" = 'batterie roch 75'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-AKTROM-40AH', NULL, 'BATTERIE AKTROM 40AH', 'batterie aktrom 40ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 730000, 870000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-AKTROM-40AH' OR "normalizedName" = 'batterie aktrom 40ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-NC-FH41', NULL, 'FILTRE INCI NC-FH41', 'filtre inci nc-fh41', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 30000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-NC-FH41' OR "normalizedName" = 'filtre inci nc-fh41'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-K1526', NULL, 'FILTRE VESTAL K1526', 'filtre vestal k1526', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 75000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-K1526' OR "normalizedName" = 'filtre vestal k1526'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-T-WA6459', NULL, 'FILTRE TECNO T-WA6459', 'filtre tecno t-wa6459', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 40000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-T-WA6459' OR "normalizedName" = 'filtre tecno t-wa6459'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-DYNAMIC-60AH', NULL, 'BATTERIE DYNAMIC 60AH', 'batterie dynamic 60ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 960000, 1100000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-DYNAMIC-60AH' OR "normalizedName" = 'batterie dynamic 60ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-WIPER-WP-40', NULL, 'DEGRIPANT WIPER WP-40', 'degripant wiper wp-40', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 21000, 30000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-WIPER-WP-40' OR "normalizedName" = 'degripant wiper wp-40'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-CHARTOTON-LION', NULL, 'CHARTOTON LION', 'chartoton lion', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 7000, 10000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-CHARTOTON-LION' OR "normalizedName" = 'chartoton lion'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LAMPE-VEUZ-12V', NULL, 'LAMPE VEUZ 12V', 'lampe veuz 12v', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 4000, 10000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LAMPE-VEUZ-12V' OR "normalizedName" = 'lampe veuz 12v'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FLAMINGO-PM', NULL, 'FLAMINGO PM', 'flamingo pm', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 40000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FLAMINGO-PM' OR "normalizedName" = 'flamingo pm'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PURFIN-MACHO', NULL, 'PURFIN MACHO', 'purfin macho', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 19500, 35000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PURFIN-MACHO' OR "normalizedName" = 'purfin macho'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FAP-823', NULL, 'FILTRE FAP 823', 'filtre fap 823', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 35000, 55000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FAP-823' OR "normalizedName" = 'filtre fap 823'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FAP-5022', NULL, 'FILTRE ALSAFA FAP-5022', 'filtre alsafa fap-5022', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 110000, 160000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FAP-5022' OR "normalizedName" = 'filtre alsafa fap-5022'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FAP-5039JX', NULL, 'FILTRE ALSAFA FAP-5039JX', 'filtre alsafa fap-5039jx', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 140000, 190000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FAP-5039JX' OR "normalizedName" = 'filtre alsafa fap-5039jx'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FAP-5018', NULL, 'FILTRE ALSAFA FAP-5018', 'filtre alsafa fap-5018', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 140000, 190000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FAP-5018' OR "normalizedName" = 'filtre alsafa fap-5018'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-WA6134', NULL, 'FILTRE HAYAS WA6134', 'filtre hayas wa6134', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 55000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-WA6134' OR "normalizedName" = 'filtre hayas wa6134'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-26310-27200', NULL, 'FILTRE KING 26310-27200', 'filtre king 26310-27200', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 55000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-26310-27200' OR "normalizedName" = 'filtre king 26310-27200'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-T-WL-7150', NULL, 'FILTRE TECNO T-WL 7150', 'filtre tecno t-wl 7150', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 25000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-T-WL-7150' OR "normalizedName" = 'filtre tecno t-wl 7150'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-T-WL7204', NULL, 'FILTRE TECNO T-WL7204', 'filtre tecno t-wl7204', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 25000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-T-WL7204' OR "normalizedName" = 'filtre tecno t-wl7204'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-T-13780-77A00', NULL, 'FILTRE DFSKKING T-13780-77A00', 'filtre dfskking t-13780-77a00', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 30000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-T-13780-77A00' OR "normalizedName" = 'filtre dfskking t-13780-77a00'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FH12', NULL, 'FILTRE VS-FH12', 'filtre vs-fh12', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 30000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FH12' OR "normalizedName" = 'filtre vs-fh12'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-0-5L-PETRO-BARAKA-10W40', NULL, '0.5L PETRO BARAKA 10W40', '0.5l petro baraka 10w40', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 36000, 44000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-0-5L-PETRO-BARAKA-10W40' OR "normalizedName" = '0.5l petro baraka 10w40'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-0-5L-NAFTILIA-20W50', NULL, '0.5L NAFTILIA 20W50', '0.5l naftilia 20w50', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 21000, 29000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-0-5L-NAFTILIA-20W50' OR "normalizedName" = '0.5l naftilia 20w50'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-REMAX-45AH', NULL, 'BATTERIE REMAX 45AH', 'batterie remax 45ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 840000, 990000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-REMAX-45AH' OR "normalizedName" = 'batterie remax 45ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-FULMEN-90AH', NULL, 'BATTERIE FULMEN 90AH', 'batterie fulmen 90ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1750000, 1900000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-FULMEN-90AH' OR "normalizedName" = 'batterie fulmen 90ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-CERATEC', NULL, 'LIQUI MOLY CERATEC', 'liqui moly ceratec', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 580000, 650000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-CERATEC' OR "normalizedName" = 'liqui moly ceratec'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GRAISSE-PETRO-BARAKA-1KG', NULL, 'GRAISSE PETRO BARAKA 1KG', 'graisse petro baraka 1kg', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 83000, 95000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GRAISSE-PETRO-BARAKA-1KG' OR "normalizedName" = 'graisse petro baraka 1kg'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-ASSAD-60AH', NULL, 'BATTERIE ASSAD 60AH', 'batterie assad 60ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 870000, 1020000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-ASSAD-60AH' OR "normalizedName" = 'batterie assad 60ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-NORD-WERK-110AH', NULL, 'BATTERIE NORD WERK 110AH', 'batterie nord werk 110ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1450000, 1600000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-NORD-WERK-110AH' OR "normalizedName" = 'batterie nord werk 110ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-NORD-WERK-100AH', NULL, 'BATTERIE NORD WERK 100AH', 'batterie nord werk 100ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1400000, 1550000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-NORD-WERK-100AH' OR "normalizedName" = 'batterie nord werk 100ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-SPID-100AH', NULL, 'BATTERIE SPID 100AH', 'batterie spid 100ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1400000, 1550000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-SPID-100AH' OR "normalizedName" = 'batterie spid 100ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-REMAX-50AH', NULL, 'BATTERIE REMAX 50AH', 'batterie remax 50ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 750000, 900000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-REMAX-50AH' OR "normalizedName" = 'batterie remax 50ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-DAEXLER-GLACIOL-G12-5L', NULL, 'DAEXLER GLACIOL G12 5L', 'daexler glaciol g12 5l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 170000, 190000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-DAEXLER-GLACIOL-G12-5L' OR "normalizedName" = 'daexler glaciol g12 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GBS-611', NULL, 'FILTRE AL-SAFA GBS-611', 'filtre al-safa gbs-611', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 25000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GBS-611' OR "normalizedName" = 'filtre al-safa gbs-611'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FA264', NULL, 'FILTRE AIR VS-FA264', 'filtre air vs-fa264', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 65000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FA264' OR "normalizedName" = 'filtre air vs-fa264'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-K1519', NULL, 'FILTRE K1519', 'filtre k1519', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 90000, 130000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-K1519' OR "normalizedName" = 'filtre k1519'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BALLIS-SWIGLLESSE-22', NULL, 'BALLIS SWIGLLESSE 22', 'ballis swigllesse 22', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 17000, 30000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BALLIS-SWIGLLESSE-22' OR "normalizedName" = 'ballis swigllesse 22'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BALLIS-SWIGLLESSE-16', NULL, 'BALLIS SWIGLLESSE 16', 'ballis swigllesse 16', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 17000, 30000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BALLIS-SWIGLLESSE-16' OR "normalizedName" = 'ballis swigllesse 16'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-HAKOBAT-45AH', NULL, 'BATTERIE HAKOBAT 45AH', 'batterie hakobat 45ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 700000, 850000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-HAKOBAT-45AH' OR "normalizedName" = 'batterie hakobat 45ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-REMAX-100AH', NULL, 'BATTERIE REMAX 100AH', 'batterie remax 100ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1450000, 1600000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-REMAX-100AH' OR "normalizedName" = 'batterie remax 100ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-NORDWERK160-AH', NULL, 'BATTERIE NORDWERK 160AH', 'batterie nordwerk 160ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 2050000, 2200000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-NORDWERK160-AH' OR "normalizedName" = 'batterie nordwerk 160ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TOTAL-QUARTZ-7000-10W40-5L', NULL, 'TOTAL QUARTZ 7000 10W40 5L', 'total quartz 7000 10w40 5l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 510000, 570000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TOTAL-QUARTZ-7000-10W40-5L' OR "normalizedName" = 'total quartz 7000 10w40 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-SOPRE-OIL-5W40-5L', NULL, 'SOPRE OIL 5W40 5L', 'sopre oil 5w40 5l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 350000, 420000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-SOPRE-OIL-5W40-5L' OR "normalizedName" = 'sopre oil 5w40 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LUXOIL-5W40-5L', NULL, 'LUXOIL 5W40 5L', 'luxoil 5w40 5l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 440000, 510000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LUXOIL-5W40-5L' OR "normalizedName" = 'luxoil 5w40 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TORUS-75-AH', NULL, 'BATTERIE TORUS 75 AH', 'batterie torus 75 ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1020000, 1170000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TORUS-75-AH' OR "normalizedName" = 'batterie torus 75 ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-AKTROM-100-AH-GAUCHE', NULL, 'BATTERIE AKTROM 100 AH GAUCHE', 'batterie aktrom 100 ah gauche', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1400000, 1550000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-AKTROM-100-AH-GAUCHE' OR "normalizedName" = 'batterie aktrom 100 ah gauche'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-AKTROM-75-AH', NULL, 'BATTERIE AKTROM 75 AH', 'batterie aktrom 75 ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 960000, 1100000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-AKTROM-75-AH' OR "normalizedName" = 'batterie aktrom 75 ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TORUS-60-AH', NULL, 'BATTERIE TORUS 60 AH', 'batterie torus 60 ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 850000, 1000000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TORUS-60-AH' OR "normalizedName" = 'batterie torus 60 ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-AKTROM-60-AH', NULL, 'BATTERIE AKTROM 60 AH', 'batterie aktrom 60 ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 880000, 1030000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-AKTROM-60-AH' OR "normalizedName" = 'batterie aktrom 60 ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-AKTROM-45-AH', NULL, 'BATTERIE AKTROM 45 AH', 'batterie aktrom 45 ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 820000, 980000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-AKTROM-45-AH' OR "normalizedName" = 'batterie aktrom 45 ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LAVE-GLACE-BARDAHL-5L', NULL, 'LAVE GLACE BARDAHL 5L', 'lave glace bardahl 5l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 130000, 160000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LAVE-GLACE-BARDAHL-5L' OR "normalizedName" = 'lave glace bardahl 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-770045724-00', NULL, 'FILTRE ORYX770045724', 'filtre oryx770045724', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-770045724-00' OR "normalizedName" = 'filtre oryx770045724'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FA81', NULL, 'FILTRE AIR VS-FA81', 'filtre air vs-fa81', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 50000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FA81' OR "normalizedName" = 'filtre air vs-fa81'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BITEC-60', NULL, 'BATTERIE BITEC 60', 'batterie bitec 60', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 880000, 1030000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BITEC-60' OR "normalizedName" = 'batterie bitec 60'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-BERGANE-75-AH', NULL, 'BATTERIE BERGANE 75AH', 'batterie bergane 75ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1240000, 1390000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-BERGANE-75-AH' OR "normalizedName" = 'batterie bergane 75ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-ROCH-50AH', NULL, 'BATTERIE ROCH 50AH', 'batterie roch 50ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 830000, 980000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-ROCH-50AH' OR "normalizedName" = 'batterie roch 50ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FA-30', NULL, 'VESTAL GROUP FA-30', 'vestal group fa-30', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 55000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FA-30' OR "normalizedName" = 'vestal group fa-30'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-SPID-75AH', NULL, 'BATTERIE SPID 75AH', 'batterie spid 75ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 990000, 1140000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-SPID-75AH' OR "normalizedName" = 'batterie spid 75ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-0-5L-TOTAL-5000-15W40', NULL, '0.5L TOTAL 5000 15W40', '0.5l total 5000 15w40', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 29500, 39000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-0-5L-TOTAL-5000-15W40' OR "normalizedName" = '0.5l total 5000 15w40'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-28113-4-F000', NULL, 'FILTRE GFB 28113-4 F000', 'filtre gfb 28113-4 f000', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 80000, 120000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-28113-4-F000' OR "normalizedName" = 'filtre gfb 28113-4 f000'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FA83', NULL, 'FILTRE VESTAL VS-FA83', 'filtre vestal vs-fa83', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 65000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FA83' OR "normalizedName" = 'filtre vestal vs-fa83'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-DF5561', NULL, 'FILTRE ELEMFIL DF5561', 'filtre elemfil df5561', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 120000, 170000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-DF5561' OR "normalizedName" = 'filtre elemfil df5561'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FA161', NULL, 'FILTRE VESTAL VS-FA161', 'filtre vestal vs-fa161', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 90000, 140000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FA161' OR "normalizedName" = 'filtre vestal vs-fa161'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TE-4001H', NULL, 'FILTRE AUTOMOTIVE TE 4001H', 'filtre automotive te 4001h', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 50000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TE-4001H' OR "normalizedName" = 'filtre automotive te 4001h'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FICHE-GASOIL', NULL, 'FICHE GASOIL', 'fiche gasoil', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 80000, 120000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FICHE-GASOIL' OR "normalizedName" = 'fiche gasoil'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GFB-320-04133', NULL, 'FILTRE GFB 320/04133', 'filtre gfb 320/04133', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 90000, 140000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GFB-320-04133' OR "normalizedName" = 'filtre gfb 320/04133'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-1109-AY', NULL, 'FILTRE PEUGEOT 1109 AY', 'filtre peugeot 1109 ay', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 50000, 65000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-1109-AY' OR "normalizedName" = 'filtre peugeot 1109 ay'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FA177', NULL, 'FILTRE VESTAL VS-FA177', 'filtre vestal vs-fa177', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 110000, 160000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FA177' OR "normalizedName" = 'filtre vestal vs-fa177'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FA-59', NULL, 'FILTRE VESTAL FA-59', 'filtre vestal fa-59', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 55000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FA-59' OR "normalizedName" = 'filtre vestal fa-59'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FA93', NULL, 'FILTRE VESTAL VS-FA93', 'filtre vestal vs-fa93', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 50000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FA93' OR "normalizedName" = 'filtre vestal vs-fa93'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-NC-FA24', NULL, 'FILTRE INCI NC-FA24', 'filtre inci nc-fa24', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 65000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-NC-FA24' OR "normalizedName" = 'filtre inci nc-fa24'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-SUPER-GLUE', NULL, 'SUPER GLUE', 'super glue', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 3200, 5000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-SUPER-GLUE' OR "normalizedName" = 'super glue'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-HOUSSE-SIMPLE', NULL, 'HOUSSE SIMPLE', 'housse simple', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 110000, 150000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-HOUSSE-SIMPLE' OR "normalizedName" = 'housse simple'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-HOUSSE-LV', NULL, 'HOUSSE LV', 'housse lv', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 195000, 270000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-HOUSSE-LV' OR "normalizedName" = 'housse lv'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-POIGNE-DE-PORTE-SPARAK-AR-KOR', NULL, 'POIGNE DE PORTE SPARAK AR KOR', 'poigne de porte sparak ar kor', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 65000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-POIGNE-DE-PORTE-SPARAK-AR-KOR' OR "normalizedName" = 'poigne de porte sparak ar kor'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LAMPE-2P-KLAXCAR-12V', NULL, 'LAMPE 2P KLAXCAR 12V', 'lampe 2p klaxcar 12v', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 12000, 15000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LAMPE-2P-KLAXCAR-12V' OR "normalizedName" = 'lampe 2p klaxcar 12v'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-SHELL-15W40', NULL, 'SHELL 15W40', 'shell 15w40', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 420000, 500000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-SHELL-15W40' OR "normalizedName" = 'shell 15w40'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-YUKO-10W40-5L', NULL, 'YUKO 10W40 5L', 'yuko 10w40 5l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 770000, 850000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-YUKO-10W40-5L' OR "normalizedName" = 'yuko 10w40 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PREMIUM-OIL', NULL, 'PREMIUM OIL', 'premium oil', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 80000, 110000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PREMIUM-OIL' OR "normalizedName" = 'premium oil'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GLACIOL-RADEON-G12-2L', NULL, 'GLACIOL RADEON G12 2L', 'glaciol radeon g12 2l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 60000, 75000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GLACIOL-RADEON-G12-2L' OR "normalizedName" = 'glaciol radeon g12 2l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PROFI-CAR-10W40-5L', NULL, 'PROFI-CAR 10W40 5L', 'profi-car 10w40 5l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 810000, 900000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PROFI-CAR-10W40-5L' OR "normalizedName" = 'profi-car 10w40 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BERGAN-ENERGY-60-AH', NULL, 'BATTERIE BERGAN ENERGY 60 AH', 'batterie bergan energy 60 ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1020000, 1270000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BERGAN-ENERGY-60-AH' OR "normalizedName" = 'batterie bergan energy 60 ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-HAKOBAT-60-AH', NULL, 'BATTERIE HAKOBAT 60 AH', 'batterie hakobat 60 ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 770000, 890000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-HAKOBAT-60-AH' OR "normalizedName" = 'batterie hakobat 60 ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-REBORN-74-AH', NULL, 'BATTERIE REBORN 74 AH', 'batterie reborn 74 ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1310000, 1460000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-REBORN-74-AH' OR "normalizedName" = 'batterie reborn 74 ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-REMAX-65-AH', NULL, 'BATTERIE REMAX 65 AH', 'batterie remax 65 ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 920000, 1070000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-REMAX-65-AH' OR "normalizedName" = 'batterie remax 65 ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-REBORN-52-AH-EURO', NULL, 'BATTERIE REBORN 52 AH EURO', 'batterie reborn 52 ah euro', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 920000, 1040000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-REBORN-52-AH-EURO' OR "normalizedName" = 'batterie reborn 52 ah euro'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-AKTROM-85-AH', NULL, 'BATTERIE AKTROM 85 AH', 'batterie aktrom 85 ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1200000, 1340000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-AKTROM-85-AH' OR "normalizedName" = 'batterie aktrom 85 ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-KRICK-2-TON', NULL, 'KRICK 2 TON', 'krick 2 ton', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 420000, 530000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-KRICK-2-TON' OR "normalizedName" = 'krick 2 ton'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-KRICK-32-TON', NULL, 'KRICK 32 TON', 'krick 32 ton', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 690000, 820000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-KRICK-32-TON' OR "normalizedName" = 'krick 32 ton'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GLACIOL-ANTIGEL-5', NULL, 'GLACIOL ANTIGEL 5L', 'glaciol antigel 5l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 50000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GLACIOL-ANTIGEL-5' OR "normalizedName" = 'glaciol antigel 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GLACIOL-G12-GERMANY-5L', NULL, 'GLACIOL G12 GERMANY 5L', 'glaciol g12 germany 5l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 90000, 130000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GLACIOL-G12-GERMANY-5L' OR "normalizedName" = 'glaciol g12 germany 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-DANSO-DFM', NULL, 'FILTRE DANSO DFM', 'filtre danso dfm', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 16000, 40000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-DANSO-DFM' OR "normalizedName" = 'filtre danso dfm'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TOTAL-RUBIA-S-40-20L', NULL, 'TOTAL RUBIA S 40 20L', 'total rubia s 40 20l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 780000, 850000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TOTAL-RUBIA-S-40-20L' OR "normalizedName" = 'total rubia s 40 20l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-AKTROM-110AH', NULL, 'BATTERIE AKTROM 110AH', 'batterie aktrom 110ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1450000, 1600000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-AKTROM-110AH' OR "normalizedName" = 'batterie aktrom 110ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-VS-FA74-SAMPO', NULL, 'FILTRE VS-FA74 SAMPO', 'filtre vs-fa74 sampo', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 300000, 450000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-VS-FA74-SAMPO' OR "normalizedName" = 'filtre vs-fa74 sampo'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-7700424098-00', NULL, 'FILRE CLIM 7700424098', 'filre clim 7700424098', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 50000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-7700424098-00' OR "normalizedName" = 'filre clim 7700424098'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-272773016R', NULL, 'FILTRE CLIM 272773016R', 'filtre clim 272773016r', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 50000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-272773016R' OR "normalizedName" = 'filtre clim 272773016r'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FG29', NULL, 'FILTRE VS-FG29', 'filtre vs-fg29', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 60000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FG29' OR "normalizedName" = 'filtre vs-fg29'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FC63', NULL, 'FILTRE VS-FC63', 'filtre vs-fc63', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 50000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FC63' OR "normalizedName" = 'filtre vs-fc63'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-GOLF-6-ET-7', NULL, 'FILTRE GOLF 6 ET 7', 'filtre golf 6 et 7', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 40000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-GOLF-6-ET-7' OR "normalizedName" = 'filtre golf 6 et 7'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-GPLF-6', NULL, 'FILTRE GPLF 6', 'filtre gplf 6', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 40000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-GPLF-6' OR "normalizedName" = 'filtre gplf 6'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LIQUI-MOLLY-PURGE-GRAND', NULL, 'LIQUI MOLLY PURGE GRAND', 'liqui molly purge grand', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 195000, 215000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LIQUI-MOLLY-PURGE-GRAND' OR "normalizedName" = 'liqui molly purge grand'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TOTAL-RUBIA-FLEET-HD-15W40-5L', NULL, 'TOTAL RUBIA FLEET HD 15W40 5L', 'total rubia fleet hd 15w40 5l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 225000, 300000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TOTAL-RUBIA-FLEET-HD-15W40-5L' OR "normalizedName" = 'total rubia fleet hd 15w40 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GRAISSE-DMG-ROUGE-15KG', NULL, 'GRAISSE DMG ROUGE 15KG', 'graisse dmg rouge 15kg', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 810000, 960000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GRAISSE-DMG-ROUGE-15KG' OR "normalizedName" = 'graisse dmg rouge 15kg'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BARDHAL-ADDITIF-DIESEL-RENAULT', NULL, 'BARDHAL ADDITIF DIESEL RENAULT', 'bardhal additif diesel renault', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 90000, 120000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BARDHAL-ADDITIF-DIESEL-RENAULT' OR "normalizedName" = 'bardhal additif diesel renault'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TOTAL-15W40-5000-4L', NULL, 'TOTAL 15W40 5000 4L', 'total 15w40 5000 4l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 240000, 310000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TOTAL-15W40-5000-4L' OR "normalizedName" = 'total 15w40 5000 4l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TOTAL-MOTOR-OIL-15W40-4L', NULL, 'TOTAL MOTOR OIL 15W40 4L', 'total motor oil 15w40 4l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 190000, 260000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TOTAL-MOTOR-OIL-15W40-4L' OR "normalizedName" = 'total motor oil 15w40 4l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-ROWE-TURBO-HD-15W-40', NULL, 'ROWE TURBO HD 15W-40', 'rowe turbo hd 15w-40', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 440000, 520000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-ROWE-TURBO-HD-15W-40' OR "normalizedName" = 'rowe turbo hd 15w-40'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-DOT4-WP', NULL, 'DOT4 WP', 'dot4 wp', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 35000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-DOT4-WP' OR "normalizedName" = 'dot4 wp'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-DOT3-WP', NULL, 'DOT3 WP', 'dot3 wp', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 34000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-DOT3-WP' OR "normalizedName" = 'dot3 wp'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TOTAL-QUARTZ-5W30-5L', NULL, 'TOTAL QUARTZ 5W30 5L', 'total quartz 5w30 5l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 670000, 740000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TOTAL-QUARTZ-5W30-5L' OR "normalizedName" = 'total quartz 5w30 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-OBS-105', NULL, 'FILTRE ALSAFA OBS 105', 'filtre alsafa obs 105', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 95000, 120000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-OBS-105' OR "normalizedName" = 'filtre alsafa obs 105'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FA-283', NULL, 'FILTRE FA 283', 'filtre fa 283', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 90000, 130000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FA-283' OR "normalizedName" = 'filtre fa 283'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-26320-2A500', NULL, 'FILTRE KIA 26320 2A500', 'filtre kia 26320 2a500', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 51000, 75000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-26320-2A500' OR "normalizedName" = 'filtre kia 26320 2a500'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FA-2506', NULL, 'FILTRE ALSAFA FA-2506', 'filtre alsafa fa-2506', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 120000, 160000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FA-2506' OR "normalizedName" = 'filtre alsafa fa-2506'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-T-41000739AA', NULL, 'FILTRE TECNO T-41000739AA', 'filtre tecno t-41000739aa', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 125000, 180000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-T-41000739AA' OR "normalizedName" = 'filtre tecno t-41000739aa'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-EXOL-10W-40-5L', NULL, 'EXOL 10W-40 5L', 'exol 10w-40 5l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 410000, 490000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-EXOL-10W-40-5L' OR "normalizedName" = 'exol 10w-40 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-YACCO-SAE-10W-40', NULL, 'YACCO SAE 10W-40', 'yacco sae 10w-40', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 650000, 720000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-YACCO-SAE-10W-40' OR "normalizedName" = 'yacco sae 10w-40'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PURFIN-X', NULL, 'PURFIN X', 'purfin x', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 12500, 22000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PURFIN-X' OR "normalizedName" = 'purfin x'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PURFIN-SAVAGE', NULL, 'PURFIN SAVAGE', 'purfin savage', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 18500, 30000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PURFIN-SAVAGE' OR "normalizedName" = 'purfin savage'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PURFIN-FLORAZI', NULL, 'PURFIN FLORAZI', 'purfin florazi', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 11500, 20000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PURFIN-FLORAZI' OR "normalizedName" = 'purfin florazi'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-APPLLE', NULL, 'PURFFUN APPLLE', 'purffun applle', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 20000, 30000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-APPLLE' OR "normalizedName" = 'purffun applle'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-POLISH-JOKER', NULL, 'POLISH JOKER', 'polish joker', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 23000, 35000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-POLISH-JOKER' OR "normalizedName" = 'polish joker'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BOUCHON-CARTIER-18', NULL, 'BOUCHON CARTIER 18', 'bouchon cartier 18', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 17500, 22000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BOUCHON-CARTIER-18' OR "normalizedName" = 'bouchon cartier 18'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BOUCHON-CARTIER-16', NULL, 'BOUCHON CARTIER 16', 'bouchon cartier 16', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 6000, 10000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BOUCHON-CARTIER-16' OR "normalizedName" = 'bouchon cartier 16'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BOUCHON-CARTIER-24', NULL, 'BOUCHON CARTIER 24', 'bouchon cartier 24', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 9500, 15000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BOUCHON-CARTIER-24' OR "normalizedName" = 'bouchon cartier 24'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-EF-2112-M-B-PLE', NULL, 'FILTRE ONFIL EF 2112 M/B PLE', 'filtre onfil ef 2112 m/b ple', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 340000, 450000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-EF-2112-M-B-PLE' OR "normalizedName" = 'filtre onfil ef 2112 m/b ple'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-CREPOWER-36-AH-A13', NULL, 'BATTERIE CREPOWER 36 Ah A13', 'batterie crepower 36 ah a13', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 690000, 840000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-CREPOWER-36-AH-A13' OR "normalizedName" = 'batterie crepower 36 ah a13'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FARESE-110-AH', NULL, 'BATTERIE FARESE 110 Ah', 'batterie farese 110 ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1320000, 1470000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FARESE-110-AH' OR "normalizedName" = 'batterie farese 110 ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BERGAN-ENERGY-100-AH', NULL, 'BATTERIE BERGAN ENERGY 100 Ah', 'batterie bergan energy 100 ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1620000, 1770000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BERGAN-ENERGY-100-AH' OR "normalizedName" = 'batterie bergan energy 100 ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-NORDWERK85-AH', NULL, 'BATTERIE NORDWERK 85 Ah', 'batterie nordwerk 85 ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1280000, 1400000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-NORDWERK85-AH' OR "normalizedName" = 'batterie nordwerk 85 ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-CBS-60AH', NULL, 'BATTERIE CBS 60Ah', 'batterie cbs 60ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 770000, 920000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-CBS-60AH' OR "normalizedName" = 'batterie cbs 60ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-STEEL-EPOXY', NULL, 'STEEL EPOXY', 'steel epoxy', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 40000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-STEEL-EPOXY' OR "normalizedName" = 'steel epoxy'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-MOTRIO-10W40', NULL, 'MOTRIO 10W40', 'motrio 10w40', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 405000, 480000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-MOTRIO-10W40' OR "normalizedName" = 'motrio 10w40'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-MOTRIO-5W40', NULL, 'MOTRIO 5W40', 'motrio 5w40', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 465000, 540000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-MOTRIO-5W40' OR "normalizedName" = 'motrio 5w40'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BARAKA-15W40-740', NULL, 'PETRO BARAKA 15W40 740', 'petro baraka 15w40 740', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 225000, 330000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BARAKA-15W40-740' OR "normalizedName" = 'petro baraka 15w40 740'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-MOTO-LUB-10W40-1L', NULL, 'PETRO BARAKA MOTO 10W40 1L', 'petro baraka moto 10w40 1l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 75000, 95000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-MOTO-LUB-10W40-1L' OR "normalizedName" = 'petro baraka moto 10w40 1l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GLACIOL-RADEON-ANTIFREEZ-G12-1L', NULL, 'GLACIOL RADEON ANTIFREEZ G12 1L', 'glaciol radeon antifreez g12 1l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 35000, 55000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GLACIOL-RADEON-ANTIFREEZ-G12-1L' OR "normalizedName" = 'glaciol radeon antifreez g12 1l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PETRO-GRAISSE-1K', NULL, 'GRAISSE PETRO GRAISSE 1 kg', 'graisse petro graisse 1 kg', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 30000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PETRO-GRAISSE-1K' OR "normalizedName" = 'graisse petro graisse 1 kg'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FA-80', NULL, 'FILTRE VESTAL FA-80', 'filtre vestal fa-80', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 55000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FA-80' OR "normalizedName" = 'filtre vestal fa-80'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FA25', NULL, 'FILTRE VESTAL VS-FA25', 'filtre vestal vs-fa25', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 55000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FA25' OR "normalizedName" = 'filtre vestal vs-fa25'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LINJET-EASY', NULL, 'LINJET EASY', 'linjet easy', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 6000, 10000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LINJET-EASY' OR "normalizedName" = 'linjet easy'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-ULTRA-BEBE', NULL, 'LINJETE ULTRA BEBE', 'linjete ultra bebe', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 2000, 5000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-ULTRA-BEBE' OR "normalizedName" = 'linjete ultra bebe'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FLEET-HD-20L-15W40', NULL, 'TOTAL RUBIA 20L FLEET HD 400', 'total rubia 20l fleet hd 400', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 910000, 1060000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FLEET-HD-20L-15W40' OR "normalizedName" = 'total rubia 20l fleet hd 400'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TOTALENERGIES', NULL, 'GLACIOL COOLTECH', 'glaciol cooltech', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 71000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TOTALENERGIES' OR "normalizedName" = 'glaciol cooltech'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-ATQ-GERMANY-FLUSH', NULL, 'ATQ GERMANY FLUSH', 'atq germany flush', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 85000, 120000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-ATQ-GERMANY-FLUSH' OR "normalizedName" = 'atq germany flush'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-SAE-0W30', NULL, 'PETROBARAKA 5L 0W30', 'petrobaraka 5l 0w30', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 695000, 770000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-SAE-0W30' OR "normalizedName" = 'petrobaraka 5l 0w30'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-86286Z', NULL, 'LAMP1PKLAXAR', 'lamp1pklaxar', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 3800, 10000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-86286Z' OR "normalizedName" = 'lamp1pklaxar'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FH06', NULL, 'FILTRE VESTAL VS-FH06', 'filtre vestal vs-fh06', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 47000, 75000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FH06' OR "normalizedName" = 'filtre vestal vs-fh06'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-T-WL7095', NULL, 'FILTRE TECNO T-WL7095', 'filtre tecno t-wl7095', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 47000, 75000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-T-WL7095' OR "normalizedName" = 'filtre tecno t-wl7095'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-162817AFC', NULL, 'FILTRE AFLEX 162817AFC', 'filtre aflex 162817afc', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 85000, 120000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-162817AFC' OR "normalizedName" = 'filtre aflex 162817afc'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FA09', NULL, 'FILTRE VESTAL VS-FA09', 'filtre vestal vs-fa09', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 30000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FA09' OR "normalizedName" = 'filtre vestal vs-fa09'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FA13', NULL, 'FILTRE VESTAL VS-FA13', 'filtre vestal vs-fa13', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 50000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FA13' OR "normalizedName" = 'filtre vestal vs-fa13'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-HU-13125-3X', NULL, 'FILTRE MANN HU 13125/3X', 'filtre mann hu 13125/3x', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 275000, 330000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-HU-13125-3X' OR "normalizedName" = 'filtre mann hu 13125/3x'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PF-4010', NULL, 'FILTRE GALAXY PF-4010', 'filtre galaxy pf-4010', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 140000, 190000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PF-4010' OR "normalizedName" = 'filtre galaxy pf-4010'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FA-2500', NULL, 'FILTRE ALSAFA FA-2500', 'filtre alsafa fa-2500', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 90000, 140000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FA-2500' OR "normalizedName" = 'filtre alsafa fa-2500'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FA-2505', NULL, 'FILTRE ALSAFA FA 2505', 'filtre alsafa fa 2505', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 110000, 150000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FA-2505' OR "normalizedName" = 'filtre alsafa fa 2505'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-NETTOYANT-RADIATEUR', NULL, 'ATQ GERMANY NETT RADIATEUR', 'atq germany nett radiateur', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 120000, 150000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-NETTOYANT-RADIATEUR' OR "normalizedName" = 'atq germany nett radiateur'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-MOUZIL-2L', NULL, 'GLACIOL MOUZIL 2L', 'glaciol mouzil 2l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 10000, 20000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-MOUZIL-2L' OR "normalizedName" = 'glaciol mouzil 2l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-CBS-45', NULL, 'BATTERIE CBS 45', 'batterie cbs 45', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 680000, 830000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-CBS-45' OR "normalizedName" = 'batterie cbs 45'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PLATINIUM-160', NULL, 'BATTERIE PLATINIUM 160', 'batterie platinium 160', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1850000, 2000000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PLATINIUM-160' OR "normalizedName" = 'batterie platinium 160'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-NORDWORK-120AH', NULL, 'BATTERIE NORDWORK 120AH', 'batterie nordwork 120ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1680000, 1830000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-NORDWORK-120AH' OR "normalizedName" = 'batterie nordwork 120ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TURBO-150AH', NULL, 'BATTERIE TURBO 150AH', 'batterie turbo 150ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1850000, 2000000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TURBO-150AH' OR "normalizedName" = 'batterie turbo 150ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-CBS-65', NULL, 'BATTERIE CBS 65', 'batterie cbs 65', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 840000, 990000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-CBS-65' OR "normalizedName" = 'batterie cbs 65'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-ASSAD-45', NULL, 'BATTERIE ASSAD 45', 'batterie assad 45', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 820000, 970000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-ASSAD-45' OR "normalizedName" = 'batterie assad 45'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FG10', NULL, 'FILTRE VESTAL VS-FG10', 'filtre vestal vs-fg10', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FG10' OR "normalizedName" = 'filtre vestal vs-fg10'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILRE-GFB-GF-0101-1N', NULL, 'FILRE GFB GF-0101/1N', 'filre gfb gf-0101/1n', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 65000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILRE-GFB-GF-0101-1N' OR "normalizedName" = 'filre gfb gf-0101/1n'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-RENAULT-165469466R', NULL, 'FILTRE RENAULT 165469466R', 'filtre renault 165469466r', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 65000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-RENAULT-165469466R' OR "normalizedName" = 'filtre renault 165469466r'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-TECNO-TWA9663', NULL, 'FILTRE TECNO TWA9663', 'filtre tecno twa9663', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 40000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-TECNO-TWA9663' OR "normalizedName" = 'filtre tecno twa9663'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FG36', NULL, 'FITRE VESTAL VS-FG36', 'fitre vestal vs-fg36', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 55000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FG36' OR "normalizedName" = 'fitre vestal vs-fg36'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FH25', NULL, 'FILTRE VESTAL VS-FH25', 'filtre vestal vs-fh25', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 50000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FH25' OR "normalizedName" = 'filtre vestal vs-fh25'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FA163', NULL, 'FILTRE VESTAL VS-FA163', 'filtre vestal vs-fa163', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 140000, 180000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FA163' OR "normalizedName" = 'filtre vestal vs-fa163'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FP-813', NULL, 'FITRE FP 813', 'fitre fp 813', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 45000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FP-813' OR "normalizedName" = 'fitre fp 813'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PETRO-BARAKA-SAE-40-5L', NULL, 'PETRO BARAKA SAE-40 5L', 'petro baraka sae-40 5l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 220000, 280000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PETRO-BARAKA-SAE-40-5L' OR "normalizedName" = 'petro baraka sae-40 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LINJETTE-JOY-GRAND', NULL, 'LINJETTE JOY GRAND', 'linjette joy grand', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 10500, 15000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LINJETTE-JOY-GRAND' OR "normalizedName" = 'linjette joy grand'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-1L-SONATRACH-15W40-TURBO', NULL, '1L SONATRACH 15W40 TURBO', '1l sonatrach 15w40 turbo', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 51500, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-1L-SONATRACH-15W40-TURBO' OR "normalizedName" = '1l sonatrach 15w40 turbo'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-AREKA-5W40-5L', NULL, 'AREKA 5W40 5L', 'areka 5w40 5l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 555000, 650000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-AREKA-5W40-5L' OR "normalizedName" = 'areka 5w40 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PETRO-BARAKA-5W40-GRIS-5L', NULL, 'PETRO BARAKA 5W40 GRIS 5L', 'petro baraka 5w40 gris 5l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 560000, 630000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PETRO-BARAKA-5W40-GRIS-5L' OR "normalizedName" = 'petro baraka 5w40 gris 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PROM-G12-2L', NULL, 'GLACIOL PROM G12 2L', 'glaciol prom g12 2l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 66000, 75000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PROM-G12-2L' OR "normalizedName" = 'glaciol prom g12 2l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-SOPRE-OIL', NULL, 'ATF SOPRE OIL', 'atf sopre oil', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 59000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-SOPRE-OIL' OR "normalizedName" = 'atf sopre oil'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GFB-GF-0520-1N', NULL, 'FILTRE GFB GF-0520/1N', 'filtre gfb gf-0520/1n', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 50000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GFB-GF-0520-1N' OR "normalizedName" = 'filtre gfb gf-0520/1n'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-REAL-STON-26325-52003', NULL, 'FILTRE REAL STON 26325-52003', 'filtre real ston 26325-52003', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 120000, 160000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-REAL-STON-26325-52003' OR "normalizedName" = 'filtre real ston 26325-52003'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FH69', NULL, 'FILTRE VESTAL VS-FH69', 'filtre vestal vs-fh69', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 70000, 140000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FH69' OR "normalizedName" = 'filtre vestal vs-fh69'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS', NULL, 'FILTRE VESTAL', 'filtre vestal', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 170000, 220000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS' OR "normalizedName" = 'filtre vestal'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FA-1543', NULL, 'FILTRE AL SAFA FA-1543', 'filtre al safa fa-1543', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 115000, 140000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FA-1543' OR "normalizedName" = 'filtre al safa fa-1543'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PETRO-BARAKA-SAE-40-20L', NULL, 'PETRO BARAKA SAE 40 20L', 'petro baraka sae 40 20l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 825000, 960000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PETRO-BARAKA-SAE-40-20L' OR "normalizedName" = 'petro baraka sae 40 20l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-K1', NULL, 'FILT', 'filt', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 120000, 180000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-K1' OR "normalizedName" = 'filt'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-NAFTILIA-SIRGHAZ-10W40-1L', NULL, 'NAFTILIA SIRGHAZ 10W40 1L', 'naftilia sirghaz 10w40 1l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 105000, 130000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-NAFTILIA-SIRGHAZ-10W40-1L' OR "normalizedName" = 'naftilia sirghaz 10w40 1l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FG14', NULL, 'FILTRE VESTAL VS-FG14', 'filtre vestal vs-fg14', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 35000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FG14' OR "normalizedName" = 'filtre vestal vs-fg14'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-0-5L-LIQUI-MOLLY-5W30', NULL, '0.5l LIQUI MOLLY 5W30', '0.5l liqui molly 5w30', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 83000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-0-5L-LIQUI-MOLLY-5W30' OR "normalizedName" = '0.5l liqui molly 5w30'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-0-5L-CASTROL-RENAULT-10W40', NULL, '0.5L CASTROL RENAULT 10W40', '0.5l castrol renault 10w40', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 59000, 66000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-0-5L-CASTROL-RENAULT-10W40' OR "normalizedName" = '0.5l castrol renault 10w40'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-0-5L-CHELIA-TURBO-15W40', NULL, '0.5L CHELIA TURBO 15W40', '0.5l chelia turbo 15w40', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 26000, 32000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-0-5L-CHELIA-TURBO-15W40' OR "normalizedName" = '0.5l chelia turbo 15w40'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BALILIER-SWIGLAEES-NORMALE', NULL, 'BALILIER SWIGLAEES NORMALE', 'balilier swiglaees normale', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 14200, 25000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BALILIER-SWIGLAEES-NORMALE' OR "normalizedName" = 'balilier swiglaees normale'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-HOUSSE-ILASTIQUE-5P', NULL, 'HOUSSE ILASTIQUE 5P', 'housse ilastique 5p', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 190000, 260000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-HOUSSE-ILASTIQUE-5P' OR "normalizedName" = 'housse ilastique 5p'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-HOUSSE-ILASTIQUE-2P', NULL, 'HOUSSE ILASTIQUE 2P', 'housse ilastique 2p', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 110000, 150000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-HOUSSE-ILASTIQUE-2P' OR "normalizedName" = 'housse ilastique 2p'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-ABRO-EPOXY', NULL, 'ABRO EPOXY', 'abro epoxy', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 48000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-ABRO-EPOXY' OR "normalizedName" = 'abro epoxy'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PA2019', NULL, 'FILTRE A AIR PA2019', 'filtre a air pa2019', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 400000, 500000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PA2019' OR "normalizedName" = 'filtre a air pa2019'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FP848', NULL, 'FILTRE A AIR FP848', 'filtre a air fp848', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 55000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FP848' OR "normalizedName" = 'filtre a air fp848'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GFB-55268036', NULL, 'FILTRE A AIR GFB55268036', 'filtre a air gfb55268036', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 140000, 170000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GFB-55268036' OR "normalizedName" = 'filtre a air gfb55268036'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-3197344001-00', NULL, 'FILTRE HUNDAI 3197344001', 'filtre hundai 3197344001', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 85000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-3197344001-00' OR "normalizedName" = 'filtre hundai 3197344001'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FH10', NULL, 'FILTRE VESTAL VS-FH10', 'filtre vestal vs-fh10', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 40000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FH10' OR "normalizedName" = 'filtre vestal vs-fh10'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FH48', NULL, 'FILTRE VESTAL VS-FH48', 'filtre vestal vs-fh48', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 85000, 110000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FH48' OR "normalizedName" = 'filtre vestal vs-fh48'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FH41', NULL, 'FILTRE VESTAL VS-FH41', 'filtre vestal vs-fh41', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 55000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FH41' OR "normalizedName" = 'filtre vestal vs-fh41'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FH11', NULL, 'FILTRE VESTAL VS-FH11', 'filtre vestal vs-fh11', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 65000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FH11' OR "normalizedName" = 'filtre vestal vs-fh11'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PATE-A-JOINT', NULL, 'PATE A JOINT', 'pate a joint', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 5900, 15000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PATE-A-JOINT' OR "normalizedName" = 'pate a joint'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-DISPERSENT-DEAU', NULL, 'DISPERSANT DEAU', 'dispersant deau', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 75000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-DISPERSENT-DEAU' OR "normalizedName" = 'dispersant deau'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GLACIOL-PETRO-BARAKA-5L', NULL, 'GLACIOL PETRO BARAKA 5L', 'glaciol petro baraka 5l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 62000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GLACIOL-PETRO-BARAKA-5L' OR "normalizedName" = 'glaciol petro baraka 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PETRO-BARAKA-15W40-5L', NULL, 'PETRO BARAKA 15W40 5L', 'petro baraka 15w40 5l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 240000, 320000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PETRO-BARAKA-15W40-5L' OR "normalizedName" = 'petro baraka 15w40 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PETRO-BARAKA-10W40-5L', NULL, 'PETRO BARAKA 10W40 5L', 'petro baraka 10w40 5l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 450000, 510000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PETRO-BARAKA-10W40-5L' OR "normalizedName" = 'petro baraka 10w40 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BARAKA-5W40', NULL, 'PETRO BARAKA 5W40', 'petro baraka 5w40', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 390000, 520000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BARAKA-5W40' OR "normalizedName" = 'petro baraka 5w40'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GLACIOL-BARAKA-2L', NULL, 'GLACIOL BARAKA 02L', 'glaciol baraka 02l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 32000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GLACIOL-BARAKA-2L' OR "normalizedName" = 'glaciol baraka 02l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-YACCO-10W40-4L', NULL, 'YACCO 10W40 4L', 'yacco 10w40 4l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 520000, 600000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-YACCO-10W40-4L' OR "normalizedName" = 'yacco 10w40 4l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-YUKO-10W40-1L', NULL, 'YUKO 10W40 1L', 'yuko 10w40 1l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 110000, 140000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-YUKO-10W40-1L' OR "normalizedName" = 'yuko 10w40 1l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-NADT-AUTO', NULL, 'NAFT AUTO', 'naft auto', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 31250, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-NADT-AUTO' OR "normalizedName" = 'naft auto'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FAL-015', NULL, 'FILTRE FAL 015', 'filtre fal 015', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 65000, 100000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FAL-015' OR "normalizedName" = 'filtre fal 015'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FH09', NULL, 'FILTRE VESTAL VS-FH09', 'filtre vestal vs-fh09', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 30000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FH09' OR "normalizedName" = 'filtre vestal vs-fh09'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-CASTROL-0W30-5L', NULL, 'CASTROL 0W30 5L', 'castrol 0w30 5l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 1800000, 1950000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-CASTROL-0W30-5L' OR "normalizedName" = 'castrol 0w30 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LUXOIL-MOTO-SUPER-4T-10W40', NULL, 'LUXOIL MOTO SUPER 4T 10W40', 'luxoil moto super 4t 10w40', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 95000, 130000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LUXOIL-MOTO-SUPER-4T-10W40' OR "normalizedName" = 'luxoil moto super 4t 10w40'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PETROSEB-SAE40-20L', NULL, 'PETROSEB SAE40 20L', 'petroseb sae40 20l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 680000, 760000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PETROSEB-SAE40-20L' OR "normalizedName" = 'petroseb sae40 20l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-SOPRE-OIL-EP90-1L', NULL, 'SOPRE OIL EP90 1L', 'sopre oil ep90 1l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 41000, 65000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-SOPRE-OIL-EP90-1L' OR "normalizedName" = 'sopre oil ep90 1l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-SOPRE-OIL-10W40', NULL, 'SOPRE OIL 10W40 5L', 'sopre oil 10w40 5l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 320000, 400000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-SOPRE-OIL-10W40' OR "normalizedName" = 'sopre oil 10w40 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-17801-64010', NULL, 'FILTRE ELEMFIL17801-64010', 'filtre elemfil17801-64010', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 55000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-17801-64010' OR "normalizedName" = 'filtre elemfil17801-64010'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-CASTROL-10W40-1L', NULL, 'CASTROL GTX 10W40 1L', 'castrol gtx 10w40 1l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 130000, 150000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-CASTROL-10W40-1L' OR "normalizedName" = 'castrol gtx 10w40 1l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FORCE-XPRESS', NULL, 'FORCE XPRESS', 'force xpress', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 17500, 25000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FORCE-XPRESS' OR "normalizedName" = 'force xpress'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GALAXY-50AH', NULL, 'BATTERIE GALAXY 50AH', 'batterie galaxy 50ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 960000, 1110000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GALAXY-50AH' OR "normalizedName" = 'batterie galaxy 50ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-HINO-15607-1733', NULL, 'FILTRE HINO 15607-1733', 'filtre hino 15607-1733', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 120000, 180000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-HINO-15607-1733' OR "normalizedName" = 'filtre hino 15607-1733'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FH38', NULL, 'FILTRE VESTAL VS-FH38', 'filtre vestal vs-fh38', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 35000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FH38' OR "normalizedName" = 'filtre vestal vs-fh38'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FH08', NULL, 'FILTRE VESTAL VS-FH08', 'filtre vestal vs-fh08', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FH08' OR "normalizedName" = 'filtre vestal vs-fh08'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FH72', NULL, 'FILTRE VESTAL VS-FH72', 'filtre vestal vs-fh72', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 100000, 130000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FH72' OR "normalizedName" = 'filtre vestal vs-fh72'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-DL1000', NULL, 'FILTRE DIAMAX DL1000', 'filtre diamax dl1000', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-DL1000' OR "normalizedName" = 'filtre diamax dl1000'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-ARTICLE-2', NULL, 'POINGET SPARK', 'poinget spark', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 55000, 55000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-ARTICLE-2' OR "normalizedName" = 'poinget spark'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FOTON-2027', NULL, 'FILTRE FOTON 2027', 'filtre foton 2027', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 150000, 190000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FOTON-2027' OR "normalizedName" = 'filtre foton 2027'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-WYNNS-SUPER-CHARGE', NULL, 'WYNNS SUPER CHARGE', 'wynns super charge', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 65000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-WYNNS-SUPER-CHARGE' OR "normalizedName" = 'wynns super charge'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-WYYNS-AVANT-VIDANGE', NULL, 'WYNNS AVANT VIDANGE', 'wynns avant vidange', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 70000, 95000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-WYYNS-AVANT-VIDANGE' OR "normalizedName" = 'wynns avant vidange'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-ELF-ALG-15W40', NULL, 'ELF ALG 15W40', 'elf alg 15w40', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 330000, 400000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-ELF-ALG-15W40' OR "normalizedName" = 'elf alg 15w40'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GM-10W40', NULL, 'GENUINE 10W40 5L', 'genuine 10w40 5l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 450000, 520000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GM-10W40' OR "normalizedName" = 'genuine 10w40 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-CACHE-VOLON-XL', NULL, 'CACHE VOLON XL', 'cache volon xl', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 60000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-CACHE-VOLON-XL' OR "normalizedName" = 'cache volon xl'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-SWIGLASSE-METALIQUE-20-22', NULL, 'SWIGLASSE METALIQUE 20.22', 'swiglasse metalique 20.22', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 15682, 30000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-SWIGLASSE-METALIQUE-20-22' OR "normalizedName" = 'swiglasse metalique 20.22'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILLS-DATACHE-MOYEN', NULL, 'FILLS DATACHS MOYEN', 'fills datachs moyen', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 350, 1000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILLS-DATACHE-MOYEN' OR "normalizedName" = 'fills datachs moyen'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILLS-DATACHS-GM', NULL, 'FILLS DATACHS GM', 'fills datachs gm', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 750, 2000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILLS-DATACHS-GM' OR "normalizedName" = 'fills datachs gm'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FUSIBLE-MIGANNE', NULL, 'FUSIBLE MIGANNE', 'fusible miganne', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 50000, 100000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FUSIBLE-MIGANNE' OR "normalizedName" = 'fusible miganne'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-AB', NULL, 'X-DELIGHT AB', 'x-delight ab', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 8500, 25000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-AB' OR "normalizedName" = 'x-delight ab'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-KRIK-50T', NULL, 'KRIK 50T', 'krik 50t', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 1290000, 1460000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-KRIK-50T' OR "normalizedName" = 'krik 50t'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-KRIK-20T', NULL, 'KRIK 20T', 'krik 20t', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 500000, 620000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-KRIK-20T' OR "normalizedName" = 'krik 20t'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-KRIK-16T', NULL, 'KRIK 16T', 'krik 16t', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 450000, 560000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-KRIK-16T' OR "normalizedName" = 'krik 16t'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-KRIK-5T', NULL, 'KRIK 5T DJL', 'krik 5t djl', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 210000, 290000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-KRIK-5T' OR "normalizedName" = 'krik 5t djl'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-2637-JX', NULL, 'FILTRE AL SAFA 2637 JX.', 'filtre al safa 2637 jx.', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 450000, 530000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-2637-JX' OR "normalizedName" = 'filtre al safa 2637 jx.'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-15208-W1116', NULL, 'FILTRE HUGO 15208-W1116', 'filtre hugo 15208-w1116', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 48000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-15208-W1116' OR "normalizedName" = 'filtre hugo 15208-w1116'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-SHN-8-94391049-2', NULL, 'FILTRE SHN 8-94391049-2.', 'filtre shn 8-94391049-2.', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 150000, 220000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-SHN-8-94391049-2' OR "normalizedName" = 'filtre shn 8-94391049-2.'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FG49', NULL, 'FILTRE VESTAL VS-FG49.', 'filtre vestal vs-fg49.', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 70000, 110000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FG49' OR "normalizedName" = 'filtre vestal vs-fg49.'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GFB-31973-44001', NULL, 'FILTRE GFB 31973-44001', 'filtre gfb 31973-44001', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 65000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GFB-31973-44001' OR "normalizedName" = 'filtre gfb 31973-44001'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-SHN-8200431051', NULL, 'FILTRE SHN 8200431051', 'filtre shn 8200431051', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-SHN-8200431051' OR "normalizedName" = 'filtre shn 8200431051'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-2-00', NULL, 'FILTR', 'filtr', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 500000, 550000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-2-00' OR "normalizedName" = 'filtr'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LAMPE-KLAXCAR-2P-24V', NULL, 'LAMPE KLAXCAR 2P 24V', 'lampe klaxcar 2p 24v', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 11000, 15000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LAMPE-KLAXCAR-2P-24V' OR "normalizedName" = 'lampe klaxcar 2p 24v'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LAMPE-KLAXCAR-1P-24V', NULL, 'LAMPE KLAXCAR 1P 24V', 'lampe klaxcar 1p 24v', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 11000, 15000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LAMPE-KLAXCAR-1P-24V' OR "normalizedName" = 'lampe klaxcar 1p 24v'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LAMPE-LAXCAR-H3-24V', NULL, 'LAMPE KLAXCAR H3 24V', 'lampe klaxcar h3 24v', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 24000, 40000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LAMPE-LAXCAR-H3-24V' OR "normalizedName" = 'lampe klaxcar h3 24v'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-POLANEZA', NULL, 'PURFIN POLANEZA', 'purfin polaneza', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 25000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-POLANEZA' OR "normalizedName" = 'purfin polaneza'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-CARTY', NULL, 'CARTY RED FORCE', 'carty red force', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 18000, 35000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-CARTY' OR "normalizedName" = 'carty red force'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VARTA-63', NULL, 'BATTERIE VARTA 63', 'batterie varta 63', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1350000, 1500000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VARTA-63' OR "normalizedName" = 'batterie varta 63'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FG60', NULL, 'FILTRE VESTAL VS-FG60', 'filtre vestal vs-fg60', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 135000, 180000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FG60' OR "normalizedName" = 'filtre vestal vs-fg60'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-OBS-149', NULL, 'FILTRE AL SAFA OBS-149', 'filtre al safa obs-149', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 36000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-OBS-149' OR "normalizedName" = 'filtre al safa obs-149'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FH45', NULL, 'FILTRE VESTAL VS-FH45', 'filtre vestal vs-fh45', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 55000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FH45' OR "normalizedName" = 'filtre vestal vs-fh45'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-28130-5H000', NULL, 'FILTRE VESTAL 28130-5H000', 'filtre vestal 28130-5h000', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 120000, 180000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-28130-5H000' OR "normalizedName" = 'filtre vestal 28130-5h000'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-3197344001-00-2', NULL, 'FILTRE SPACEFIL 31973 44001', 'filtre spacefil 31973 44001', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 55000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-3197344001-00-2' OR "normalizedName" = 'filtre spacefil 31973 44001'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-0-5L-NAFTILIA-VPS', NULL, '0.5l NAFTILIA VPS', '0.5l naftilia vps', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 22500, 29500, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-0-5L-NAFTILIA-VPS' OR "normalizedName" = '0.5l naftilia vps'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LIQUI-MOLLY-GRISE-10W40-5L', NULL, 'LIQUI MOLLY GRISE 10W40 5L', 'liqui molly grise 10w40 5l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 660000, 760000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LIQUI-MOLLY-GRISE-10W40-5L' OR "normalizedName" = 'liqui molly grise 10w40 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LIQUI-MOLLY-5W40', NULL, 'LIQUI MOLLY HIGH TECH 5W40', 'liqui molly high tech 5w40', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 930000, 1000000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LIQUI-MOLLY-5W40' OR "normalizedName" = 'liqui molly high tech 5w40'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FH56', NULL, 'FILTRE VESTAL VS-FH56', 'filtre vestal vs-fh56', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 35000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FH56' OR "normalizedName" = 'filtre vestal vs-fh56'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-0-5L-CASTROL-15W40', NULL, '0.5l castrol 15w40', '0.5l castrol 15w40', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 54000, 61000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-0-5L-CASTROL-15W40' OR "normalizedName" = '0.5l castrol 15w40'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FH88', NULL, 'FILTRE VESTAL VS-FH88', 'filtre vestal vs-fh88', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 120000, 160000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FH88' OR "normalizedName" = 'filtre vestal vs-fh88'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-23390-0L010', NULL, 'FILTRE ELEMENT 23390-0L010', 'filtre element 23390-0l010', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 60000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-23390-0L010' OR "normalizedName" = 'filtre element 23390-0l010'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FAP-5020', NULL, 'FILTRE AL SAFA FAP-5020', 'filtre al safa fap-5020', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 150000, 180000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FAP-5020' OR "normalizedName" = 'filtre al safa fap-5020'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FOTON-2841', NULL, 'FILTRE FOTON 2841', 'filtre foton 2841', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 395000, 500000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FOTON-2841' OR "normalizedName" = 'filtre foton 2841'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FA-2508', NULL, 'FILTRE AL SAFA FA-2508', 'filtre al safa fa-2508', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 240000, 290000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FA-2508' OR "normalizedName" = 'filtre al safa fa-2508'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-EH6265S', NULL, 'FILTRE HAOGO EH6265S', 'filtre haogo eh6265s', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 70000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-EH6265S' OR "normalizedName" = 'filtre haogo eh6265s'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FA37', NULL, 'FILTRE VESTAL VS-FA37', 'filtre vestal vs-fa37', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 50000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FA37' OR "normalizedName" = 'filtre vestal vs-fa37'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-A29', NULL, 'FILTRE VESTAL VS-A29', 'filtre vestal vs-a29', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 60000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-A29' OR "normalizedName" = 'filtre vestal vs-a29'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FA222', NULL, 'FILTRE VESTAL VS-FA222', 'filtre vestal vs-fa222', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 50000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FA222' OR "normalizedName" = 'filtre vestal vs-fa222'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-28113-2B000', NULL, 'FILTRE 28113-2B000', 'filtre 28113-2b000', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 50000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-28113-2B000' OR "normalizedName" = 'filtre 28113-2b000'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FA146', NULL, 'FILTRE VESTAL VS-FA146', 'filtre vestal vs-fa146', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 50000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FA146' OR "normalizedName" = 'filtre vestal vs-fa146'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-28113-0X000', NULL, 'FILTRE ROXER 28113-0X000', 'filtre roxer 28113-0x000', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 50000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-28113-0X000' OR "normalizedName" = 'filtre roxer 28113-0x000'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-28113-C7000', NULL, 'FILTRE REAL STON 28113-C7000', 'filtre real ston 28113-c7000', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 60000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-28113-C7000' OR "normalizedName" = 'filtre real ston 28113-c7000'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-2811302510-00', NULL, 'FILTRE HYUNDAI 28113 02510', 'filtre hyundai 28113 02510', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 50000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-2811302510-00' OR "normalizedName" = 'filtre hyundai 28113 02510'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-T-WL7107', NULL, 'FILTRE TECNO T-W7107', 'filtre tecno t-w7107', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 25000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-T-WL7107' OR "normalizedName" = 'filtre tecno t-w7107'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-HF-1235-R', NULL, 'FILTRE ONFIL HF 1235 R', 'filtre onfil hf 1235 r', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 850000, 950000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-HF-1235-R' OR "normalizedName" = 'filtre onfil hf 1235 r'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-FA-281', NULL, 'FILTRE FA 281', 'filtre fa 281', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 75000, 110000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-FA-281' OR "normalizedName" = 'filtre fa 281'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-ON-103-5-KIT', NULL, 'FILTRE ONFIL ON 103-5 KIT', 'filtre onfil on 103-5 kit', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 900000, 1100000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-ON-103-5-KIT' OR "normalizedName" = 'filtre onfil on 103-5 kit'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FH-03', NULL, 'FILTRE INCI FH-03', 'filtre inci fh-03', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 50000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FH-03' OR "normalizedName" = 'filtre inci fh-03'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FA160', NULL, 'FILTRE VESTAL VS-FA160', 'filtre vestal vs-fa160', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 150000, 190000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FA160' OR "normalizedName" = 'filtre vestal vs-fa160'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FA-60', NULL, 'FILTRE VESTAL FA-60', 'filtre vestal fa-60', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 40000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FA-60' OR "normalizedName" = 'filtre vestal fa-60'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-NEX-SAE-40-1L', NULL, 'NEX SAE 40 1L', 'nex sae 40 1l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 34000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-NEX-SAE-40-1L' OR "normalizedName" = 'nex sae 40 1l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-SHELL-5W40', NULL, 'SHELL 5W40', 'shell 5w40', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 590000, 660000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-SHELL-5W40' OR "normalizedName" = 'shell 5w40'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-AUTOMOTIVE-G12-2L', NULL, 'GLACIOL AUTOMOTIVE G12 2L', 'glaciol automotive g12 2l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 40000, 55000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-AUTOMOTIVE-G12-2L' OR "normalizedName" = 'glaciol automotive g12 2l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-AUTOMOTIVE-G12-5L', NULL, 'GLACIOL AUTOMOTIVE G12 5L', 'glaciol automotive g12 5l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 98000, 130000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-AUTOMOTIVE-G12-5L' OR "normalizedName" = 'glaciol automotive g12 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-1181749-00', NULL, 'FILTRE TECNO 1181749', 'filtre tecno 1181749', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 55000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-1181749-00' OR "normalizedName" = 'filtre tecno 1181749'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FG18', NULL, 'FILTRE VESTAL VS-FG18', 'filtre vestal vs-fg18', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 65000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FG18' OR "normalizedName" = 'filtre vestal vs-fg18'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-1160234-00', NULL, 'FILTRE TECNO 1160234', 'filtre tecno 1160234', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 35000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-1160234-00' OR "normalizedName" = 'filtre tecno 1160234'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-0-5L-ELF-15W40-ALG', NULL, '0.5L ELF 15W40 alg', '0.5l elf 15w40 alg', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 31000, 39000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-0-5L-ELF-15W40-ALG' OR "normalizedName" = '0.5l elf 15w40 alg'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-SHELL-10W40-5L', NULL, 'SHELL 10W40 5L', 'shell 10w40 5l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 410000, 490000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-SHELL-10W40-5L' OR "normalizedName" = 'shell 10w40 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GB7825', NULL, 'FILTRE DFM GB7825', 'filtre dfm gb7825', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 30000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GB7825' OR "normalizedName" = 'filtre dfm gb7825'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VSOLLL', NULL, 'FILTRE HHHH', 'filtre hhhh', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 50000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VSOLLL' OR "normalizedName" = 'filtre hhhh'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-ESS-DFM', NULL, 'FILTRE ESS DFM', 'filtre ess dfm', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 35000, 65000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-ESS-DFM' OR "normalizedName" = 'filtre ess dfm'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-CARSMAXS-FAW', NULL, 'FILTRE CARSMAXS FAW', 'filtre carsmaxs faw', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 40000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-CARSMAXS-FAW' OR "normalizedName" = 'filtre carsmaxs faw'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-ORXA0064', NULL, 'FILTRE ORYX ORXA0064', 'filtre oryx orxa0064', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 120000, 170000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-ORXA0064' OR "normalizedName" = 'filtre oryx orxa0064'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FA50', NULL, 'FILTRE OTOFIL FA50', 'filtre otofil fa50', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 55000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FA50' OR "normalizedName" = 'filtre otofil fa50'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FF3069', NULL, 'FILTRE FILMAX FF3069', 'filtre filmax ff3069', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 220000, 270000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FF3069' OR "normalizedName" = 'filtre filmax ff3069'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FF3071', NULL, 'FILTRE FILMAX FF3071', 'filtre filmax ff3071', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 240000, 290000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FF3071' OR "normalizedName" = 'filtre filmax ff3071'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-COSS-BOUSFOUR', NULL, 'COSS BOUSFOUR', 'coss bousfour', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 18000, 30000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-COSS-BOUSFOUR' OR "normalizedName" = 'coss bousfour'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-ESS', NULL, 'FILTRE ESS', 'filtre ess', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 7000, 15000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-ESS' OR "normalizedName" = 'filtre ess'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FA95', NULL, 'FILTRE VESTAL VS-FA95', 'filtre vestal vs-fa95', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 60000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FA95' OR "normalizedName" = 'filtre vestal vs-fa95'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FH35', NULL, 'FILTRE VESTAL VS-FH35', 'filtre vestal vs-fh35', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 105000, 150000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FH35' OR "normalizedName" = 'filtre vestal vs-fh35'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FH-05', NULL, 'FILTRE INCI FH-05', 'filtre inci fh-05', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FH-05' OR "normalizedName" = 'filtre inci fh-05'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-0K6B023603', NULL, 'FILTRE LARRGOS 0K6B023603', 'filtre larrgos 0k6b023603', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 110000, 150000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-0K6B023603' OR "normalizedName" = 'filtre larrgos 0k6b023603'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FA100', NULL, 'FILTRE VESTAL VS-FA100', 'filtre vestal vs-fa100', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 140000, 180000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FA100' OR "normalizedName" = 'filtre vestal vs-fa100'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-8200257642-00-2', NULL, 'FILTRE RENAULT GROUOP 8200257642', 'filtre renault grouop 8200257642', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 80000, 110000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-8200257642-00-2' OR "normalizedName" = 'filtre renault grouop 8200257642'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-8200768913-00-2', NULL, 'FILTRE RENAULT GROUP 8200768', 'filtre renault group 8200768', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 50000, 65000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-8200768913-00-2' OR "normalizedName" = 'filtre renault group 8200768'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-7400-20L', NULL, 'TOTAL 15W40 7400 20L', 'total 15w40 7400 20l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 1380000, 1450000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-7400-20L' OR "normalizedName" = 'total 15w40 7400 20l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-G13-TOTAL', NULL, 'GLACIOL G13 TOTAL', 'glaciol g13 total', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 185000, 230000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-G13-TOTAL' OR "normalizedName" = 'glaciol g13 total'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-STOP-FUIT-RADIATEUR-2', NULL, 'WYNNS STOP FUIT RADIATEUR', 'wynns stop fuit radiateur', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 47000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-STOP-FUIT-RADIATEUR-2' OR "normalizedName" = 'wynns stop fuit radiateur'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-CATALYTIC-SYST-EM-CLEANER', NULL, 'LIQUI MOLY CATALYTIC-SYSTEM CLEANER', 'liqui moly catalytic-system cleaner', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 120000, 150000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-CATALYTIC-SYST-EM-CLEANER' OR "normalizedName" = 'liqui moly catalytic-system cleaner'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-MOTUL-10W40', NULL, 'MOTUL 10W40', 'motul 10w40', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 120000, 160000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-MOTUL-10W40' OR "normalizedName" = 'motul 10w40'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VALEO-DOT3', NULL, 'VALEO DOT3', 'valeo dot3', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 52000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VALEO-DOT3' OR "normalizedName" = 'valeo dot3'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VALEO-DOT4', NULL, 'VALEO DOT4', 'valeo dot4', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 57000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VALEO-DOT4' OR "normalizedName" = 'valeo dot4'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-OCTAN-10', NULL, 'WYNNS OCTAN 10', 'wynns octan 10', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 95000, 110000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-OCTAN-10' OR "normalizedName" = 'wynns octan 10'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VARTA-70', NULL, 'BATTERIE VARTA 70', 'batterie varta 70', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1380000, 1530000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VARTA-70' OR "normalizedName" = 'batterie varta 70'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VARTA-52', NULL, 'BATTERIE VARTA 52', 'batterie varta 52', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1080000, 1230000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VARTA-52' OR "normalizedName" = 'batterie varta 52'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VARTA-45', NULL, 'BATTERIE VARTA 45', 'batterie varta 45', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1030000, 1180000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VARTA-45' OR "normalizedName" = 'batterie varta 45'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FORZA-80', NULL, 'BATTERIE FORZA 80', 'batterie forza 80', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1200000, 1350000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FORZA-80' OR "normalizedName" = 'batterie forza 80'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FORZA-85', NULL, 'BATTERIE FORZA 85', 'batterie forza 85', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1200000, 1350000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FORZA-85' OR "normalizedName" = 'batterie forza 85'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FORZA-77', NULL, 'BATTERIE FORZA 77', 'batterie forza 77', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1150000, 1300000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FORZA-77' OR "normalizedName" = 'batterie forza 77'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FORZA-74', NULL, 'BATTERIE FORZA 74', 'batterie forza 74', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1080000, 1230000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FORZA-74' OR "normalizedName" = 'batterie forza 74'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FORZA-160', NULL, 'BATTERIE FORZA 160', 'batterie forza 160', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1915000, 2065000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FORZA-160' OR "normalizedName" = 'batterie forza 160'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FORZA-120', NULL, 'BATTERIE FORZA 120', 'batterie forza 120', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1490000, 1640000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FORZA-120' OR "normalizedName" = 'batterie forza 120'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FA-259', NULL, 'FILTRE VESTAL FA-259', 'filtre vestal fa-259', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 35000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FA-259' OR "normalizedName" = 'filtre vestal fa-259'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FA92', NULL, 'FILTRE VESTAL VS-FA92', 'filtre vestal vs-fa92', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 165000, 220000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FA92' OR "normalizedName" = 'filtre vestal vs-fa92'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-1109-AY-2', NULL, 'FILTRE CITROEN', 'filtre citroen', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-1109-AY-2' OR "normalizedName" = 'filtre citroen'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FH-11', NULL, 'FILTRE INCI FH-11', 'filtre inci fh-11', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 35000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FH-11' OR "normalizedName" = 'filtre inci fh-11'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-AP134-8', NULL, 'FILTRE FILTRON AP134/8', 'filtre filtron ap134/8', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 65000, 110000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-AP134-8' OR "normalizedName" = 'filtre filtron ap134/8'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FA-2545JX', NULL, 'FILTRE FA-2545JX', 'filtre fa-2545jx', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 355000, 450000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FA-2545JX' OR "normalizedName" = 'filtre fa-2545jx'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-28130-5H002', NULL, 'FILTRE ELEMENT 28130 5H002', 'filtre element 28130 5h002', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 160000, 220000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-28130-5H002' OR "normalizedName" = 'filtre element 28130 5h002'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BLIKEZ-2L', NULL, 'GLACIOL BLIKEZ 2L', 'glaciol blikez 2l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 12000, 20000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BLIKEZ-2L' OR "normalizedName" = 'glaciol blikez 2l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FA147-2', NULL, 'FILTRE VESTAL VS-FA147', 'filtre vestal vs-fa147', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 95000, 120000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FA147-2' OR "normalizedName" = 'filtre vestal vs-fa147'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FH15', NULL, 'FILTRE VESTAL VS-FH15', 'filtre vestal vs-fh15', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 57000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FH15' OR "normalizedName" = 'filtre vestal vs-fh15'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FA-2507', NULL, 'FILTRE AL SAFA FA-2507', 'filtre al safa fa-2507', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 115000, 150000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FA-2507' OR "normalizedName" = 'filtre al safa fa-2507'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FA205', NULL, 'FILTRE VESTAL VS-FA205', 'filtre vestal vs-fa205', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FA205' OR "normalizedName" = 'filtre vestal vs-fa205'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-5001865404-00', NULL, 'FILTRE RENAULT TRUCK 5001865404', 'filtre renault truck 5001865404', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 350000, 450000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-5001865404-00' OR "normalizedName" = 'filtre renault truck 5001865404'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-K2025', NULL, 'FILTRE VESTAL K2025', 'filtre vestal k2025', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 145000, 180000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-K2025' OR "normalizedName" = 'filtre vestal k2025'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BF1-8970622940', NULL, 'FILTRE BF1 8970622940', 'filtre bf1 8970622940', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 140000, 220000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BF1-8970622940' OR "normalizedName" = 'filtre bf1 8970622940'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FH34', NULL, 'FILTRE VESTAL VS-FH34', 'filtre vestal vs-fh34', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 55000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FH34' OR "normalizedName" = 'filtre vestal vs-fh34'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FA238', NULL, 'FILTRE VESTAL VS-FA238', 'filtre vestal vs-fa238', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 130000, 170000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FA238' OR "normalizedName" = 'filtre vestal vs-fa238'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FA-284', NULL, 'FILTRE FA 284', 'filtre fa 284', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 85000, 120000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FA-284' OR "normalizedName" = 'filtre fa 284'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FH19', NULL, 'FILTRE VESTAL VS-FH19', 'filtre vestal vs-fh19', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 30000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FH19' OR "normalizedName" = 'filtre vestal vs-fh19'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-AUTOMOTIVEG-BLK-5L', NULL, 'GLACIOL AUTOMOTIVE BLK 5L', 'glaciol automotive blk 5l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 54000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-AUTOMOTIVEG-BLK-5L' OR "normalizedName" = 'glaciol automotive blk 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-1L-HMD-40-NAFTAL', NULL, '1L HMD 40 NAFTAL', '1l hmd 40 naftal', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 33000, 42000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-1L-HMD-40-NAFTAL' OR "normalizedName" = '1l hmd 40 naftal'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GRAISSE-PETROMIN-0-5KG', NULL, 'GRAISSE PETROMIN 0.5KG', 'graisse petromin 0.5kg', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 53000, 65000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GRAISSE-PETROMIN-0-5KG' OR "normalizedName" = 'graisse petromin 0.5kg'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-ASSIA-0-5-KG', NULL, 'GRAISSE ASSIA 0.5 KG', 'graisse assia 0.5 kg', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 48000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-ASSIA-0-5-KG' OR "normalizedName" = 'graisse assia 0.5 kg'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-SOPRE-OIL-10W40-1L', NULL, 'SOPRE-OIL 10W40 1L', 'sopre-oil 10w40 1l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 73000, 95000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-SOPRE-OIL-10W40-1L' OR "normalizedName" = 'sopre-oil 10w40 1l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-OLIDEX-90-1L', NULL, 'OLIDEX 90 1L', 'olidex 90 1l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 30000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-OLIDEX-90-1L' OR "normalizedName" = 'olidex 90 1l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-612600081335-0-0', NULL, 'FILTRE WEICHAI 612600081335', 'filtre weichai 612600081335', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 210000, 270000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-612600081335-0-0' OR "normalizedName" = 'filtre weichai 612600081335'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FH43', NULL, 'FILTRE VESTAL VS-FH43', 'filtre vestal vs-fh43', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FH43' OR "normalizedName" = 'filtre vestal vs-fh43'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FA136', NULL, 'FILTRE VESTAL VS-FA136', 'filtre vestal vs-fa136', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 115000, 160000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FA136' OR "normalizedName" = 'filtre vestal vs-fa136'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-17801-0C010', NULL, 'FILTRE OEM 17801-0C010', 'filtre oem 17801-0c010', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 120000, 180000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-17801-0C010' OR "normalizedName" = 'filtre oem 17801-0c010'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-MIO-BEBE', NULL, 'LINJETTE MIO BEBE', 'linjette mio bebe', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 12500, 20000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-MIO-BEBE' OR "normalizedName" = 'linjette mio bebe'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PA-2045', NULL, 'FILTRE GALAXY PA-2045', 'filtre galaxy pa-2045', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 210000, 260000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PA-2045' OR "normalizedName" = 'filtre galaxy pa-2045'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-ELEMFIL-DOJ008A', NULL, 'FILTRE ELEMFIL DOJ008A', 'filtre elemfil doj008a', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 65000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-ELEMFIL-DOJ008A' OR "normalizedName" = 'filtre elemfil doj008a'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-INCI-FA-13', NULL, 'FILTRE INCI FA-13', 'filtre inci fa-13', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 110000, 140000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-INCI-FA-13' OR "normalizedName" = 'filtre inci fa-13'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FA-2555-JX', NULL, 'FILTRE ALSAFA2555 JX', 'filtre alsafa2555 jx', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 465000, 570000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FA-2555-JX' OR "normalizedName" = 'filtre alsafa2555 jx'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-INCI-NC-FA25', NULL, 'FILTRE INCI NC-FA25', 'filtre inci nc-fa25', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 55000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-INCI-NC-FA25' OR "normalizedName" = 'filtre inci nc-fa25'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FA201', NULL, 'FILTRE EL MASSAFI VS-FA201', 'filtre el massafi vs-fa201', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 55000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FA201' OR "normalizedName" = 'filtre el massafi vs-fa201'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-OTOFIL-FA-32', NULL, 'FILTRE OTOFIL FA-32', 'filtre otofil fa-32', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 75000, 110000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-OTOFIL-FA-32' OR "normalizedName" = 'filtre otofil fa-32'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-INCI-NC-FA02', NULL, 'FILTRE INCI NC-FA02', 'filtre inci nc-fa02', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 55000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-INCI-NC-FA02' OR "normalizedName" = 'filtre inci nc-fa02'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-WA9663', NULL, 'FILTRE TECNO WA9663', 'filtre tecno wa9663', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 50000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-WA9663' OR "normalizedName" = 'filtre tecno wa9663'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-TECNO-T-WA9754', NULL, 'FILTRE TECNO T-WA9754', 'filtre tecno t-wa9754', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-TECNO-T-WA9754' OR "normalizedName" = 'filtre tecno t-wa9754'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-FILMAX-AF-2029', NULL, 'FILTRE FILMAX AF 2029', 'filtre filmax af 2029', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 75000, 100000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-FILMAX-AF-2029' OR "normalizedName" = 'filtre filmax af 2029'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FH24', NULL, 'FILTRE VESTAL VS-FH24', 'filtre vestal vs-fh24', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 30000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FH24' OR "normalizedName" = 'filtre vestal vs-fh24'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-NEX-1KG', NULL, 'GRAISSE NEX 1KG', 'graisse nex 1kg', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 23000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-NEX-1KG' OR "normalizedName" = 'graisse nex 1kg'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-NAFTILIA-20W50-5L', NULL, 'NAFTILIA 20W50 5L', 'naftilia 20w50 5l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 235000, 320000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-NAFTILIA-20W50-5L' OR "normalizedName" = 'naftilia 20w50 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GLACIOL-PACAR-G13', NULL, 'GLACIOL PACAR G13', 'glaciol pacar g13', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 130000, 170000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GLACIOL-PACAR-G13' OR "normalizedName" = 'glaciol pacar g13'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GLACIOL-IADA-2L', NULL, 'GLACIOL IADA 2L', 'glaciol iada 2l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 41000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GLACIOL-IADA-2L' OR "normalizedName" = 'glaciol iada 2l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-MANDO-EAF00145T', NULL, 'FILTRE MANDO EAF00145T', 'filtre mando eaf00145t', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 50000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-MANDO-EAF00145T' OR "normalizedName" = 'filtre mando eaf00145t'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-XXD-28113-G6000', NULL, 'FILTRE XXD 28113-G6000', 'filtre xxd 28113-g6000', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 50000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-XXD-28113-G6000' OR "normalizedName" = 'filtre xxd 28113-g6000'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FA159', NULL, 'FILTRE VESTAL VS-FA159', 'filtre vestal vs-fa159', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 140000, 190000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FA159' OR "normalizedName" = 'filtre vestal vs-fa159'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FA134', NULL, 'FILTRE VESTAL VS-FA134', 'filtre vestal vs-fa134', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 120000, 180000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FA134' OR "normalizedName" = 'filtre vestal vs-fa134'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-MAHLE-OX-425', NULL, 'FILTRE MAHLE OX 425', 'filtre mahle ox 425', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 220000, 280000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-MAHLE-OX-425' OR "normalizedName" = 'filtre mahle ox 425'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-MAHLE-KX191-DA', NULL, 'FILTRE MAHLE KX191/ DA', 'filtre mahle kx191/ da', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 200000, 260000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-MAHLE-KX191-DA' OR "normalizedName" = 'filtre mahle kx191/ da'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PROM-5L', NULL, 'LAVE GLACE PROM 5L', 'lave glace prom 5l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 48000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PROM-5L' OR "normalizedName" = 'lave glace prom 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FA-61', NULL, 'FILTRE VESTAL FA-61', 'filtre vestal fa-61', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 50000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FA-61' OR "normalizedName" = 'filtre vestal fa-61'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-BF1-JX1016', NULL, 'FILTRE BF1 JX1016', 'filtre bf1 jx1016', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 70000, 100000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-BF1-JX1016' OR "normalizedName" = 'filtre bf1 jx1016'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-MATT-COCKPIT-SPRAY', NULL, 'MATT COCKPIT SPRAY', 'matt cockpit spray', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 38000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-MATT-COCKPIT-SPRAY' OR "normalizedName" = 'matt cockpit spray'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FG17', NULL, 'FILTRE VESTAL VS-FG17', 'filtre vestal vs-fg17', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 65000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FG17' OR "normalizedName" = 'filtre vestal vs-fg17'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FG26', NULL, 'FILTRE VESTAL VS-FG26', 'filtre vestal vs-fg26', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FG26' OR "normalizedName" = 'filtre vestal vs-fg26'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-EAU-DESTILIE-5L', NULL, 'EAU DESTILIE 5L.', 'eau destilie 5l.', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 17000, 25000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-EAU-DESTILIE-5L' OR "normalizedName" = 'eau destilie 5l.'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GLACIOL-LUKIOL-1L', NULL, 'GLACIOL LUKIOL 1L', 'glaciol lukiol 1l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 35000, 55000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GLACIOL-LUKIOL-1L' OR "normalizedName" = 'glaciol lukiol 1l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-0-5L-OILFINO-10W40-2', NULL, '0.5lOILFINO 10W40', '0.5loilfino 10w40', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 47000, 54000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-0-5L-OILFINO-10W40-2' OR "normalizedName" = '0.5loilfino 10w40'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-INCI-NC-FA33', NULL, 'FILTRE INCI NC-FA33', 'filtre inci nc-fa33', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 55000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-INCI-NC-FA33' OR "normalizedName" = 'filtre inci nc-fa33'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LINJETTE-JOY', NULL, 'LINJETTE JOY', 'linjette joy', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 10500, 15000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LINJETTE-JOY' OR "normalizedName" = 'linjette joy'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-ARTICLE-3', NULL, 'wynns diezel+', 'wynns diezel+', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 40000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-ARTICLE-3' OR "normalizedName" = 'wynns diezel+'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-ELF-5W40-FR', NULL, 'ELF 5W40 FR', 'elf 5w40 fr', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 1060000, 1280000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-ELF-5W40-FR' OR "normalizedName" = 'elf 5w40 fr'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FH89', NULL, 'FILTRE VESTAL VS-FH89', 'filtre vestal vs-fh89', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 35000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FH89' OR "normalizedName" = 'filtre vestal vs-fh89'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-GFB-OEM-31920-66200', NULL, 'FILTRE GFB OEM 31920-66200', 'filtre gfb oem 31920-66200', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 150000, 210000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-GFB-OEM-31920-66200' OR "normalizedName" = 'filtre gfb oem 31920-66200'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-TECNO-TCX0710B4', NULL, 'FILTRE TECNO TCX0710B4', 'filtre tecno tcx0710b4', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-TECNO-TCX0710B4' OR "normalizedName" = 'filtre tecno tcx0710b4'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-MICOTA-MB220900', NULL, 'FILTRE MICOTA MB220900', 'filtre micota mb220900', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 55000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-MICOTA-MB220900' OR "normalizedName" = 'filtre micota mb220900'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-AIR-1040', NULL, 'FILTRE AIR 1040', 'filtre air 1040', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 100000, 140000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-AIR-1040' OR "normalizedName" = 'filtre air 1040'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FA223', NULL, 'FILTRE VESTAL VS-FA223', 'filtre vestal vs-fa223', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 160000, 220000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FA223' OR "normalizedName" = 'filtre vestal vs-fa223'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FH13', NULL, 'FILTRE VESTAL VS-FH13', 'filtre vestal vs-fh13', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 65000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FH13' OR "normalizedName" = 'filtre vestal vs-fh13'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-INCI-FH-06', NULL, 'FILTRE INCI FH-06', 'filtre inci fh-06', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 37000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-INCI-FH-06' OR "normalizedName" = 'filtre inci fh-06'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LAVE-GLACE-IADA', NULL, 'LAVE GLACE IADA', 'lave glace iada', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 48000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LAVE-GLACE-IADA' OR "normalizedName" = 'lave glace iada'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-VARTA-120', NULL, 'BATTERIE VARTA 120', 'batterie varta 120', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 2420000, 2570000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-VARTA-120' OR "normalizedName" = 'batterie varta 120'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-0-5L-CHIFA-SAE-40', NULL, '0.5L CHIFA SAE 40', '0.5l chifa sae 40', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 21000, 28000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-0-5L-CHIFA-SAE-40' OR "normalizedName" = '0.5l chifa sae 40'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-0-5L-ELF-ALG-10W40', NULL, '0.5l ELF ALG 10W40', '0.5l elf alg 10w40', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 40000, 52000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-0-5L-ELF-ALG-10W40' OR "normalizedName" = '0.5l elf alg 10w40'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FC001-1103L7', NULL, 'PORTE FILTRE ELEMFIL FC001 1103L7', 'porte filtre elemfil fc001 1103l7', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 95000, 120000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FC001-1103L7' OR "normalizedName" = 'porte filtre elemfil fc001 1103l7'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-1906A8', NULL, 'FILTRE VESTAL 1906A8', 'filtre vestal 1906a8', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 60000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-1906A8' OR "normalizedName" = 'filtre vestal 1906a8'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-MULTIGRADE-PL270', NULL, 'FILTRE MULTIGRADE PL270', 'filtre multigrade pl270', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 160000, 240000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-MULTIGRADE-PL270' OR "normalizedName" = 'filtre multigrade pl270'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FG05', NULL, 'FILTRE VESTAL VS-FG05', 'filtre vestal vs-fg05', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 60000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FG05' OR "normalizedName" = 'filtre vestal vs-fg05'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-0-5L-TOTAL-5W40-FR', NULL, '0.5l TOTAL 5W40 FR', '0.5l total 5w40 fr', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 49000, 57000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-0-5L-TOTAL-5W40-FR' OR "normalizedName" = '0.5l total 5w40 fr'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-RONDELLE-2', NULL, 'RONDELLE 2', 'rondelle 2', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 95000, 30000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-RONDELLE-2' OR "normalizedName" = 'rondelle 2'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-RONDELLES', NULL, 'RONDELLES', 'rondelles', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 1000, 3000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-RONDELLES' OR "normalizedName" = 'rondelles'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-OS-604', NULL, 'FILTRE SAFI OS 604', 'filtre safi os 604', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 40000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-OS-604' OR "normalizedName" = 'filtre safi os 604'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-0-5L-OIL-10W-SONATRACK', NULL, '0.5L OIL 10W SONATRACK', '0.5l oil 10w sonatrack', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 18000, 22500, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-0-5L-OIL-10W-SONATRACK' OR "normalizedName" = '0.5l oil 10w sonatrack'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-1L-OIL-10W-SONATRACK', NULL, '1L OIL 10W SONATRACK', '1l oil 10w sonatrack', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 34000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-1L-OIL-10W-SONATRACK' OR "normalizedName" = '1l oil 10w sonatrack'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-FORZA-65-AH', NULL, 'BATTERIE FORZA 65 AH', 'batterie forza 65 ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1000000, 1150000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-FORZA-65-AH' OR "normalizedName" = 'batterie forza 65 ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LAVE-GLACE-RENAULT', NULL, 'LAVE GLACE RENAULT', 'lave glace renault', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 43000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LAVE-GLACE-RENAULT' OR "normalizedName" = 'lave glace renault'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GRAISSE-ASSIA-1KG', NULL, 'GRAISSE ASSIA 1KG', 'graisse assia 1kg', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 110000, 120000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GRAISSE-ASSIA-1KG' OR "normalizedName" = 'graisse assia 1kg'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GRAISSE-ORS-1KG', NULL, 'GRAISSE ORS 1KG', 'graisse ors 1kg', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 25000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GRAISSE-ORS-1KG' OR "normalizedName" = 'graisse ors 1kg'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-WYNNS-DIESEL', NULL, 'WYNNS DIESEL', 'wynns diesel', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 95000, 110000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-WYNNS-DIESEL' OR "normalizedName" = 'wynns diesel'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LAVE-GLACE-STAR-2L', NULL, 'LAVE GLACE STAR 2L', 'lave glace star 2l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 7000, 15000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LAVE-GLACE-STAR-2L' OR "normalizedName" = 'lave glace star 2l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-NAFTAL-10W40-1L', NULL, 'NAFTAL 10W40 1L', 'naftal 10w40 1l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 115000, 120000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-NAFTAL-10W40-1L' OR "normalizedName" = 'naftal 10w40 1l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TOTAL-2T-700-1L', NULL, 'TOTAL 2T 700 1L', 'total 2t 700 1l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 105000, 130000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TOTAL-2T-700-1L' OR "normalizedName" = 'total 2t 700 1l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-55-LUXIOL-DOT4', NULL, '55+ LUXIOL +DOT4', '55+ luxiol +dot4', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 30000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-55-LUXIOL-DOT4' OR "normalizedName" = '55+ luxiol +dot4'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-CLEAN-CHAM-TOWEL', NULL, 'CLEAN CHAM TOWEL', 'clean cham towel', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 53000, 65000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-CLEAN-CHAM-TOWEL' OR "normalizedName" = 'clean cham towel'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-COUVRE-VOLAN-UNIVERSAL', NULL, 'COUVRE VOLAN UNIVERSAL', 'couvre volan universal', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 42000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-COUVRE-VOLAN-UNIVERSAL' OR "normalizedName" = 'couvre volan universal'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BOUCHON-RESERVOIR-STONDAR', NULL, 'BOUCHON RESERVOIR STONDAR', 'bouchon reservoir stondar', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 5000, 10000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BOUCHON-RESERVOIR-STONDAR' OR "normalizedName" = 'bouchon reservoir stondar'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-SUIGLACE-ARIERE', NULL, 'BALI SUIGLACE ARIERE', 'bali suiglace ariere', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 25000, 40000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-SUIGLACE-ARIERE' OR "normalizedName" = 'bali suiglace ariere'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TAPIS-CARRE-3D', NULL, 'TAPIS CARRE 3D', 'tapis carre 3d', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 31000, 40000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TAPIS-CARRE-3D' OR "normalizedName" = 'tapis carre 3d'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PURFIN-KROSTI', NULL, 'PURFIN KROSTI', 'purfin krosti', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 16000, 25000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PURFIN-KROSTI' OR "normalizedName" = 'purfin krosti'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-AR-FRESH', NULL, 'PURFIN AR FRESH', 'purfin ar fresh', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 30000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-AR-FRESH' OR "normalizedName" = 'purfin ar fresh'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-CARRTY', NULL, 'PURFIN CARRTY', 'purfin carrty', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 19000, 30000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-CARRTY' OR "normalizedName" = 'purfin carrty'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-KRICK-10T', NULL, 'KRICK 10T', 'krick 10t', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 290000, 350000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-KRICK-10T' OR "normalizedName" = 'krick 10t'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TRIANGLE-DE-ENPANNE-LORD', NULL, 'TRIANGLE DE ENPANNE LORD', 'triangle de enpanne lord', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 75000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TRIANGLE-DE-ENPANNE-LORD' OR "normalizedName" = 'triangle de enpanne lord'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-KRICK-MONIVEL-1-5-T', NULL, 'KRICK MONIVEL 1.5 T', 'krick monivel 1.5 t', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 185000, 270000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-KRICK-MONIVEL-1-5-T' OR "normalizedName" = 'krick monivel 1.5 t'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-GOLDFIL-13055724', NULL, 'FILTRE GOLDFIL 13055724', 'filtre goldfil 13055724', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 80000, 120000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-GOLDFIL-13055724' OR "normalizedName" = 'filtre goldfil 13055724'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FA96', NULL, 'FILTRE VESTAL VS-FA96', 'filtre vestal vs-fa96', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 210000, 250000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FA96' OR "normalizedName" = 'filtre vestal vs-fa96'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-DF-1251', NULL, 'FILTRE ELEMFIL DF-1251', 'filtre elemfil df-1251', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 35000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-DF-1251' OR "normalizedName" = 'filtre elemfil df-1251'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-VISKOIL-RNG-507-1906E6', NULL, 'FILTRE VISKOIL RNG 507 1906E6', 'filtre viskoil rng 507 1906e6', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 50000, 210000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-VISKOIL-RNG-507-1906E6' OR "normalizedName" = 'filtre viskoil rng 507 1906e6'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-SONALIKA-DI75-90', NULL, 'FILTRE SONALIKA DI75/90', 'filtre sonalika di75/90', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 270000, 320000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-SONALIKA-DI75-90' OR "normalizedName" = 'filtre sonalika di75/90'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LF670', NULL, 'FILTRE FLEETGARD LF670', 'filtre fleetgard lf670', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 170000, 210000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LF670' OR "normalizedName" = 'filtre fleetgard lf670'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-OS-371', NULL, 'FILTRE SAFI OS 371', 'filtre safi os 371', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 32000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-OS-371' OR "normalizedName" = 'filtre safi os 371'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LAMPE-TUNGSRAM-21-5W-12V', NULL, 'LAMPE TUNGSRAM 21/5W 12V', 'lampe tungsram 21/5w 12v', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 5500, 10000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LAMPE-TUNGSRAM-21-5W-12V' OR "normalizedName" = 'lampe tungsram 21/5w 12v'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-VARTA-74-SILVER', NULL, 'BATTERIE VARTA 74 SILVER', 'batterie varta 74 silver', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1430000, 1630000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-VARTA-74-SILVER' OR "normalizedName" = 'batterie varta 74 silver'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-0-5L-ELF-SRX900-5W40-ALG', NULL, '0.5l ELF SRX900 5W40 ALG', '0.5l elf srx900 5w40 alg', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 51000, 62000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-0-5L-ELF-SRX900-5W40-ALG' OR "normalizedName" = '0.5l elf srx900 5w40 alg'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-OTOFIL-FA01', NULL, 'FILTRE OTOFIL FA01', 'filtre otofil fa01', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 70000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-OTOFIL-FA01' OR "normalizedName" = 'filtre otofil fa01'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-POT-DE-CHAMOT-PM', NULL, 'POT DE CHAMOT PM', 'pot de chamot pm', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 25000, 40000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-POT-DE-CHAMOT-PM' OR "normalizedName" = 'pot de chamot pm'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-TOYOTA-04152-31060', NULL, 'FILTRE TOYOTA 04152-31060', 'filtre toyota 04152-31060', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 60000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-TOYOTA-04152-31060' OR "normalizedName" = 'filtre toyota 04152-31060'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FG01', NULL, 'FILTRE VESTAL VS-FG01', 'filtre vestal vs-fg01', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 60000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FG01' OR "normalizedName" = 'filtre vestal vs-fg01'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LAMPE-PHILIPS-ROUGE-STOP-12V', NULL, 'LAMPE PHILIPS ROUGE STOP 12V', 'lampe philips rouge stop 12v', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 12000, 20000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LAMPE-PHILIPS-ROUGE-STOP-12V' OR "normalizedName" = 'lampe philips rouge stop 12v'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VALEO-2P-ET-1P', NULL, 'LAMPE VALEO 2P ET 1P', 'lampe valeo 2p et 1p', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 8500, 15000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VALEO-2P-ET-1P' OR "normalizedName" = 'lampe valeo 2p et 1p'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BOUCHON-VOLCANO', NULL, 'BOUCHON VOLCANO', 'bouchon volcano', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 18000, 30000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BOUCHON-VOLCANO' OR "normalizedName" = 'bouchon volcano'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VALEO-H7-ET-H4', NULL, 'LAMPE VALEO H7 ET H4', 'lampe valeo h7 et h4', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 42000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VALEO-H7-ET-H4' OR "normalizedName" = 'lampe valeo h7 et h4'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LAMPE-AUTO-1P-12V', NULL, 'LAMPE AUTO 1P 12V', 'lampe auto 1p 12v', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 3000, 5000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LAMPE-AUTO-1P-12V' OR "normalizedName" = 'lampe auto 1p 12v'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LAMPE-H1-12V', NULL, 'LAMPE H1 12V', 'lampe h1 12v', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 30000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LAMPE-H1-12V' OR "normalizedName" = 'lampe h1 12v'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LAMPE-KLAXCAR-21WT20-12V', NULL, 'LAMPE KLAXCAR 21WT20 12V', 'lampe klaxcar 21wt20 12v', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 3000, 5000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LAMPE-KLAXCAR-21WT20-12V' OR "normalizedName" = 'lampe klaxcar 21wt20 12v'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LAMPE-CARCAR-H3-12V', NULL, 'LAMPE CARCAR H3 12V', 'lampe carcar h3 12v', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 15000, 25000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LAMPE-CARCAR-H3-12V' OR "normalizedName" = 'lampe carcar h3 12v'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LAMPE-KLAXCAR-1P-12V', NULL, 'LAMPE KLAXCAR 1P 12V', 'lampe klaxcar 1p 12v', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 8000, 20000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LAMPE-KLAXCAR-1P-12V' OR "normalizedName" = 'lampe klaxcar 1p 12v'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LAMPE-KLAXCAR-ISO-TS16949', NULL, 'LAMPE KLAXCAR ISO/TS16949', 'lampe klaxcar iso/ts16949', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 1000, 2000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LAMPE-KLAXCAR-ISO-TS16949' OR "normalizedName" = 'lampe klaxcar iso/ts16949'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LAMPE-KLAXCAR-H1-24V', NULL, 'LAMPE KLAXCAR H1 24V', 'lampe klaxcar h1 24v', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 22000, 40000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LAMPE-KLAXCAR-H1-24V' OR "normalizedName" = 'lampe klaxcar h1 24v'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LAMPE-KLAXCAR-12V-ISO-TS16949', NULL, 'LAMPE KLAXCAR 12V ISO/TS16949', 'lampe klaxcar 12v iso/ts16949', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 3000, 5000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LAMPE-KLAXCAR-12V-ISO-TS16949' OR "normalizedName" = 'lampe klaxcar 12v iso/ts16949'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LAMPE-PHILIPS-H1-12V', NULL, 'LAMPE PHILIPS H1 12V', 'lampe philips h1 12v', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 25000, 40000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LAMPE-PHILIPS-H1-12V' OR "normalizedName" = 'lampe philips h1 12v'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LAMPE-NARVA-1P-ROUGE', NULL, 'LAMPE NARVA 1P ROUGE', 'lampe narva 1p rouge', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 12000, 20000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LAMPE-NARVA-1P-ROUGE' OR "normalizedName" = 'lampe narva 1p rouge'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LAMPE-H0507-24V', NULL, 'LAMPE H0507 24V', 'lampe h0507 24v', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 1000, 2000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LAMPE-H0507-24V' OR "normalizedName" = 'lampe h0507 24v'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LAMPE-DIAMAX-H7-12V', NULL, 'LAMPE DIAMAX H7 12V', 'lampe diamax h7 12v', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 38000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LAMPE-DIAMAX-H7-12V' OR "normalizedName" = 'lampe diamax h7 12v'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LAMPE-DIAMAX-H4-12V', NULL, 'LAMPE DIAMAX H4 12 V', 'lampe diamax h4 12 v', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 43000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LAMPE-DIAMAX-H4-12V' OR "normalizedName" = 'lampe diamax h4 12 v'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LAMPE-NARVA-H7-24', NULL, 'LAMPE NARVA H7 24', 'lampe narva h7 24', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 27000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LAMPE-NARVA-H7-24' OR "normalizedName" = 'lampe narva h7 24'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-KTF-H4-24', NULL, 'LAMPE KTF H4 24', 'lampe ktf h4 24', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 30000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-KTF-H4-24' OR "normalizedName" = 'lampe ktf h4 24'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LAMPE-KLAKSCAR-H7-24', NULL, 'LAMPE KLAKSCAR H7 24', 'lampe klakscar h7 24', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 25000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LAMPE-KLAKSCAR-H7-24' OR "normalizedName" = 'lampe klakscar h7 24'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-SONALIKA-DI-60', NULL, 'FILTRE SONALIKA DI 60', 'filtre sonalika di 60', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 220000, 270000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-SONALIKA-DI-60' OR "normalizedName" = 'filtre sonalika di 60'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BLACK-BOX', NULL, 'PURFIN BLACK BOX', 'purfin black box', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 20000, 30000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BLACK-BOX' OR "normalizedName" = 'purfin black box'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PURFIN-AREON-85-ML', NULL, 'PURFIN AREON 85 ML', 'purfin areon 85 ml', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 120000, 130000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PURFIN-AREON-85-ML' OR "normalizedName" = 'purfin areon 85 ml'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PARFUMS', NULL, 'PURFIN PARFUMS', 'purfin parfums', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 38000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PARFUMS' OR "normalizedName" = 'purfin parfums'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PURFIN-NEW-CAR-2', NULL, 'PURFIN NEW CAR 2', 'purfin new car 2', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 45000, 55000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PURFIN-NEW-CAR-2' OR "normalizedName" = 'purfin new car 2'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PURFIN-NEW-CAR-1', NULL, 'PURFIN NEW CAR 1', 'purfin new car 1', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 45000, 55000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PURFIN-NEW-CAR-1' OR "normalizedName" = 'purfin new car 1'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-COS-MOTO-2', NULL, 'COS MOTO 2', 'cos moto 2', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 1300, 2500, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-COS-MOTO-2' OR "normalizedName" = 'cos moto 2'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-COS-MOTO-1', NULL, 'COS MOTO 1', 'cos moto 1', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 1416, 2000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-COS-MOTO-1' OR "normalizedName" = 'cos moto 1'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-0-5L-TOTAL-FR-15W40', NULL, '0.5L TOTAL FR 15W40', '0.5l total fr 15w40', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 46000, 54000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-0-5L-TOTAL-FR-15W40' OR "normalizedName" = '0.5l total fr 15w40'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LUXIOL-15KG', NULL, 'GRAISSE LUXIOL 15KG', 'graisse luxiol 15kg', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 820000, 920000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LUXIOL-15KG' OR "normalizedName" = 'graisse luxiol 15kg'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GRAISSE-DMG-1KG', NULL, 'GRAISSE DMG 1KG', 'graisse dmg 1kg', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 75000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GRAISSE-DMG-1KG' OR "normalizedName" = 'graisse dmg 1kg'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-COUVRE-VOLLON-XXL2', NULL, 'COUVRE VOLLON XXL2', 'couvre vollon xxl2', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 85000, 110000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-COUVRE-VOLLON-XXL2' OR "normalizedName" = 'couvre vollon xxl2'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-1L-TISKA-68', NULL, '1L TISKA 68', '1l tiska 68', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 34500, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-1L-TISKA-68' OR "normalizedName" = '1l tiska 68'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-ISUZU-145-002', NULL, 'FILTRE ISUZU 145-002', 'filtre isuzu 145-002', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 55000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-ISUZU-145-002' OR "normalizedName" = 'filtre isuzu 145-002'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-COUVRE-VOLLON-XL', NULL, 'COUVRE VOLLON XL', 'couvre vollon xl', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 35000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-COUVRE-VOLLON-XL' OR "normalizedName" = 'couvre vollon xl'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-28113-A0200', NULL, 'FILTRE HYUNDAI 28113 A0200', 'filtre hyundai 28113 a0200', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 85000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-28113-A0200' OR "normalizedName" = 'filtre hyundai 28113 a0200'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FA112', NULL, 'FILTRE VESTAL VS-FA112', 'filtre vestal vs-fa112', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 210000, 260000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FA112' OR "normalizedName" = 'filtre vestal vs-fa112'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-ONFIL-HF-04620', NULL, 'FILTRE ONFIL HF 04620', 'filtre onfil hf 04620', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 180000, 240000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-ONFIL-HF-04620' OR "normalizedName" = 'filtre onfil hf 04620'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-0-5L-CASTROL-10W40', NULL, '0.5L CASTROL 10W40', '0.5l castrol 10w40', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 67000, 77000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-0-5L-CASTROL-10W40' OR "normalizedName" = '0.5l castrol 10w40'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-0-5L-OIL-HEDROLIQUE-PET-SAM', NULL, '0.5L OIL HEDROLIQUE PET-SAM', '0.5l oil hedrolique pet-sam', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 14250, 22500, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-0-5L-OIL-HEDROLIQUE-PET-SAM' OR "normalizedName" = '0.5l oil hedrolique pet-sam'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-1L-OIL-HEDROLIQUE-PET-SAM', NULL, '1L OIL HEDROLIQUE PET-SAM', '1l oil hedrolique pet-sam', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 29000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-1L-OIL-HEDROLIQUE-PET-SAM' OR "normalizedName" = '1l oil hedrolique pet-sam'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-0-5L-OIL-TURBO-NAFTAL', NULL, '0.5L OIL TURBO NAFTAL', '0.5l oil turbo naftal', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 18750, 25000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-0-5L-OIL-TURBO-NAFTAL' OR "normalizedName" = '0.5l oil turbo naftal'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-1L-OIL-TURBO-NAFTAL', NULL, '1L OIL TURBO NAFTAL', '1l oil turbo naftal', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 37500, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-1L-OIL-TURBO-NAFTAL' OR "normalizedName" = '1l oil turbo naftal'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-ELF-10W40-ALGERIE5L', NULL, 'ELF 10W40 ALGERIE5L', 'elf 10w40 algerie5l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 500000, 560000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-ELF-10W40-ALGERIE5L' OR "normalizedName" = 'elf 10w40 algerie5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TOTAL-4T-700-10W40-1L', NULL, 'TOTAL 4T 700 10W40 1L', 'total 4t 700 10w40 1l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 100000, 120000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TOTAL-4T-700-10W40-1L' OR "normalizedName" = 'total 4t 700 10w40 1l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-FORZA-225V', NULL, 'BATTERIE FORZA 225V', 'batterie forza 225v', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 2450000, 2700000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-FORZA-225V' OR "normalizedName" = 'batterie forza 225v'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-FORCE-ONE-63AH', NULL, 'BATTERIE FORCE ONE 63AH', 'batterie force one 63ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 800000, 950000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-FORCE-ONE-63AH' OR "normalizedName" = 'batterie force one 63ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GALAXY-100', NULL, 'BATTERIE GALAXY 100', 'batterie galaxy 100', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1470000, 1620000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GALAXY-100' OR "normalizedName" = 'batterie galaxy 100'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-VARTA-100V', NULL, 'BATTERIE VARTA 100V', 'batterie varta 100v', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 2080000, 2230000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-VARTA-100V' OR "normalizedName" = 'batterie varta 100v'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-FORZA-95-V', NULL, 'BATTERIE FORZA 95 V', 'batterie forza 95 v', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1460000, 1610000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-FORZA-95-V' OR "normalizedName" = 'batterie forza 95 v'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-TUDOR-80V', NULL, 'BATTERIE TUDOR 80V', 'batterie tudor 80v', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1370000, 1520000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-TUDOR-80V' OR "normalizedName" = 'batterie tudor 80v'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-RECOR-45V', NULL, 'BATTERIE RECOR 45V', 'batterie recor 45v', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 900000, 1100000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-RECOR-45V' OR "normalizedName" = 'batterie recor 45v'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-TUDOR-35-V', NULL, 'BATTERIE TUDOR 35 V', 'batterie tudor 35 v', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 800000, 950000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-TUDOR-35-V' OR "normalizedName" = 'batterie tudor 35 v'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VARTA-90V', NULL, 'BATTERIE VARTA 90V', 'batterie varta 90v', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1670000, 1820000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VARTA-90V' OR "normalizedName" = 'batterie varta 90v'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-AIR-5', NULL, 'FILTRE AIR 5', 'filtre air 5', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 190000, 240000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-AIR-5' OR "normalizedName" = 'filtre air 5'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TAPIS-5-PLACES', NULL, 'TAPIS 5 PLACES', 'tapis 5 places', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 145000, 190000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TAPIS-5-PLACES' OR "normalizedName" = 'tapis 5 places'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-CHIFON-DOUBLE-FACE-GM', NULL, 'CHIFON DOUBLE FACE GM', 'chifon double face gm', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 10000, 15000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-CHIFON-DOUBLE-FACE-GM' OR "normalizedName" = 'chifon double face gm'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TAPIS-LAVAGE', NULL, 'TAPIS LAVAGE', 'tapis lavage', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 50000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TAPIS-LAVAGE' OR "normalizedName" = 'tapis lavage'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PROFWELL-TRIPLE-R3-750ML', NULL, 'PROFWELL TRIPLE R3 750ML', 'profwell triple r3 750ml', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 43000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PROFWELL-TRIPLE-R3-750ML' OR "normalizedName" = 'profwell triple r3 750ml'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PROFWELL-TRIPLE-X3-750ML', NULL, 'PROFWELL TRIPLE X3 750ML', 'profwell triple x3 750ml', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 43000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PROFWELL-TRIPLE-X3-750ML' OR "normalizedName" = 'profwell triple x3 750ml'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PROFWELL-TRIPLE-H3-750ML', NULL, 'PROFWELL TRIPLE H3 750ML', 'profwell triple h3 750ml', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 43000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PROFWELL-TRIPLE-H3-750ML' OR "normalizedName" = 'profwell triple h3 750ml'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-CARTY-RENOVATEUR-PLASTIQUE-520ML', NULL, 'CARTY RENOVATEUR PLASTIQUE 520ML', 'carty renovateur plastique 520ml', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 17000, 40000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-CARTY-RENOVATEUR-PLASTIQUE-520ML' OR "normalizedName" = 'carty renovateur plastique 520ml'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PROFWELL-NET-TB-300ML', NULL, 'PROFWELL NET TB 300ML', 'profwell net tb 300ml', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 15500, 25000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PROFWELL-NET-TB-300ML' OR "normalizedName" = 'profwell net tb 300ml'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PROFWELL-POLISH-MAGNUM', NULL, 'PROFWELL POLISH MAGNUM', 'profwell polish magnum', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 50000, 65000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PROFWELL-POLISH-MAGNUM' OR "normalizedName" = 'profwell polish magnum'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PROTECT-NET-TB-500ML', NULL, 'PROTECT NET TB 500ML', 'protect net tb 500ml', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 15000, 40000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PROTECT-NET-TB-500ML' OR "normalizedName" = 'protect net tb 500ml'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PROTECT-NET-MOTEUR-500ML', NULL, 'PROTECT NET MOTEUR 500ML', 'protect net moteur 500ml', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 15000, 40000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PROTECT-NET-MOTEUR-500ML' OR "normalizedName" = 'protect net moteur 500ml'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FLAMINGO-GRAMD', NULL, 'FLAMINGO GRAND', 'flamingo grand', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 62000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FLAMINGO-GRAMD' OR "normalizedName" = 'flamingo grand'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-FILMAX-AF2025', NULL, 'FILTRE FILMAX AF2025', 'filtre filmax af2025', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 50000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-FILMAX-AF2025' OR "normalizedName" = 'filtre filmax af2025'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-AZ-MS0121-121', NULL, 'FILTRE AZ MS0121-121', 'filtre az ms0121-121', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 150000, 190000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-AZ-MS0121-121' OR "normalizedName" = 'filtre az ms0121-121'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FA148', NULL, 'FILTRE VESTAL VS-FA148', 'filtre vestal vs-fa148', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 95000, 130000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FA148' OR "normalizedName" = 'filtre vestal vs-fa148'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BOUJIE-EYQEM-21', NULL, 'BOUJIE EYQEM 21', 'boujie eyqem 21', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 75000, 100000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BOUJIE-EYQEM-21' OR "normalizedName" = 'boujie eyqem 21'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BOUJIE-EYQEM-750LS-0-65MM', NULL, 'BOUJIE EYQEM 750LS 0.65MM', 'boujie eyqem 750ls 0.65mm', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 69000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BOUJIE-EYQEM-750LS-0-65MM' OR "normalizedName" = 'boujie eyqem 750ls 0.65mm'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-FA-2506', NULL, 'FILTRE FA-2506', 'filtre fa-2506', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 150000, 200000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-FA-2506' OR "normalizedName" = 'filtre fa-2506'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-BSM-OEM-17801-0C0-10', NULL, 'FILTRE BSM OEM:17801-0C010', 'filtre bsm oem:17801-0c010', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 120000, 150000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-BSM-OEM-17801-0C0-10' OR "normalizedName" = 'filtre bsm oem:17801-0c010'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FA-58', NULL, 'FILTRE VESTAL FA-58', 'filtre vestal fa-58', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 50000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FA-58' OR "normalizedName" = 'filtre vestal fa-58'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-AF011', NULL, 'FILTRE AMC AF011', 'filtre amc af011', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-AF011' OR "normalizedName" = 'filtre amc af011'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-AMC-AF001', NULL, 'FILTRE AMC AF001', 'filtre amc af001', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-AMC-AF001' OR "normalizedName" = 'filtre amc af001'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-AMC-AF005', NULL, 'FILTRE AMC AF005', 'filtre amc af005', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-AMC-AF005' OR "normalizedName" = 'filtre amc af005'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FA102', NULL, 'FILTRE VESTAL VS-FA102', 'filtre vestal vs-fa102', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 70000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FA102' OR "normalizedName" = 'filtre vestal vs-fa102'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-VOLKSWAGEN-03N-115-562', NULL, 'FILTRE VOLKSWAGEN 03N 115 562', 'filtre volkswagen 03n 115 562', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 60000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-VOLKSWAGEN-03N-115-562' OR "normalizedName" = 'filtre volkswagen 03n 115 562'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FH07', NULL, 'FILTRE VESTAL VS-FH07', 'filtre vestal vs-fh07', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FH07' OR "normalizedName" = 'filtre vestal vs-fh07'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-WIBCO-1703', NULL, 'FILTRE WIBCO 1703', 'filtre wibco 1703', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 140000, 240000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-WIBCO-1703' OR "normalizedName" = 'filtre wibco 1703'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FH18', NULL, 'FILTRE VESTAL VS-FH18', 'filtre vestal vs-fh18', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 29000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FH18' OR "normalizedName" = 'filtre vestal vs-fh18'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-WEICHAI-612600081334', NULL, 'FILTRE WEICHAI 612600081334', 'filtre weichai 612600081334', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 60000, 75000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-WEICHAI-612600081334' OR "normalizedName" = 'filtre weichai 612600081334'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FH20', NULL, 'FILTRE VESTAL VS-FH20', 'filtre vestal vs-fh20', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 29000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FH20' OR "normalizedName" = 'filtre vestal vs-fh20'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-VARTA-155V', NULL, 'BATTERIE VARTA 155V', 'batterie varta 155v', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 2680000, 2880000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-VARTA-155V' OR "normalizedName" = 'batterie varta 155v'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LAVE-GLACE-BIO-5L', NULL, 'LAVE GLACE BIO 5L', 'lave glace bio 5l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 16000, 30000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LAVE-GLACE-BIO-5L' OR "normalizedName" = 'lave glace bio 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GLACIOL-KRAFT-5L', NULL, 'GLACIOL KRAFT 5L', 'glaciol kraft 5l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 15000, 30000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GLACIOL-KRAFT-5L' OR "normalizedName" = 'glaciol kraft 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GLACIOL-KRAFT-2L', NULL, 'GLACIOL KRAFT 2L', 'glaciol kraft 2l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 10000, 20000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GLACIOL-KRAFT-2L' OR "normalizedName" = 'glaciol kraft 2l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TOTAL-QUARTZ-C3-5W-40-5L', NULL, 'TOTAL QUARTZ C3 5W-40 5L', 'total quartz c3 5w-40 5l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 560000, 630000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TOTAL-QUARTZ-C3-5W-40-5L' OR "normalizedName" = 'total quartz c3 5w-40 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BENDIX-ANTIFREEZE', NULL, 'BENDIX ANTIFREEZE', 'bendix antifreeze', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 70000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BENDIX-ANTIFREEZE' OR "normalizedName" = 'bendix antifreeze'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LIQUI-MOLY-ESS', NULL, 'LIQUI MOLY ESS', 'liqui moly ess', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 120000, 140000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LIQUI-MOLY-ESS' OR "normalizedName" = 'liqui moly ess'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-55-DOT4-CLASS', NULL, '55+ DOT4 CLASS', '55+ dot4 class', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 31000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-55-DOT4-CLASS' OR "normalizedName" = '55+ dot4 class'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-NE-487-WF-8300', NULL, 'FILTRE VESTAL NE 487 WF 8300', 'filtre vestal ne 487 wf 8300', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 42000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-NE-487-WF-8300' OR "normalizedName" = 'filtre vestal ne 487 wf 8300'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-FAP-5034JX', NULL, 'FILTRE FAP-5034JX', 'filtre fap-5034jx', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 240000, 280000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-FAP-5034JX' OR "normalizedName" = 'filtre fap-5034jx'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-15208-BN30A', NULL, 'FILTRE BF1 15208-BN30A', 'filtre bf1 15208-bn30a', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 55000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-15208-BN30A' OR "normalizedName" = 'filtre bf1 15208-bn30a'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-OBS-160', NULL, 'FILTRE ALSAFA OBS-160', 'filtre alsafa obs-160', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 68000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-OBS-160' OR "normalizedName" = 'filtre alsafa obs-160'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-AUTOMOTIVE-TE-4016', NULL, 'FILTRE AUTOMOTIVE TE 4016', 'filtre automotive te 4016', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-AUTOMOTIVE-TE-4016' OR "normalizedName" = 'filtre automotive te 4016'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-1109-CK', NULL, 'FILTRE PEUGEOT 1109 CK', 'filtre peugeot 1109 ck', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 30000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-1109-CK' OR "normalizedName" = 'filtre peugeot 1109 ck'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FH36', NULL, 'FILTRE VESTAL VS-FH36', 'filtre vestal vs-fh36', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FH36' OR "normalizedName" = 'filtre vestal vs-fh36'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-JORJE-MOTEUR', NULL, 'JORJE MOTEUR', 'jorje moteur', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 65000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-JORJE-MOTEUR' OR "normalizedName" = 'jorje moteur'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-FILMAX-AF-2111', NULL, 'FILTRE FILMAX AF 2111', 'filtre filmax af 2111', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 130000, 160000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-FILMAX-AF-2111' OR "normalizedName" = 'filtre filmax af 2111'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATERIE', NULL, 'BATERIE', 'baterie', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 1850000, 2000000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATERIE' OR "normalizedName" = 'baterie'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LAMPE-KLAXCAR-H4-24V', NULL, 'LAMPE KLAXCAR H4 24V', 'lampe klaxcar h4 24v', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 45000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LAMPE-KLAXCAR-H4-24V' OR "normalizedName" = 'lampe klaxcar h4 24v'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-OBS-153', NULL, 'FILTRE AL SAFA OBS-153', 'filtre al safa obs-153', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 47000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-OBS-153' OR "normalizedName" = 'filtre al safa obs-153'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FA101', NULL, 'FILTRE VESTAL VS-FA101', 'filtre vestal vs-fa101', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 65000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FA101' OR "normalizedName" = 'filtre vestal vs-fa101'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-6-PP-T30', NULL, 'FILTRE 6 PP-T30', 'filtre 6 pp-t30', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-6-PP-T30' OR "normalizedName" = 'filtre 6 pp-t30'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-16546-EB70A', NULL, 'FILTRE VESTAL OE 16546-EB70A', 'filtre vestal oe 16546-eb70a', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-16546-EB70A' OR "normalizedName" = 'filtre vestal oe 16546-eb70a'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-FUJI-FH-21413', NULL, 'FILTRE FUJI FH 21413', 'filtre fuji fh 21413', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-FUJI-FH-21413' OR "normalizedName" = 'filtre fuji fh 21413'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-1109101-S16', NULL, 'FILTRE GREAT WALL 1109101-S16', 'filtre great wall 1109101-s16', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-1109101-S16' OR "normalizedName" = 'filtre great wall 1109101-s16'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-A10', NULL, 'FILTRE VESTAL VS-A10', 'filtre vestal vs-a10', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-A10' OR "normalizedName" = 'filtre vestal vs-a10'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-STGP-M800', NULL, 'FILTRE STGP M800', 'filtre stgp m800', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 35000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-STGP-M800' OR "normalizedName" = 'filtre stgp m800'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FA46', NULL, 'FILTRE VESTAL VS-FA46', 'filtre vestal vs-fa46', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 90000, 110000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FA46' OR "normalizedName" = 'filtre vestal vs-fa46'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-AS-3048', NULL, 'FILTRE SAFI AS 3048', 'filtre safi as 3048', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 90000, 110000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-AS-3048' OR "normalizedName" = 'filtre safi as 3048'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-FA-2502-A', NULL, 'FILTRE FA-2502 A', 'filtre fa-2502 a', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 40000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-FA-2502-A' OR "normalizedName" = 'filtre fa-2502 a'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-FAP-5022-A', NULL, 'FILTRE FAP-5022 A', 'filtre fap-5022 a', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 30000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-FAP-5022-A' OR "normalizedName" = 'filtre fap-5022 a'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-TECNO-T-WA6505', NULL, 'FILTRE TECNO T-WA6505', 'filtre tecno t-wa6505', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 110000, 140000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-TECNO-T-WA6505' OR "normalizedName" = 'filtre tecno t-wa6505'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-TECNO-T-19192796', NULL, 'FILTRE TECNO T-19192796', 'filtre tecno t-19192796', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 110000, 140000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-TECNO-T-19192796' OR "normalizedName" = 'filtre tecno t-19192796'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-ONFIL-ON-03610', NULL, 'FILTRE ONFIL ON 03610', 'filtre onfil on 03610', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 110000, 180000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-ONFIL-ON-03610' OR "normalizedName" = 'filtre onfil on 03610'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-23303-56040', NULL, 'FILTRE TOYOTA 23303-56040', 'filtre toyota 23303-56040', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 65000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-23303-56040' OR "normalizedName" = 'filtre toyota 23303-56040'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FG37', NULL, 'FILTRE VESTAL VS-FG37', 'filtre vestal vs-fg37', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 55000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FG37' OR "normalizedName" = 'filtre vestal vs-fg37'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-OE-K2025', NULL, 'FILTRE VESTAL OE:K2025', 'filtre vestal oe:k2025', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 100000, 130000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-OE-K2025' OR "normalizedName" = 'filtre vestal oe:k2025'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-CHIFAN-FIBRE', NULL, 'CHIFAN FIBRE', 'chifan fibre', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 8500, 15000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-CHIFAN-FIBRE' OR "normalizedName" = 'chifan fibre'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-FORZA-54V', NULL, 'BATTERIE FORZA 54V', 'batterie forza 54v', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 730000, 880000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-FORZA-54V' OR "normalizedName" = 'batterie forza 54v'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-POMPE-OIL-AUTO-CLINC', NULL, 'POMPE OIL AUTO CLINC', 'pompe oil auto clinc', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 300000, 400000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-POMPE-OIL-AUTO-CLINC' OR "normalizedName" = 'pompe oil auto clinc'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-SETIF-77V', NULL, 'BATTERIE SETIF 77V', 'batterie setif 77v', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 830000, 1030000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-SETIF-77V' OR "normalizedName" = 'batterie setif 77v'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-0-5L-TOTAL-10W40ALG', NULL, '0.5l TOTAL 10W40ALG', '0.5l total 10w40alg', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 47000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-0-5L-TOTAL-10W40ALG' OR "normalizedName" = '0.5l total 10w40alg'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-FILMAX-AF-2031', NULL, 'FILTRE FILMAX AF 2031', 'filtre filmax af 2031', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 56000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-FILMAX-AF-2031' OR "normalizedName" = 'filtre filmax af 2031'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-CYCLO-STOP-LEAK', NULL, 'CYCLO STOP LEAK', 'cyclo stop leak', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 80000, 110000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-CYCLO-STOP-LEAK' OR "normalizedName" = 'cyclo stop leak'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-KING-PM', NULL, 'LINJETTE KING PM', 'linjette king pm', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 8500, 12000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-KING-PM' OR "normalizedName" = 'linjette king pm'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LINJETTE-KING', NULL, 'LINJETTE KING', 'linjette king', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 13000, 20000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LINJETTE-KING' OR "normalizedName" = 'linjette king'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LAMPE-PHILIPS-H7-12V', NULL, 'LAMPE PHILIPS H7 12V', 'lampe philips h7 12v', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 42000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LAMPE-PHILIPS-H7-12V' OR "normalizedName" = 'lampe philips h7 12v'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FH-914', NULL, 'FILTRE FH 914', 'filtre fh 914', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 50000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FH-914' OR "normalizedName" = 'filtre fh 914'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-DINAMIK-75AH', NULL, 'BATTERIE DINAMIK 75AH', 'batterie dinamik 75ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1100000, 1250000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-DINAMIK-75AH' OR "normalizedName" = 'batterie dinamik 75ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-CHIFON-YING-YING', NULL, 'CHIFON YING YING', 'chifon ying ying', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 9000, 15000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-CHIFON-YING-YING' OR "normalizedName" = 'chifon ying ying'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FH-902', NULL, 'FILTRE FH 902', 'filtre fh 902', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 32000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FH-902' OR "normalizedName" = 'filtre fh 902'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-COS-KSF', NULL, 'COS KSF', 'cos ksf', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 20000, 30000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-COS-KSF' OR "normalizedName" = 'cos ksf'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-MGT', NULL, 'FILTRE MGT', 'filtre mgt', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 180000, 240000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-MGT' OR "normalizedName" = 'filtre mgt'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-KIT-RENAULT', NULL, 'FILTRE KIT RENAULT', 'filtre kit renault', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 1050000, 1300000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-KIT-RENAULT' OR "normalizedName" = 'filtre kit renault'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-AMC-AF002', NULL, 'FILTRE AMC AF002', 'filtre amc af002', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 58000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-AMC-AF002' OR "normalizedName" = 'filtre amc af002'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-AMBITION-RENOVATEUR-T-BORD', NULL, 'AMBITION RENOVATEUR T/BORD', 'ambition renovateur t/bord', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 16000, 25000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-AMBITION-RENOVATEUR-T-BORD' OR "normalizedName" = 'ambition renovateur t/bord'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FIRLA', NULL, 'CHIFFON FIRLA', 'chiffon firla', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 15000, 20000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FIRLA' OR "normalizedName" = 'chiffon firla'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LAMPE-2P-VEXONEEYE-12V', NULL, 'LAMPE 2P VEXONEEYE 12V', 'lampe 2p vexoneeye 12v', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 6500, 15000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LAMPE-2P-VEXONEEYE-12V' OR "normalizedName" = 'lampe 2p vexoneeye 12v'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TAPIS-SPECIALE', NULL, 'TAPIS SPECIALE', 'tapis speciale', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 330000, 450000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TAPIS-SPECIALE' OR "normalizedName" = 'tapis speciale'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-CHIFON-FIBRE-SUPER', NULL, 'CHIFON FIBRE SUPER', 'chifon fibre super', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 18000, 30000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-CHIFON-FIBRE-SUPER' OR "normalizedName" = 'chifon fibre super'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TETE-GRAISSEURS-1-2-3', NULL, 'TETE GRAISSEURS 1 2 3', 'tete graisseurs 1 2 3', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 3000, 5000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TETE-GRAISSEURS-1-2-3' OR "normalizedName" = 'tete graisseurs 1 2 3'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILLS-DATACHE1', NULL, 'FILLS DATACHE 1', 'fills datache 1', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 550, 1000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILLS-DATACHE1' OR "normalizedName" = 'fills datache 1'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LAMPE-H4-DIAMAX-24V-E2065', NULL, 'LAMPE H4 DIAMAX 24V E2065', 'lampe h4 diamax 24v e2065', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 30000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LAMPE-H4-DIAMAX-24V-E2065' OR "normalizedName" = 'lampe h4 diamax 24v e2065'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-ARCO-100V', NULL, 'BATTERIE ARCO 100V', 'batterie arco 100v', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1420000, 1570000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-ARCO-100V' OR "normalizedName" = 'batterie arco 100v'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LAVE-GLACE-PREMOGEL-5L', NULL, 'LAVE GLACE PREMOGEL 5L', 'lave glace premogel 5l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 18000, 30000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LAVE-GLACE-PREMOGEL-5L' OR "normalizedName" = 'lave glace premogel 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BOUJIE-ITEC-16MM', NULL, 'BOUJIE ITEC 16MM', 'boujie itec 16mm', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 120000, 150000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BOUJIE-ITEC-16MM' OR "normalizedName" = 'boujie itec 16mm'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-VARTA-74', NULL, 'BATTERIE VARTA 74', 'batterie varta 74', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1480000, 1630000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-VARTA-74' OR "normalizedName" = 'batterie varta 74'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LAMPE-2P-24V', NULL, 'LAMPE 2P 24V', 'lampe 2p 24v', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 12000, 20000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LAMPE-2P-24V' OR "normalizedName" = 'lampe 2p 24v'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BATTERIE-FORZA-60AH', NULL, 'BATTERIE FORZA 60AH', 'batterie forza 60ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 920000, 1070000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BATTERIE-FORZA-60AH' OR "normalizedName" = 'batterie forza 60ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BALI-SOUIGLACE-DJL-SPECIAL', NULL, 'BALI SOUIGLACE DJL SPECIAL', 'bali souiglace djl special', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 38000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BALI-SOUIGLACE-DJL-SPECIAL' OR "normalizedName" = 'bali souiglace djl special'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BALI-SOUIGLACE-STRING', NULL, 'BALI SOUIGLACE STRING', 'bali souiglace string', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 35000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BALI-SOUIGLACE-STRING' OR "normalizedName" = 'bali souiglace string'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BALI-SOUIGLACE-SPECIAL', NULL, 'BALI SOUIGLACE SPECIAL', 'bali souiglace special', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 65000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BALI-SOUIGLACE-SPECIAL' OR "normalizedName" = 'bali souiglace special'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LAMPE-KLAXCAR-H4-12V', NULL, 'LAMPE KLAXCAR H4 12V', 'lampe klaxcar h4 12v', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 40000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LAMPE-KLAXCAR-H4-12V' OR "normalizedName" = 'lampe klaxcar h4 12v'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PONJA', NULL, 'PONJA', 'ponja', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 10000, 15000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PONJA' OR "normalizedName" = 'ponja'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FA58', NULL, 'FILTRE VESTAL VS-FA58', 'filtre vestal vs-fa58', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 50000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FA58' OR "normalizedName" = 'filtre vestal vs-fa58'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VARTA-61V', NULL, 'BATTERIE VARTA 61V', 'batterie varta 61v', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1300000, 1450000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VARTA-61V' OR "normalizedName" = 'batterie varta 61v'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VISIBLE-1', NULL, 'VISIBLE 1', 'visible 1', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 400, 1000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VISIBLE-1' OR "normalizedName" = 'visible 1'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-MILLENIUM-110AH', NULL, 'BATTERIE MILLENIUM 110AH', 'batterie millenium 110ah', 'Batteries',
       'PCE', 'PCE', 1000, 0, 0, 1590000, 1740000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-MILLENIUM-110AH' OR "normalizedName" = 'batterie millenium 110ah'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-FA-1515-TH', NULL, 'FILTRE FA-1515 TH', 'filtre fa-1515 th', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 170000, 220000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-FA-1515-TH' OR "normalizedName" = 'filtre fa-1515 th'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-OS-485', NULL, 'FILTRE SAFI OS 485 1 12', 'filtre safi os 485 1 12', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 55000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-OS-485' OR "normalizedName" = 'filtre safi os 485 1 12'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-HAOGO-466634-3', NULL, 'FILTRE HAOGO 466634-3', 'filtre haogo 466634-3', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 95000, 120000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-HAOGO-466634-3' OR "normalizedName" = 'filtre haogo 466634-3'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PURFIN-SELLA', NULL, 'PURFIN SELLA', 'purfin sella', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 39000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PURFIN-SELLA' OR "normalizedName" = 'purfin sella'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PURFIN-AIR-PUR', NULL, 'PURFIN AIR PUR', 'purfin air pur', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 23000, 35000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PURFIN-AIR-PUR' OR "normalizedName" = 'purfin air pur'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LIQUI-MOLY-TOP-TEC-4100-5W40-5L', NULL, 'LIQUI MOLY TOP TEC 4100 5W40 5L', 'liqui moly top tec 4100 5w40 5l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 1420000, 1520000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LIQUI-MOLY-TOP-TEC-4100-5W40-5L' OR "normalizedName" = 'liqui moly top tec 4100 5w40 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-SPEEDFIRE-PLASTIQUE-500ML', NULL, 'SPEEDFIRE PLASTIQUE 500ML', 'speedfire plastique 500ml', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 16000, 40000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-SPEEDFIRE-PLASTIQUE-500ML' OR "normalizedName" = 'speedfire plastique 500ml'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-SPEEDFIRE-PLASTIGEL-500ML', NULL, 'SPEEDFIRE PLASTIGEL 500ML', 'speedfire plastigel 500ml', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 18000, 35000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-SPEEDFIRE-PLASTIGEL-500ML' OR "normalizedName" = 'speedfire plastigel 500ml'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LAVE-GLACE-EXTRA-POWER-2L', NULL, 'LAVE GLACE EXTRA POWER 2L', 'lave glace extra power 2l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 10000, 20000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LAVE-GLACE-EXTRA-POWER-2L' OR "normalizedName" = 'lave glace extra power 2l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-1L-OIL-7400', NULL, '1L OIL 7400', '1l oil 7400', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 37500, 75000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-1L-OIL-7400' OR "normalizedName" = '1l oil 7400'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-0-5L-OIL-TURBO-15W40-CH4HC', NULL, '0.5L OIL TURBO 15W40 CH4HC', '0.5l oil turbo 15w40 ch4hc', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 20500, 25000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-0-5L-OIL-TURBO-15W40-CH4HC' OR "normalizedName" = '0.5l oil turbo 15w40 ch4hc'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-1L-OIL-TURBO-15W40-CH4HC', NULL, '1L OIL TURBO 15W40 CH4HC', '1l oil turbo 15w40 ch4hc', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 41500, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-1L-OIL-TURBO-15W40-CH4HC' OR "normalizedName" = '1l oil turbo 15w40 ch4hc'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-0-5L-OIL-EP90', NULL, '0.5L OIL EP90', '0.5l oil ep90', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 19500, 25000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-0-5L-OIL-EP90' OR "normalizedName" = '0.5l oil ep90'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-1L-OIL-EP-90', NULL, '1L OIL EP 90', '1l oil ep 90', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 45000, 55000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-1L-OIL-EP-90' OR "normalizedName" = '1l oil ep 90'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-0-5L-OIL-10W-HEDROLIQUE', NULL, '0.5L OIL 10W HEDROLIQUE', '0.5l oil 10w hedrolique', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 19250, 22500, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-0-5L-OIL-10W-HEDROLIQUE' OR "normalizedName" = '0.5l oil 10w hedrolique'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-0-5L-OIL-HMD-40-SONATRACK', NULL, '0.5L OIL HMD 40 SONATRACK', '0.5l oil hmd 40 sonatrack', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 18000, 21000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-0-5L-OIL-HMD-40-SONATRACK' OR "normalizedName" = '0.5l oil hmd 40 sonatrack'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-1L-OIL-HMD-40-SONATRACK', NULL, '1L OIL HMD 40 SONATRACK', '1l oil hmd 40 sonatrack', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 40000, 48000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-1L-OIL-HMD-40-SONATRACK' OR "normalizedName" = '1l oil hmd 40 sonatrack'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-0-5L-OIL-HMD-40-TOTAL', NULL, '0.5L OIL HMD 40 TOTAL', '0.5l oil hmd 40 total', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 18250, 23000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-0-5L-OIL-HMD-40-TOTAL' OR "normalizedName" = '0.5l oil hmd 40 total'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-1L-OIL-HMD-40-TOTAL', NULL, '1L OIL HMD 40 TOTAL', '1l oil hmd 40 total', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 33000, 42000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-1L-OIL-HMD-40-TOTAL' OR "normalizedName" = '1l oil hmd 40 total'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-0-5L-OIL-HMD-40-NAFTAL', NULL, '0.5L OIL HMD 40 NAFTAL', '0.5l oil hmd 40 naftal', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 18000, 21000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-0-5L-OIL-HMD-40-NAFTAL' OR "normalizedName" = '0.5l oil hmd 40 naftal'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-1L-OIL-HMD-40-BARAKA', NULL, '1L OIL HMD 40 BARAKA', '1l oil hmd 40 baraka', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 32500, 42000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-1L-OIL-HMD-40-BARAKA' OR "normalizedName" = '1l oil hmd 40 baraka'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-0-5L-TOTAL-ALG-7400-15W40', NULL, '0.5L TOTAL ALG 7400 15W40', '0.5l total alg 7400 15w40', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 38500, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-0-5L-TOTAL-ALG-7400-15W40' OR "normalizedName" = '0.5l total alg 7400 15w40'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-0-5L-NAFTILIA-10W40-4L', NULL, '0.5L NAFTILIA 10W40 4L', '0.5l naftilia 10w40 4l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 38750, 47500, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-0-5L-NAFTILIA-10W40-4L' OR "normalizedName" = '0.5l naftilia 10w40 4l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-0-5L-ELF-FR-EVOLUTION-10W40', NULL, '0.5L ELF FR EVOLUTION 10W40', '0.5l elf fr evolution 10w40', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 55000, 62000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-0-5L-ELF-FR-EVOLUTION-10W40' OR "normalizedName" = '0.5l elf fr evolution 10w40'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-0-5L-LIQUI-MOLY-10W40', NULL, '0.5L LIQUI MOLY 10W40', '0.5l liqui moly 10w40', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 54000, 61000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-0-5L-LIQUI-MOLY-10W40' OR "normalizedName" = '0.5l liqui moly 10w40'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-MOUSSE-SULFOMAX', NULL, 'MOUSSE SULFOMAX', 'mousse sulfomax', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 350000, 0, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-MOUSSE-SULFOMAX' OR "normalizedName" = 'mousse sulfomax'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LOTOS-10W40-5L', NULL, 'LOTOS 10W40 5L', 'lotos 10w40 5l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 280000, 350000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LOTOS-10W40-5L' OR "normalizedName" = 'lotos 10w40 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-AUTO-PLUS-HDI-300-ML', NULL, 'AUTO PLUS HDI 300 ML', 'auto plus hdi 300 ml', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 160000, 180000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-AUTO-PLUS-HDI-300-ML' OR "normalizedName" = 'auto plus hdi 300 ml'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LIQUI-MOLY-10W40-5L', NULL, 'LIQUI MOLY 10W40 5L', 'liqui moly 10w40 5l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 660000, 760000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LIQUI-MOLY-10W40-5L' OR "normalizedName" = 'liqui moly 10w40 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-HAOGO-LF670', NULL, 'FILTRE HAOGO LF670', 'filtre haogo lf670', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 110000, 140000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-HAOGO-LF670' OR "normalizedName" = 'filtre haogo lf670'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-NISSAN-16405-01T70', NULL, 'FILTRE NISSAN 16405-01T70', 'filtre nissan 16405-01t70', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 60000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-NISSAN-16405-01T70' OR "normalizedName" = 'filtre nissan 16405-01t70'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-DOOSAN-65-12503-5016B', NULL, 'FILTRE DOOSAN 65.12503-5016B', 'filtre doosan 65.12503-5016b', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 50000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-DOOSAN-65-12503-5016B' OR "normalizedName" = 'filtre doosan 65.12503-5016b'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FS1212', NULL, 'FILTRE VESTAL FS1212', 'filtre vestal fs1212', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 50000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FS1212' OR "normalizedName" = 'filtre vestal fs1212'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-ELEMFIL-DF-1280', NULL, 'FILTRE ELEMFIL DF-1280', 'filtre elemfil df-1280', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 65000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-ELEMFIL-DF-1280' OR "normalizedName" = 'filtre elemfil df-1280'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-BF1-26300-35056', NULL, 'FILTRE BF1 26300-35056', 'filtre bf1 26300-35056', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 28000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-BF1-26300-35056' OR "normalizedName" = 'filtre bf1 26300-35056'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-HAOGO-26300-35056', NULL, 'FILTRE HAOGO 26300-35056', 'filtre haogo 26300-35056', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 28000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-HAOGO-26300-35056' OR "normalizedName" = 'filtre haogo 26300-35056'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GS-150-M16', NULL, 'FILTRE SAFI GS 150 M16', 'filtre safi gs 150 m16', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GS-150-M16' OR "normalizedName" = 'filtre safi gs 150 m16'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-HAOGO-FF4033', NULL, 'FILTRE HAOGO FF4033', 'filtre haogo ff4033', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 28000, 40000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-HAOGO-FF4033' OR "normalizedName" = 'filtre haogo ff4033'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FG02', NULL, 'FILTRE VESTAL VS-FG02', 'filtre vestal vs-fg02', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 35000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FG02' OR "normalizedName" = 'filtre vestal vs-fg02'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-HAOGO-CAV296', NULL, 'FILTRE HAOGO CAV296', 'filtre haogo cav296', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 28000, 40000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-HAOGO-CAV296' OR "normalizedName" = 'filtre haogo cav296'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FG03', NULL, 'FILTRE VESTAL VS-FG03', 'filtre vestal vs-fg03', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 32000, 40000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FG03' OR "normalizedName" = 'filtre vestal vs-fg03'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FG04', NULL, 'FILTRE VESTAL VS-FG04', 'filtre vestal vs-fg04', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FG04' OR "normalizedName" = 'filtre vestal vs-fg04'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-HAOGO-HJ0817-2', NULL, 'FILTRE HAOGO HJ0817-2', 'filtre haogo hj0817-2', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-HAOGO-HJ0817-2' OR "normalizedName" = 'filtre haogo hj0817-2'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-23390-YZZA1', NULL, 'FILTRE TOYOTA 23390-YZZA1', 'filtre toyota 23390-yzza1', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 60000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-23390-YZZA1' OR "normalizedName" = 'filtre toyota 23390-yzza1'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GBS-641', NULL, 'FILTRE AL SAFA GBS-641', 'filtre al safa gbs-641', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 50000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GBS-641' OR "normalizedName" = 'filtre al safa gbs-641'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-ZAOWEI-FAWOE-1117060-29DB', NULL, 'FILTRE ZAOWEI FAWOE 1117060-29DB', 'filtre zaowei fawoe 1117060-29db', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 36000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-ZAOWEI-FAWOE-1117060-29DB' OR "normalizedName" = 'filtre zaowei fawoe 1117060-29db'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FH73', NULL, 'FILTRE WEICHAI VS-FH73', 'filtre weichai vs-fh73', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 50000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FH73' OR "normalizedName" = 'filtre weichai vs-fh73'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-DEMANSEN-CX0815', NULL, 'FILTRE DEMANSEN CX0815', 'filtre demansen cx0815', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 36000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-DEMANSEN-CX0815' OR "normalizedName" = 'filtre demansen cx0815'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-SP-1366', NULL, 'FILTRE ALCO SP-1366', 'filtre alco sp-1366', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 110000, 150000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-SP-1366' OR "normalizedName" = 'filtre alco sp-1366'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-SP-1314', NULL, 'FILTRE ALCO SP-1314', 'filtre alco sp-1314', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 110000, 150000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-SP-1314' OR "normalizedName" = 'filtre alco sp-1314'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-SP-1294', NULL, 'FILTRE ALCO SP-1294', 'filtre alco sp-1294', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 160000, 210000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-SP-1294' OR "normalizedName" = 'filtre alco sp-1294'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FG09', NULL, 'FILTRE VESTAL VS-FG09', 'filtre vestal vs-fg09', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 50000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FG09' OR "normalizedName" = 'filtre vestal vs-fg09'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FG41', NULL, 'FILTRE VESTAL VS-FG41', 'filtre vestal vs-fg41', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FG41' OR "normalizedName" = 'filtre vestal vs-fg41'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-BF1-31973-44001', NULL, 'FILTRE BF1 31973-44001', 'filtre bf1 31973-44001', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-BF1-31973-44001' OR "normalizedName" = 'filtre bf1 31973-44001'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FH49', NULL, 'FILTRE VESTAL VS-FH49', 'filtre vestal vs-fh49', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 120000, 180000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FH49' OR "normalizedName" = 'filtre vestal vs-fh49'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-BESIB-26316-93000', NULL, 'FILTRE BESIB 26316-93000', 'filtre besib 26316-93000', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 120000, 180000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-BESIB-26316-93000' OR "normalizedName" = 'filtre besib 26316-93000'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-TOYOTA-23390-64450', NULL, 'FILTRE TOYOTA 23390-64450', 'filtre toyota 23390-64450', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 42000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-TOYOTA-23390-64450' OR "normalizedName" = 'filtre toyota 23390-64450'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-TOYOTA-04152-31090', NULL, 'FILTRE TOYOTA 04152-31090', 'filtre toyota 04152-31090', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 50000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-TOYOTA-04152-31090' OR "normalizedName" = 'filtre toyota 04152-31090'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-TOYOTA-04152-B1010', NULL, 'FILTRE TOYOTA 04152-B1010', 'filtre toyota 04152-b1010', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 42000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-TOYOTA-04152-B1010' OR "normalizedName" = 'filtre toyota 04152-b1010'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-ELEMFIL-1', NULL, 'FILTRE ELEMFIL 1', 'filtre elemfil 1', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 42000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-ELEMFIL-1' OR "normalizedName" = 'filtre elemfil 1'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-REALSTON-ISO-TS-16949', NULL, 'FILTRE REALSTON ISO/TS 16949', 'filtre realston iso/ts 16949', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 42000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-REALSTON-ISO-TS-16949' OR "normalizedName" = 'filtre realston iso/ts 16949'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-GRAB-SONALIKA', NULL, 'FILTRE GRAB SONALIKA', 'filtre grab sonalika', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 70000, 100000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-GRAB-SONALIKA' OR "normalizedName" = 'filtre grab sonalika'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GS-203M16', NULL, 'FILTRE SAFI GS203M16', 'filtre safi gs203m16', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 36000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GS-203M16' OR "normalizedName" = 'filtre safi gs203m16'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-JAC-NAVISTAR-4000-211-315', NULL, 'FILTRE JAC NAVISTAR 4000-211-315', 'filtre jac navistar 4000-211-315', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 55000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-JAC-NAVISTAR-4000-211-315' OR "normalizedName" = 'filtre jac navistar 4000-211-315'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS1014112FA04', NULL, 'FILTRE VESTAL VS1014112FA04', 'filtre vestal vs1014112fa04', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 55000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS1014112FA04' OR "normalizedName" = 'filtre vestal vs1014112fa04'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FG27', NULL, 'FILTRE VESTAL VS-FG27', 'filtre vestal vs-fg27', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 32000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FG27' OR "normalizedName" = 'filtre vestal vs-fg27'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-GOLDFIL-FF226', NULL, 'FILTRE GOLDFIL FF226', 'filtre goldfil ff226', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 32000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-GOLDFIL-FF226' OR "normalizedName" = 'filtre goldfil ff226'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-HAOGO-300080079', NULL, 'FILTRE HAOGO 300080079', 'filtre haogo 300080079', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 32000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-HAOGO-300080079' OR "normalizedName" = 'filtre haogo 300080079'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-GOLDFIL-SAFA066', NULL, 'FILTRE GOLDFIL SAFA066', 'filtre goldfil safa066', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 32000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-GOLDFIL-SAFA066' OR "normalizedName" = 'filtre goldfil safa066'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GBS-604', NULL, 'FILTRE ALSAFA GBS-604', 'filtre alsafa gbs-604', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 36000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GBS-604' OR "normalizedName" = 'filtre alsafa gbs-604'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-VESTAL-LF9001', NULL, 'FILTRE VESTAL- LF9001', 'filtre vestal- lf9001', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 130000, 200000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-VESTAL-LF9001' OR "normalizedName" = 'filtre vestal- lf9001'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-PIONEER-LF670', NULL, 'FILTRE PIONEER LF670', 'filtre pioneer lf670', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 120000, 150000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-PIONEER-LF670' OR "normalizedName" = 'filtre pioneer lf670'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-61000070005-00', NULL, 'FILTRE WEICHAI 61000070005', 'filtre weichai 61000070005', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 60000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-61000070005-00' OR "normalizedName" = 'filtre weichai 61000070005'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-ONFIL-1545-S-A', NULL, 'FILTRE ONFIL 1545 S/A', 'filtre onfil 1545 s/a', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 145000, 190000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-ONFIL-1545-S-A' OR "normalizedName" = 'filtre onfil 1545 s/a'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-ONFIL-EF-2112-M-B-PL', NULL, 'FILTRE ONFIL EF 2112 M/B PL', 'filtre onfil ef 2112 m/b pl', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 180000, 220000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-ONFIL-EF-2112-M-B-PL' OR "normalizedName" = 'filtre onfil ef 2112 m/b pl'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-A-AIR-5', NULL, 'FILTRE A AIR 5', 'filtre a air 5', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 350000, 450000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-A-AIR-5' OR "normalizedName" = 'filtre a air 5'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-ARTICLE-4', NULL, 'FILTRE', 'filtre', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 100000, 130000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-ARTICLE-4' OR "normalizedName" = 'filtre'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-A-AIR-4', NULL, 'FILTRE A AIR 4', 'filtre a air 4', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 200000, 280000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-A-AIR-4' OR "normalizedName" = 'filtre a air 4'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FAP-5005-JX', NULL, 'FILTRE FAP-5005 JX', 'filtre fap-5005 jx', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 450000, 550000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FAP-5005-JX' OR "normalizedName" = 'filtre fap-5005 jx'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FA27', NULL, 'FILTRE VESTAL VS-FA27', 'filtre vestal vs-fa27', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 85000, 130000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FA27' OR "normalizedName" = 'filtre vestal vs-fa27'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-FILMAX-AF-2117', NULL, 'FILTRE FILMAX AF 2117', 'filtre filmax af 2117', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 130000, 160000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-FILMAX-AF-2117' OR "normalizedName" = 'filtre filmax af 2117'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-A-AIR-3', NULL, 'FILTRE A AIR 3', 'filtre a air 3', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 200000, 280000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-A-AIR-3' OR "normalizedName" = 'filtre a air 3'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-FA-1506', NULL, 'FILTRE FA-1506', 'filtre fa-1506', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 100000, 140000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-FA-1506' OR "normalizedName" = 'filtre fa-1506'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FA50', NULL, 'FILTRE VESTAL VS-FA50', 'filtre vestal vs-fa50', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 55000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FA50' OR "normalizedName" = 'filtre vestal vs-fa50'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-AIR-2', NULL, 'FILTRE AIR 2', 'filtre air 2', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 280000, 350000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-AIR-2' OR "normalizedName" = 'filtre air 2'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-COSTER-17801-54180', NULL, 'FILTRE COSTER 17801-54180', 'filtre coster 17801-54180', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 50000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-COSTER-17801-54180' OR "normalizedName" = 'filtre coster 17801-54180'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-VESTAL-VS-FA43', NULL, 'FILTRE VESTAL VS-FA43', 'filtre vestal vs-fa43', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 75000, 110000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-VESTAL-VS-FA43' OR "normalizedName" = 'filtre vestal vs-fa43'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-MD-7514', NULL, 'FILTRE ALCO MD-7514', 'filtre alco md-7514', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 220000, 250000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-MD-7514' OR "normalizedName" = 'filtre alco md-7514'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-DIAMAX-DL1005', NULL, 'FILTRE DIAMAX DL1005', 'filtre diamax dl1005', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 33000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-DIAMAX-DL1005' OR "normalizedName" = 'filtre diamax dl1005'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-WIX-WL7424', NULL, 'FILTRE WIX WL7424', 'filtre wix wl7424', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 29000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-WIX-WL7424' OR "normalizedName" = 'filtre wix wl7424'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-ELEMFIL-HU726-2X', NULL, 'FILTRE ELEMFIL HU726/2X', 'filtre elemfil hu726/2x', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 22000, 40000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-ELEMFIL-HU726-2X' OR "normalizedName" = 'filtre elemfil hu726/2x'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-HYUNDAI-26320-2F000', NULL, 'FILTRE HYUNDAI 26320 2F000', 'filtre hyundai 26320 2f000', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 48000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-HYUNDAI-26320-2F000' OR "normalizedName" = 'filtre hyundai 26320 2f000'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-HYUNDAI-26320-2A500', NULL, 'FILTRE HYUNDAI 26320-2A500', 'filtre hyundai 26320-2a500', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 60000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-HYUNDAI-26320-2A500' OR "normalizedName" = 'filtre hyundai 26320-2a500'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-KIA-26320-3C30A', NULL, 'FILTRE KIA 26320-3C30A', 'filtre kia 26320-3c30a', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 60000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-KIA-26320-3C30A' OR "normalizedName" = 'filtre kia 26320-3c30a'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FH64', NULL, 'FILTRE VESTAL VS-FH64', 'filtre vestal vs-fh64', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 35000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FH64' OR "normalizedName" = 'filtre vestal vs-fh64'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FH04', NULL, 'FILTRE VESTAL VS-FH04', 'filtre vestal vs-fh04', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FH04' OR "normalizedName" = 'filtre vestal vs-fh04'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-ELEMFIL-DO4322', NULL, 'FILTRE ELEMFIL DO4322', 'filtre elemfil do4322', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 32000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-ELEMFIL-DO4322' OR "normalizedName" = 'filtre elemfil do4322'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-RENAULT-GROUPX1', NULL, 'FILTRE RENAULT GROUPX1', 'filtre renault groupx1', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-RENAULT-GROUPX1' OR "normalizedName" = 'filtre renault groupx1'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS2007GLF5', NULL, 'FILTRE VESTAL VS2007GLF5', 'filtre vestal vs2007glf5', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 36000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS2007GLF5' OR "normalizedName" = 'filtre vestal vs2007glf5'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-TECNO-T-WA9496', NULL, 'FILTRE TECNO T-WA9496', 'filtre tecno t-wa9496', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 37000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-TECNO-T-WA9496' OR "normalizedName" = 'filtre tecno t-wa9496'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-HEXEN-OC-3018', NULL, 'FILTRE HEXEN OC 3018', 'filtre hexen oc 3018', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 85000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-HEXEN-OC-3018' OR "normalizedName" = 'filtre hexen oc 3018'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-CS-31110', NULL, 'FILTRE CS-31110', 'filtre cs-31110', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-CS-31110' OR "normalizedName" = 'filtre cs-31110'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-DIAMAX-DL1004', NULL, 'FILTRE DIAMAX DL1004', 'filtre diamax dl1004', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 33000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-DIAMAX-DL1004' OR "normalizedName" = 'filtre diamax dl1004'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-WF8300', NULL, 'FILTRE VESTAL WF8300', 'filtre vestal wf8300', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 32000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-WF8300' OR "normalizedName" = 'filtre vestal wf8300'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS666-2-4STR', NULL, 'FILTRE VESTAL VS666/2 4STR', 'filtre vestal vs666/2 4str', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 29000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS666-2-4STR' OR "normalizedName" = 'filtre vestal vs666/2 4str'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-AMC-MO-401', NULL, 'FILTRE AMC MO 401', 'filtre amc mo 401', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-AMC-MO-401' OR "normalizedName" = 'filtre amc mo 401'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-REALSTON-2F000', NULL, 'FILTRE REALSTON 2F000', 'filtre realston 2f000', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 48000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-REALSTON-2F000' OR "normalizedName" = 'filtre realston 2f000'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-HYUNDAI-26320-2A500-2', NULL, 'FILTRE HYUNDAI 26320 2A500', 'filtre hyundai 26320 2a500', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 48000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-HYUNDAI-26320-2A500-2' OR "normalizedName" = 'filtre hyundai 26320 2a500'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-HAN-H02-DW014', NULL, 'FILTRE HAN H02-DW014', 'filtre han h02-dw014', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-HAN-H02-DW014' OR "normalizedName" = 'filtre han h02-dw014'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-DIAMAX-DL1009', NULL, 'FILTRE DIAMAX DL1009', 'filtre diamax dl1009', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 33000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-DIAMAX-DL1009' OR "normalizedName" = 'filtre diamax dl1009'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS1906-E6', NULL, 'FILTRE VESTAL VS1906.E6', 'filtre vestal vs1906.e6', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 110000, 180000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS1906-E6' OR "normalizedName" = 'filtre vestal vs1906.e6'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-C-2750-LF-3328', NULL, 'FILTRE C-2750 LF 3328', 'filtre c-2750 lf 3328', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 56000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-C-2750-LF-3328' OR "normalizedName" = 'filtre c-2750 lf 3328'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-OS-475', NULL, 'FILTRE SAFI OS 475', 'filtre safi os 475', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 49000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-OS-475' OR "normalizedName" = 'filtre safi os 475'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-OBS-171-M24X2', NULL, 'FILTRE ALSAFA OBS-171 M24X2', 'filtre alsafa obs-171 m24x2', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 59000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-OBS-171-M24X2' OR "normalizedName" = 'filtre alsafa obs-171 m24x2'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-ATQ-GUERMANY-IVECO-7701035650', NULL, 'FILTRE ATQ GUERMANY IVECO 7701035650', 'filtre atq guermany iveco 7701035650', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 90000, 110000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-ATQ-GUERMANY-IVECO-7701035650' OR "normalizedName" = 'filtre atq guermany iveco 7701035650'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FH-900', NULL, 'FILTRE FH 900', 'filtre fh 900', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 90000, 120000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FH-900' OR "normalizedName" = 'filtre fh 900'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-OBS-107', NULL, 'FILTRE ALSAFA OBS-107', 'filtre alsafa obs-107', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 37000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-OBS-107' OR "normalizedName" = 'filtre alsafa obs-107'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-OS-474-1-12', NULL, 'FILTRE SAFI OS 474 1 12', 'filtre safi os 474 1 12', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 49000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-OS-474-1-12' OR "normalizedName" = 'filtre safi os 474 1 12'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-ICLC-101200JI-DFM', NULL, 'FILTRE ICLC 101200JI DFM', 'filtre iclc 101200ji dfm', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 34000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-ICLC-101200JI-DFM' OR "normalizedName" = 'filtre iclc 101200ji dfm'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-HUANQUI-UJ-010-JX0604', NULL, 'FILTRE HUANQUI UJ-010 JX0604', 'filtre huanqui uj-010 jx0604', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 34000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-HUANQUI-UJ-010-JX0604' OR "normalizedName" = 'filtre huanqui uj-010 jx0604'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-GUARD-HIGH-QUALITY', NULL, 'FILTRE GUARD HIGH QUALITY', 'filtre guard high quality', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 34000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-GUARD-HIGH-QUALITY' OR "normalizedName" = 'filtre guard high quality'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-OS-489-M20', NULL, 'FILTRE SAFI OS 489 M20', 'filtre safi os 489 m20', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 47000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-OS-489-M20' OR "normalizedName" = 'filtre safi os 489 m20'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-03N-115-466', NULL, 'FILTRE VOLLKSWAGEN GROUP OEKO 03N 115 466', 'filtre vollkswagen group oeko 03n 115 466', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-03N-115-466' OR "normalizedName" = 'filtre vollkswagen group oeko 03n 115 466'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FH30', NULL, 'FILTRE VESTAL VS-FH30', 'filtre vestal vs-fh30', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 33000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FH30' OR "normalizedName" = 'filtre vestal vs-fh30'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FH-901', NULL, 'FILTRE FH 901', 'filtre fh 901', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 68000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FH-901' OR "normalizedName" = 'filtre fh 901'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-CS-TURBO-477556-5', NULL, 'FILTRE CS TURBO 477556-5', 'filtre cs turbo 477556-5', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 110000, 140000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-CS-TURBO-477556-5' OR "normalizedName" = 'filtre cs turbo 477556-5'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-GOLD-FIL-JX0814', NULL, 'FILTRE GOLD FIL JX0814', 'filtre gold fil jx0814', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 38000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-GOLD-FIL-JX0814' OR "normalizedName" = 'filtre gold fil jx0814'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-WEICHAI-13055724', NULL, 'FILTRE WEICHAI 13055724', 'filtre weichai 13055724', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 72000, 120000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-WEICHAI-13055724' OR "normalizedName" = 'filtre weichai 13055724'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-CS-8200004835', NULL, 'FILTRE CS 8200004835', 'filtre cs 8200004835', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-CS-8200004835' OR "normalizedName" = 'filtre cs 8200004835'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GRAISSE-ASSIA-15KG', NULL, 'GRAISSE ASSIA 15KG', 'graisse assia 15kg', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 920000, 1020000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GRAISSE-ASSIA-15KG' OR "normalizedName" = 'graisse assia 15kg'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GRAISSE-OLIPS-15-KG', NULL, 'GRAISSE OLIPS 15 KG', 'graisse olips 15 kg', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 880000, 1000000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GRAISSE-OLIPS-15-KG' OR "normalizedName" = 'graisse olips 15 kg'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GRAISSE-DMG-15KG', NULL, 'GRAISSE DMG 15KG', 'graisse dmg 15kg', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 920000, 1000000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GRAISSE-DMG-15KG' OR "normalizedName" = 'graisse dmg 15kg'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-GRAISSE-NEX-15-KG', NULL, 'GRAISSE NEX 15 KG', 'graisse nex 15 kg', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 280000, 380000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-GRAISSE-NEX-15-KG' OR "normalizedName" = 'graisse nex 15 kg'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-SGREASE-15KG', NULL, 'SGREASE 15KG', 'sgrease 15kg', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 850000, 950000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-SGREASE-15KG' OR "normalizedName" = 'sgrease 15kg'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-ADBLUE-ROWE-10L', NULL, 'ADBLUE ROWE 10L', 'adblue rowe 10l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 290000, 360000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-ADBLUE-ROWE-10L' OR "normalizedName" = 'adblue rowe 10l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-CHIFA-CHILIA-SAE-40-5L', NULL, 'CHIFA CHILIA SAE 40 5L', 'chifa chilia sae 40 5l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 220000, 290000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-CHIFA-CHILIA-SAE-40-5L' OR "normalizedName" = 'chifa chilia sae 40 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-NAFTILIA-VPS-SAE-15W-40-5L', NULL, 'NAFTILIA VPS SAE 15W-40 5L', 'naftilia vps sae 15w-40 5l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 305000, 360000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-NAFTILIA-VPS-SAE-15W-40-5L' OR "normalizedName" = 'naftilia vps sae 15w-40 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-ELF-FR-15W-40-5L', NULL, 'ELF FR 15W-40 5L', 'elf fr 15w-40 5l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 415000, 490000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-ELF-FR-15W-40-5L' OR "normalizedName" = 'elf fr 15w-40 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-0-5L-TOTAL-ALG-5W40', NULL, '0.5L TOTAL ALG 5w40', '0.5l total alg 5w40', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 50000, 55000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-0-5L-TOTAL-ALG-5W40' OR "normalizedName" = '0.5l total alg 5w40'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TOTAL-SAE-40-5L-S', NULL, 'TOTAL SAE 40 5L S', 'total sae 40 5l s', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 250000, 320000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TOTAL-SAE-40-5L-S' OR "normalizedName" = 'total sae 40 5l s'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-CHELIA-TURBO-SAE-15W-40-5L-ALG', NULL, 'CHELIA TURBO SAE 15W-40 5L ALG', 'chelia turbo sae 15w-40 5l alg', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 305000, 360000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-CHELIA-TURBO-SAE-15W-40-5L-ALG' OR "normalizedName" = 'chelia turbo sae 15w-40 5l alg'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TOTAL-ALG-7400-15W-40-5L', NULL, 'TOTAL ALG 7400 15W-40 5L', 'total alg 7400 15w-40 5l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 385000, 440000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TOTAL-ALG-7400-15W-40-5L' OR "normalizedName" = 'total alg 7400 15w-40 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TOTAL-ALG-5000-15W-40-5L', NULL, 'TOTAL ALG 5000 15W-40 5L', 'total alg 5000 15w-40 5l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 345000, 415000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TOTAL-ALG-5000-15W-40-5L' OR "normalizedName" = 'total alg 5000 15w-40 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-CASTROL-GTX-15W-40-5L', NULL, 'CASTROL GTX 15W-40 5L', 'castrol gtx 15w-40 5l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 540000, 610000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-CASTROL-GTX-15W-40-5L' OR "normalizedName" = 'castrol gtx 15w-40 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-HELIOS-SAE-15W-40-5L', NULL, 'HELIOS SAE 15W-40 5L', 'helios sae 15w-40 5l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 370000, 440000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-HELIOS-SAE-15W-40-5L' OR "normalizedName" = 'helios sae 15w-40 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-CASTROL-GTX-10W-40-5L', NULL, 'CASTROL GTX 10W-40 5L', 'castrol gtx 10w-40 5l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 800000, 850000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-CASTROL-GTX-10W-40-5L' OR "normalizedName" = 'castrol gtx 10w-40 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-ROWE-10W-40-5L', NULL, 'ROWE 10W-40 5L', 'rowe 10w-40 5l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 390000, 495000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-ROWE-10W-40-5L' OR "normalizedName" = 'rowe 10w-40 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-ELF-FR-10W-40-5L', NULL, 'ELF FR 10W-40 5L', 'elf fr 10w-40 5l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 930000, 1020000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-ELF-FR-10W-40-5L' OR "normalizedName" = 'elf fr 10w-40 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TOTAL-FR-10W-40-5L', NULL, 'TOTAL FR 10W-40 5L', 'total fr 10w-40 5l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 760000, 860000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TOTAL-FR-10W-40-5L' OR "normalizedName" = 'total fr 10w-40 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-CASTROL-PROFISSIONAL-10W-40-5L', NULL, 'CASTROL PROFISSIONAL 10W-40 5L', 'castrol profissional 10w-40 5l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 248000, 380000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-CASTROL-PROFISSIONAL-10W-40-5L' OR "normalizedName" = 'castrol profissional 10w-40 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-NAFTILIA-SYNT-10W-40-4L', NULL, 'NAFTILIA SYNT 10W-40 4L', 'naftilia synt 10w-40 4l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 385000, 455000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-NAFTILIA-SYNT-10W-40-4L' OR "normalizedName" = 'naftilia synt 10w-40 4l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-ABRO-STOP-LEAK', NULL, 'ABRO STOP LEAK', 'abro stop leak', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 17000, 30000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-ABRO-STOP-LEAK' OR "normalizedName" = 'abro stop leak'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-KAFUTENG', NULL, 'KAFUTENG', 'kafuteng', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 42000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-KAFUTENG' OR "normalizedName" = 'kafuteng'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-AR', NULL, 'PURFIN AR', 'purfin ar', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 12000, 25000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-AR' OR "normalizedName" = 'purfin ar'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PURFIN-XTRA', NULL, 'PURFIN XTRA', 'purfin xtra', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 45000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PURFIN-XTRA' OR "normalizedName" = 'purfin xtra'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BOUJIE-SPARK-PLUG-21-MM', NULL, 'BOUJIE SPARK PLUG 21 MM', 'boujie spark plug 21 mm', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 95000, 150000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BOUJIE-SPARK-PLUG-21-MM' OR "normalizedName" = 'boujie spark plug 21 mm'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-CHATROUTON-NOIR', NULL, 'CHATROUTON NOIR', 'chatrouton noir', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 5000, 8000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-CHATROUTON-NOIR' OR "normalizedName" = 'chatrouton noir'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PURFIN-FOURIR', NULL, 'PURFIN FOURIR', 'purfin fourir', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 25000, 30000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PURFIN-FOURIR' OR "normalizedName" = 'purfin fourir'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-MINIATURE', NULL, 'PURFIN MINIATURE', 'purfin miniature', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 40000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-MINIATURE' OR "normalizedName" = 'purfin miniature'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-REINZOSIL-70-ML', NULL, 'REINZOSIL 70 ML', 'reinzosil 70 ml', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 80000, 95000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-REINZOSIL-70-ML' OR "normalizedName" = 'reinzosil 70 ml'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FEVICOL-24ML', NULL, 'FEVICOL 24ML', 'fevicol 24ml', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 30000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FEVICOL-24ML' OR "normalizedName" = 'fevicol 24ml'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-EPOXY-STICK', NULL, 'EPOXY STICK', 'epoxy stick', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 25000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-EPOXY-STICK' OR "normalizedName" = 'epoxy stick'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-ADBLUE-DEF-2L', NULL, 'ADBLUE /DEF 2L', 'adblue /def 2l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 78000, 130000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-ADBLUE-DEF-2L' OR "normalizedName" = 'adblue /def 2l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-RHEINOL-FOUKE-4T-10W-40-1L', NULL, 'RHEINOL FOUKE 4T 10W-40 1L', 'rheinol fouke 4t 10w-40 1l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 105000, 125000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-RHEINOL-FOUKE-4T-10W-40-1L' OR "normalizedName" = 'rheinol fouke 4t 10w-40 1l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LOTOS-SAE-10W-40-1L', NULL, 'LOTOS SAE 10W-40 1L', 'lotos sae 10w-40 1l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 65000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LOTOS-SAE-10W-40-1L' OR "normalizedName" = 'lotos sae 10w-40 1l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TOTAL-10W-40-1L', NULL, 'TOTAL 10W-40 1L', 'total 10w-40 1l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 110000, 130000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TOTAL-10W-40-1L' OR "normalizedName" = 'total 10w-40 1l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-ELF-700-ST-10W-40-1L', NULL, 'ELF 700 ST 10W-40 1L', 'elf 700 st 10w-40 1l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 103000, 120000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-ELF-700-ST-10W-40-1L' OR "normalizedName" = 'elf 700 st 10w-40 1l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-ROWE-SYNT-RSI-5W40-5L', NULL, 'ROWE SYNT RSI 5W40 5L', 'rowe synt rsi 5w40 5l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 480000, 550000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-ROWE-SYNT-RSI-5W40-5L' OR "normalizedName" = 'rowe synt rsi 5w40 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VOLKSWAGEN-SAE-5W-40-5L', NULL, 'VOLKSWAGEN SAE 5W-40 5L', 'volkswagen sae 5w-40 5l', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 585000, 660000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VOLKSWAGEN-SAE-5W-40-5L' OR "normalizedName" = 'volkswagen sae 5w-40 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TOTAL-QUARTZ-FR-5W-40-5L', NULL, 'TOTAL QUARTZ FR 5W-40 5L', 'total quartz fr 5w-40 5l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 930000, 1100000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TOTAL-QUARTZ-FR-5W-40-5L' OR "normalizedName" = 'total quartz fr 5w-40 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-ELF-ALG-900-SXR-5W-40-5L', NULL, 'ELF ALG 900 SXR 5W-40 5L', 'elf alg 900 sxr 5w-40 5l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 550000, 620000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-ELF-ALG-900-SXR-5W-40-5L' OR "normalizedName" = 'elf alg 900 sxr 5w-40 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-NAFTILA-SYNT-ECO-5W-30-5L', NULL, 'NAFTILA SYNT ECO 5W-30 5L', 'naftila synt eco 5w-30 5l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 385000, 455000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-NAFTILA-SYNT-ECO-5W-30-5L' OR "normalizedName" = 'naftila synt eco 5w-30 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-CASTROL-EDGE-5W-30-5L', NULL, 'CASTROL EDGE 5W-30 5L', 'castrol edge 5w-30 5l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 1630000, 1750000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-CASTROL-EDGE-5W-30-5L' OR "normalizedName" = 'castrol edge 5w-30 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-CASTROL-EDGE-5W-40-5L', NULL, 'CASTROL EDGE 5W-40 5L', 'castrol edge 5w-40 5l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 930000, 1080000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-CASTROL-EDGE-5W-40-5L' OR "normalizedName" = 'castrol edge 5w-40 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BOITE-PHERMACIE', NULL, 'BOITE PHERMACIE', 'boite phermacie', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 50000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BOITE-PHERMACIE' OR "normalizedName" = 'boite phermacie'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TRIANGLE-DE-EN-PANNE', NULL, 'TRIANGLE DE EN-PANNE', 'triangle de en-panne', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 28000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TRIANGLE-DE-EN-PANNE' OR "normalizedName" = 'triangle de en-panne'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-WYNNS-OCTAN-10', NULL, 'WYNNS OCTAN 10+', 'wynns octan 10+', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 160000, 180000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-WYNNS-OCTAN-10' OR "normalizedName" = 'wynns octan 10+'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-QUEENS-OCTAN-10', NULL, 'QUEENS OCTAN 10+', 'queens octan 10+', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 24000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-QUEENS-OCTAN-10' OR "normalizedName" = 'queens octan 10+'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-QUEENS-DIESEL-PLUS-300-ML', NULL, 'QUEENS DIESEL PLUS 300 ML', 'queens diesel plus 300 ml', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 24000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-QUEENS-DIESEL-PLUS-300-ML' OR "normalizedName" = 'queens diesel plus 300 ml'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-WYNNS-SOUDURE-BLOC-MOTEUR', NULL, 'WYNNS SOUDURE BLOC MOTEUR', 'wynns soudure bloc moteur', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 270000, 290000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-WYNNS-SOUDURE-BLOC-MOTEUR' OR "normalizedName" = 'wynns soudure bloc moteur'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TOTAL-75W-80-1L', NULL, 'TOTAL 75W-80 1L', 'total 75w-80 1l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 95000, 120000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TOTAL-75W-80-1L' OR "normalizedName" = 'total 75w-80 1l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-ELF-75W-80-1L', NULL, 'ELF 75W-80 1L', 'elf 75w-80 1l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 100000, 130000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-ELF-75W-80-1L' OR "normalizedName" = 'elf 75w-80 1l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-DEGRIPANT-WIPER', NULL, 'DEGRIPANT WIPER', 'degripant wiper', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 18500, 30000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-DEGRIPANT-WIPER' OR "normalizedName" = 'degripant wiper'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-4D-120-ML', NULL, '4D 120 ML', '4d 120 ml', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 12500, 25000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-4D-120-ML' OR "normalizedName" = '4d 120 ml'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TOTAL-HBF-3-1L', NULL, 'TOTAL HBF 3 1L', 'total hbf 3 1l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 59000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TOTAL-HBF-3-1L' OR "normalizedName" = 'total hbf 3 1l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TOTAL-HBF-4-1L', NULL, 'TOTAL HBF 4 1L', 'total hbf 4 1l', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 59000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TOTAL-HBF-4-1L' OR "normalizedName" = 'total hbf 4 1l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-ATF-900-ML', NULL, 'ATF 900 ML', 'atf 900 ml', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 42000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-ATF-900-ML' OR "normalizedName" = 'atf 900 ml'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-DCI-DYNAMIC-DIESEL', NULL, 'DCI DYNAMIC DIESEL', 'dci dynamic diesel', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 120000, 150000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-DCI-DYNAMIC-DIESEL' OR "normalizedName" = 'dci dynamic diesel'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-M', NULL, 'MKKK', 'mkkk', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 65000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-M' OR "normalizedName" = 'mkkk'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PROFI-CAR-ESS-DIESEL-250ML', NULL, 'PROFI-CAR ESS -DIESEL 250ML', 'profi-car ess -diesel 250ml', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 115000, 140000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PROFI-CAR-ESS-DIESEL-250ML' OR "normalizedName" = 'profi-car ess -diesel 250ml'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-POWER-PLUS-ESS', NULL, 'POWER PLUS ESS', 'power plus ess', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 18000, 40000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-POWER-PLUS-ESS' OR "normalizedName" = 'power plus ess'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-ABRO-OIL-TRAITEMENT', NULL, 'ABRO OIL TRAITEMENT', 'abro oil traitement', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 160000, 220000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-ABRO-OIL-TRAITEMENT' OR "normalizedName" = 'abro oil traitement'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FLUID-DOT-3', NULL, 'BRAKE FLUID DOT3', 'brake fluid dot3', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 30000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FLUID-DOT-3' OR "normalizedName" = 'brake fluid dot3'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-ARTICLE-5', NULL, '55+ DOT 4 PILOT', '55+ dot 4 pilot', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 29000, 40000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-ARTICLE-5' OR "normalizedName" = '55+ dot 4 pilot'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-55-LUXOIL', NULL, '55 LUXOIL', '55 luxoil', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 30000, 40000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-55-LUXOIL' OR "normalizedName" = '55 luxoil'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-ARTICLE-6', NULL, '55+ DOT 4 FRENDON', '55+ dot 4 frendon', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 27000, 40000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-ARTICLE-6' OR "normalizedName" = '55+ dot 4 frendon'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-DOT-3-SOVEX', NULL, 'DOT 3 SOVEX', 'dot 3 sovex', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 27000, 40000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-DOT-3-SOVEX' OR "normalizedName" = 'dot 3 sovex'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-MOTUL-ESS-CLEANER-300-ML', NULL, 'MOTUL ESS CLEANER 300 ML', 'motul ess cleaner 300 ml', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 68000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-MOTUL-ESS-CLEANER-300-ML' OR "normalizedName" = 'motul ess cleaner 300 ml'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BARDAHL-NETTOYANT-INJECTEUR-300-ML', NULL, 'BARDAHL NETTOYANT INJECTEUR 300 ML', 'bardahl nettoyant injecteur 300 ml', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 66000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BARDAHL-NETTOYANT-INJECTEUR-300-ML' OR "normalizedName" = 'bardahl nettoyant injecteur 300 ml'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FLUSH-PLUS', NULL, 'LIQUI MOLY FLUSH PLUS', 'liqui moly flush plus', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 120000, 150000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FLUSH-PLUS' OR "normalizedName" = 'liqui moly flush plus'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-MEGUIN-STOPE-FUITE-250-ML', NULL, 'MéGUIN STOPE FUITE 250 ML', 'meguin stope fuite 250 ml', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 72000, 95000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-MEGUIN-STOPE-FUITE-250-ML' OR "normalizedName" = 'meguin stope fuite 250 ml'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LIQUI-MOLY-OIL-ADDITIVE', NULL, 'LIQUI MOLY OIL ADDITIVE', 'liqui moly oil additive', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 140000, 160000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LIQUI-MOLY-OIL-ADDITIVE' OR "normalizedName" = 'liqui moly oil additive'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LIQUI-MOLY-5W30', NULL, 'LIQUI MOLY 5W30', 'liqui moly 5w30', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 1500000, 1650000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LIQUI-MOLY-5W30' OR "normalizedName" = 'liqui moly 5w30'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LINGETTE-CALINO', NULL, 'LINGETTE CALINO', 'lingette calino', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 13000, 20000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LINGETTE-CALINO' OR "normalizedName" = 'lingette calino'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LINJETTE-MINDA', NULL, 'LINJETTE MINDA', 'linjette minda', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 9000, 15000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LINJETTE-MINDA' OR "normalizedName" = 'linjette minda'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PURFIN-AMBII-SENS-250-ML', NULL, 'PURFIN AMBII SENS 250 ML', 'purfin ambii sens 250 ml', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 36000, 40000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PURFIN-AMBII-SENS-250-ML' OR "normalizedName" = 'purfin ambii sens 250 ml'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PURFIN-AMBI-SENS-300-ML', NULL, 'PURFIN AMBI SENS 300 ML', 'purfin ambi sens 300 ml', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 21000, 30000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PURFIN-AMBI-SENS-300-ML' OR "normalizedName" = 'purfin ambi sens 300 ml'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PURFIN-LORAGE', NULL, 'PURFIN LORAGE', 'purfin lorage', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 19000, 30000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PURFIN-LORAGE' OR "normalizedName" = 'purfin lorage'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-AGY-PLUS-JANTES-500-ML', NULL, 'AGY PLUS JANTES 500 ML', 'agy plus jantes 500 ml', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 35000, 55000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-AGY-PLUS-JANTES-500-ML' OR "normalizedName" = 'agy plus jantes 500 ml'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-CAR-CLEANER-JANTES-500-ML', NULL, 'CAR CLEANER JANTES 500 ML', 'car cleaner jantes 500 ml', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 35000, 55000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-CAR-CLEANER-JANTES-500-ML' OR "normalizedName" = 'car cleaner jantes 500 ml'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-S-L-LIQUIDE-NETTOYANT-650-ML', NULL, 'S@l LIQUIDE NETTOYANT 650 ML', 's@l liquide nettoyant 650 ml', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 40000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-S-L-LIQUIDE-NETTOYANT-650-ML' OR "normalizedName" = 's@l liquide nettoyant 650 ml'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-QUEENS-FOAM-650-ML', NULL, 'QUEENS FOAM 650 ML', 'queens foam 650 ml', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 40000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-QUEENS-FOAM-650-ML' OR "normalizedName" = 'queens foam 650 ml'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-CLEAN-CHAM-PM', NULL, 'CLEAN CHAM PM', 'clean cham pm', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 17000, 30000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-CLEAN-CHAM-PM' OR "normalizedName" = 'clean cham pm'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-CLEAN-CHAM-GM', NULL, 'CLEAN CHAM GM', 'clean cham gm', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 32000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-CLEAN-CHAM-GM' OR "normalizedName" = 'clean cham gm'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-MAX-44-ESS', NULL, 'MAX 44 ESS', 'max 44 ess', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 118000, 150000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-MAX-44-ESS' OR "normalizedName" = 'max 44 ess'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-MAX-44-DIESEL', NULL, 'MAX 44 DIESEL', 'max 44 diesel', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 118000, 150000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-MAX-44-DIESEL' OR "normalizedName" = 'max 44 diesel'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LIQUI-MOLY-ADDITIVE-DIESEL-250-ML', NULL, 'LIQUI MOLY ADDITIVE DIESEL 250 ML', 'liqui moly additive diesel 250 ml', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 120000, 150000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LIQUI-MOLY-ADDITIVE-DIESEL-250-ML' OR "normalizedName" = 'liqui moly additive diesel 250 ml'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-COMMON-RAIL-DIESEL-250-ML', NULL, 'LIQUI MOLY COMMON RAIL DIESEL 250 ML', 'liqui moly common rail diesel 250 ml', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 115000, 140000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-COMMON-RAIL-DIESEL-250-ML' OR "normalizedName" = 'liqui moly common rail diesel 250 ml'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-MEGUIN-DIESEL-250-ML', NULL, 'MéGUIN DIESEL 250 ML', 'meguin diesel 250 ml', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 72000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-MEGUIN-DIESEL-250-ML' OR "normalizedName" = 'meguin diesel 250 ml'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LIQUI-MOLY-STOP-SMOKE', NULL, 'LIQUI MOLY STOP SMOKE', 'liqui moly stop smoke', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 95000, 130000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LIQUI-MOLY-STOP-SMOKE' OR "normalizedName" = 'liqui moly stop smoke'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-MEGUIN-ESS-250-ML', NULL, 'MéGUIN ESS 250 ML', 'meguin ess 250 ml', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 72000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-MEGUIN-ESS-250-ML' OR "normalizedName" = 'meguin ess 250 ml'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LIQUI-MOLY-STOP-FUME-150ML', NULL, 'LIQUI MOLY STOP FUME 150ML', 'liqui moly stop fume 150ml', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 87000, 95000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LIQUI-MOLY-STOP-FUME-150ML' OR "normalizedName" = 'liqui moly stop fume 150ml'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-LIQUI-MOLY-10W40-GRIS', NULL, 'LIQUI MOLY 10W40 GRIS', 'liqui moly 10w40 gris', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 550000, 620000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-LIQUI-MOLY-10W40-GRIS' OR "normalizedName" = 'liqui moly 10w40 gris'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-KROSTI-EXOTIQUE-500-ML', NULL, 'KROSTI EXOTIQUE 500 ML', 'krosti exotique 500 ml', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 28000, 40000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-KROSTI-EXOTIQUE-500-ML' OR "normalizedName" = 'krosti exotique 500 ml'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-ECO-CLEAN-500-ML', NULL, 'GREEN WORLD ECO CLEAN', 'green world eco clean', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 27000, 40000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-ECO-CLEAN-500-ML' OR "normalizedName" = 'green world eco clean'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-KROSTI-750-ML', NULL, 'KROSTI TABLEAU DE BORD 750 ML', 'krosti tableau de bord 750 ml', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 32000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-KROSTI-750-ML' OR "normalizedName" = 'krosti tableau de bord 750 ml'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-KROSTI-300-ML', NULL, 'KROSTI TABLEAU DE BORD 300 ML', 'krosti tableau de bord 300 ml', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 19000, 30000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-KROSTI-300-ML' OR "normalizedName" = 'krosti tableau de bord 300 ml'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-MOTOR-BRILL', NULL, 'QUEENS MOTOR BRILL', 'queens motor brill', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 35000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-MOTOR-BRILL' OR "normalizedName" = 'queens motor brill'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-IADA-5L', NULL, 'GLACIOL IADA 5L', 'glaciol iada 5l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 72000, 85000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-IADA-5L' OR "normalizedName" = 'glaciol iada 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TOTAL-SUPER-5L', NULL, 'GLACIOL TOTAL SUPER 5L', 'glaciol total super 5l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 85000, 110000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TOTAL-SUPER-5L' OR "normalizedName" = 'glaciol total super 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-TOTAL-AUTO-SUPRA-5L', NULL, 'GLACIOL TOTAL AUTO SUPRA 5L', 'glaciol total auto supra 5l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 189000, 210000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-TOTAL-AUTO-SUPRA-5L' OR "normalizedName" = 'glaciol total auto supra 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-EXTRA-PAWER-5L', NULL, 'GLACIOL EXTRA PAWER 5L', 'glaciol extra pawer 5l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 18000, 25000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-EXTRA-PAWER-5L' OR "normalizedName" = 'glaciol extra pawer 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-EXTRA-PAWER-2L', NULL, 'GLACIOL EXTRA PAWER 2L', 'glaciol extra pawer 2l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 11000, 20000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-EXTRA-PAWER-2L' OR "normalizedName" = 'glaciol extra pawer 2l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-EXTRA-PAWER-5L-2', NULL, 'LAVE GLACE EXTRA PAWER 5L', 'lave glace extra pawer 5l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 18000, 30000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-EXTRA-PAWER-5L-2' OR "normalizedName" = 'lave glace extra pawer 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-BLIKEZ-5L', NULL, 'GLACIOL BLIKEZ 5L', 'glaciol blikez 5l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 17000, 30000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-BLIKEZ-5L' OR "normalizedName" = 'glaciol blikez 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-ECO-BS-5L', NULL, 'GLACIOL TOTAL ECO BS 5L', 'glaciol total eco bs 5l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 158000, 170000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-ECO-BS-5L' OR "normalizedName" = 'glaciol total eco bs 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-NAF-2L', NULL, 'GLACIOL NAF 2L', 'glaciol naf 2l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 40000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-NAF-2L' OR "normalizedName" = 'glaciol naf 2l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-RADEON-G12-5L', NULL, 'GLACIOL RADON G12 5L', 'glaciol radon g12 5l', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 105000, 160000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-RADEON-G12-5L' OR "normalizedName" = 'glaciol radon g12 5l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-DAXLERG13', NULL, 'GLACIOL DAXLER G13', 'glaciol daxler g13', 'Liquides',
       'PCE', 'PCE', 1000, 0, 0, 220000, 270000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-DAXLERG13' OR "normalizedName" = 'glaciol daxler g13'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-EAU-DEMINERALISEE-1L', NULL, 'EAU DESTILIE ENPEC', 'eau destilie enpec', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 4000, 10000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-EAU-DEMINERALISEE-1L' OR "normalizedName" = 'eau destilie enpec'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-DMG-0-5KG', NULL, 'GRAISSE DMG 0.5KG', 'graisse dmg 0.5kg', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 45000, 65000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-DMG-0-5KG' OR "normalizedName" = 'graisse dmg 0.5kg'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-AURASSIA-GRAISSE', NULL, 'GRAISSE AURASSIA', 'graisse aurassia', 'Lubrifiants',
       'PCE', 'PCE', 1000, 0, 0, 30000, 40000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-AURASSIA-GRAISSE' OR "normalizedName" = 'graisse aurassia'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-SGREASE-1KG', NULL, 'SGREASE 1KG', 'sgrease 1kg', 'Divers',
       'PCE', 'PCE', 1000, 0, 0, 60000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-SGREASE-1KG' OR "normalizedName" = 'sgrease 1kg'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FH39', NULL, 'FILTRE VESTAL VS-FH39', 'filtre vestal vs-fh39', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 47000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FH39' OR "normalizedName" = 'filtre vestal vs-fh39'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-ED01', NULL, 'FILTRE VESTAL ED01', 'filtre vestal ed01', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 70000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-ED01' OR "normalizedName" = 'filtre vestal ed01'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FH85', NULL, 'FILTRE VESTAL VS-FH85', 'filtre vestal vs-fh85', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 35000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FH85' OR "normalizedName" = 'filtre vestal vs-fh85'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FH-911', NULL, 'FILTRE FH 911', 'filtre fh 911', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 47000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FH-911' OR "normalizedName" = 'filtre fh 911'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-OBS-127', NULL, 'FILTRE ALSAFA OBS-127', 'filtre alsafa obs-127', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 75000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-OBS-127' OR "normalizedName" = 'filtre alsafa obs-127'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-ELEMFIL-DO4306L', NULL, 'FILTRE ELEMFIL DO4306L', 'filtre elemfil do4306l', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 70000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-ELEMFIL-DO4306L' OR "normalizedName" = 'filtre elemfil do4306l'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-OBS-123', NULL, 'FILTRE ALSAFA OBS-123', 'filtre alsafa obs-123', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 60000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-OBS-123' OR "normalizedName" = 'filtre alsafa obs-123'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-ROXER-JX1008A', NULL, 'FILTRE ROXER JX1008A', 'filtre roxer jx1008a', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 45000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-ROXER-JX1008A' OR "normalizedName" = 'filtre roxer jx1008a'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-OBS-131', NULL, 'FILTRE AL SAFA OBS-131', 'filtre al safa obs-131', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 55000, 80000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-OBS-131' OR "normalizedName" = 'filtre al safa obs-131'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FH71', NULL, 'FILTRE VESTAL VS-FH71', 'filtre vestal vs-fh71', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 68000, 90000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FH71' OR "normalizedName" = 'filtre vestal vs-fh71'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-A-R-B-122-JMC-1030', NULL, 'FILTRE A.R.B 122 JMC 1030', 'filtre a.r.b 122 jmc 1030', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 40000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-A-R-B-122-JMC-1030' OR "normalizedName" = 'filtre a.r.b 122 jmc 1030'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-HAUGO-8-94430983-0', NULL, 'FILTRE HAUGO 8-94430983-0', 'filtre haugo 8-94430983-0', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 40000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-HAUGO-8-94430983-0' OR "normalizedName" = 'filtre haugo 8-94430983-0'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FH46-A', NULL, 'FILTRE VESTAL VS-FH46/A', 'filtre vestal vs-fh46/a', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 55000, 75000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FH46-A' OR "normalizedName" = 'filtre vestal vs-fh46/a'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-OBS-113-A', NULL, 'FILTRE ALSAFA OBS-113 A', 'filtre alsafa obs-113 a', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 40000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-OBS-113-A' OR "normalizedName" = 'filtre alsafa obs-113 a'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FH01', NULL, 'FILTRE VESTAL VS-FH01', 'filtre vestal vs-fh01', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 35000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FH01' OR "normalizedName" = 'filtre vestal vs-fh01'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-OBS-113', NULL, 'FILTRE ALSAFA OBS 113', 'filtre alsafa obs 113', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 40000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-OBS-113' OR "normalizedName" = 'filtre alsafa obs 113'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FH-929', NULL, 'FILTRE FH 929', 'filtre fh 929', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 37000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FH-929' OR "normalizedName" = 'filtre fh 929'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-WIX-WL-7254', NULL, 'FILTRE WIX WL 7254', 'filtre wix wl 7254', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 37000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-WIX-WL-7254' OR "normalizedName" = 'filtre wix wl 7254'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FH-920', NULL, 'FILTRE FH 920', 'filtre fh 920', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 30000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FH-920' OR "normalizedName" = 'filtre fh 920'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-OS-603M-20X1-5', NULL, 'FILTRE SAFI OS 603M 20X1.5', 'filtre safi os 603m 20x1.5', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 36000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-OS-603M-20X1-5' OR "normalizedName" = 'filtre safi os 603m 20x1.5'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FH03', NULL, 'FILTRE VESTAL VS-FH03', 'filtre vestal vs-fh03', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 37000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FH03' OR "normalizedName" = 'filtre vestal vs-fh03'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-OS-354M-20X1-5', NULL, 'FILTRE SAFI OS 354M 20X1.5', 'filtre safi os 354m 20x1.5', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 37000, 50000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-OS-354M-20X1-5' OR "normalizedName" = 'filtre safi os 354m 20x1.5'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-FH16', NULL, 'FILTRE VESTAL VS-FH16', 'filtre vestal vs-fh16', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 30000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-FH16' OR "normalizedName" = 'filtre vestal vs-fh16'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-TECNO-T-WL-7203', NULL, 'FILTRE TECNO T-WL 7203', 'filtre tecno t-wl 7203', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 33000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-TECNO-T-WL-7203' OR "normalizedName" = 'filtre tecno t-wl 7203'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-VS-A31', NULL, 'FILTRE VESTAL VS-A31', 'filtre vestal vs-a31', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 47000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-VS-A31' OR "normalizedName" = 'filtre vestal vs-a31'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-DFM', NULL, 'FILTRE DFM', 'filtre dfm', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 18000, 40000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-DFM' OR "normalizedName" = 'filtre dfm'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FH-919', NULL, 'FILTRE FH 919', 'filtre fh 919', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 37000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FH-919' OR "normalizedName" = 'filtre fh 919'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-BF1-26300-02751', NULL, 'FILTRE BF1 26300-02751', 'filtre bf1 26300-02751', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 37000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-BF1-26300-02751' OR "normalizedName" = 'filtre bf1 26300-02751'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FH-918', NULL, 'FILTRE FH 918', 'filtre fh 918', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 30000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FH-918' OR "normalizedName" = 'filtre fh 918'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FH-917', NULL, 'FILTRE FH 917', 'filtre fh 917', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 30000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FH-917' OR "normalizedName" = 'filtre fh 917'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FILTRE-RENAULT-GROUP-X1', NULL, 'FILTRE RENAULT GROUP X1', 'filtre renault group x1', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 47000, 60000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FILTRE-RENAULT-GROUP-X1' OR "normalizedName" = 'filtre renault group x1'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-PURFLUX-LS924', NULL, 'FILTRE PURFLUX LS924', 'filtre purflux ls924', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 55000, 70000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-PURFLUX-LS924' OR "normalizedName" = 'filtre purflux ls924'
);

INSERT INTO "Product" (
  "id", "internalCode", "barcode", "name", "normalizedName", "category",
  "baseUnit", "purchaseUnit", "purchaseFactorMilli", "stockMilli", "minStockMilli",
  "purchasePriceCents", "salePriceCents", "active", "updatedAt"
)
SELECT extensions.gen_random_uuid()::text, 'PDF-FH-916', NULL, 'FILTRE FH 916', 'filtre fh 916', 'Filtres',
       'PCE', 'PCE', 1000, 0, 0, 32000, 45000, true, NOW()
WHERE NOT EXISTS (
  SELECT 1 FROM "Product"
  WHERE "internalCode" = 'PDF-FH-916' OR "normalizedName" = 'filtre fh 916'
);
COMMIT;

-- Verify:
SELECT COUNT(*) AS imported_pdf_articles FROM "Product" WHERE "internalCode" LIKE 'PDF-%';
