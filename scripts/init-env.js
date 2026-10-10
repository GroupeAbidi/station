import fs from 'node:fs';
import crypto from 'node:crypto';
const path = new URL('../.env', import.meta.url);
const randomPassword = () => `${crypto.randomBytes(13).toString('base64url')}aA9!`;
if (!fs.existsSync(path)) {
  const secret = crypto.randomBytes(48).toString('hex');
  const content = `DATABASE_URL="file:./magasin.db"\nPORT=4000\nJWT_SECRET=${secret}\nMANAGER_PASSWORD=${randomPassword()}\nMAGASIN_PASSWORD=${randomPassword()}\nVENDEUR_PASSWORD=${randomPassword()}\nCORS_ORIGIN=http://localhost:5173,http://127.0.0.1:5173\n`;
  fs.writeFileSync(path, content, { mode: 0o600 });
  console.log('\n3 comptes créés. Les noms utilisateur sont manager, magasinier et vendeur. Ouvrez .env pour leurs mots de passe. Ne partagez pas ce fichier.\n');
} else {
  // Update a legacy installation without replacing its database or administrator password.
  const old = fs.readFileSync(path, 'utf8');
  if (!old.includes('MAGASIN_PASSWORD=') || !old.includes('VENDEUR_PASSWORD=')) {
    fs.appendFileSync(path, `\nMAGASIN_PASSWORD=${randomPassword()}\nVENDEUR_PASSWORD=${randomPassword()}\n`);
    console.log('Comptes magasinier et vendeur ajoutés dans .env ; ancien compte conservé comme responsable.');
  } else console.log('.env existant conservé, mots de passe non modifiés.');
}
