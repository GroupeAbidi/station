-- Replace all three values below before running this script.
-- Keep the passwords private. This query stores only bcrypt password hashes.
CREATE EXTENSION IF NOT EXISTS pgcrypto WITH SCHEMA extensions;

INSERT INTO "User" ("id", "name", "username", "passwordHash", "role", "active")
VALUES
  (extensions.gen_random_uuid()::text, 'Responsable', 'manager', extensions.crypt('REPLACE_MANAGER_PASSWORD', extensions.gen_salt('bf', 12)), 'MANAGER', true),
  (extensions.gen_random_uuid()::text, 'Magasinier', 'magasinier', extensions.crypt('REPLACE_MAGASINIER_PASSWORD', extensions.gen_salt('bf', 12)), 'MAGASIN', true),
  (extensions.gen_random_uuid()::text, 'Vendeur', 'vendeur', extensions.crypt('REPLACE_VENDEUR_PASSWORD', extensions.gen_salt('bf', 12)), 'VENTES', true)
ON CONFLICT ("username") DO NOTHING;
