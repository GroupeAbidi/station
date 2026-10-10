// All physical quantities are stored as integer milli-units (1 L = 1000 mL, 1 PCE = 1000 milli-pieces).
// Money is stored in integer centimes. No floating stock balances are persisted.
export const normalizeName = (name) => String(name || '').normalize('NFKD')
  .replace(/[\u0300-\u036f]/g, '').replace(/[’‘]/g, "'")
  .replace(/\s+/g, ' ').trim().toLowerCase();
export const toMilli = (value, field = 'Quantité') => {
  if (value === '' || value === null || value === undefined || !Number.isFinite(Number(value)))
    throw new Error(`${field} invalide.`);
  const n = Number(value);
  if (n < 0 || !Number.isSafeInteger(Math.round(n * 1000)) || Math.abs(n * 1000 - Math.round(n * 1000)) > 0.000001)
    throw new Error(`${field} doit avoir au maximum 3 décimales.`);
  return Math.round(n * 1000);
};
export const toCents = (value) => {
  const n = Number(value);
  if (!Number.isFinite(n) || n < 0 || !Number.isSafeInteger(Math.round(n * 100)) || Math.abs(n * 100 - Math.round(n * 100)) > 0.000001)
    throw new Error('Prix invalide (maximum 2 décimales).');
  return Math.round(n * 100);
};
export const toBaseMilli = (qtyMilli, factorMilli, sellUnit = 'PURCHASE') => {
  const result = sellUnit === 'BASE' ? qtyMilli : qtyMilli * factorMilli / 1000;
  if (!Number.isSafeInteger(result) || result <= 0) throw new Error('Conversion impossible avec une précision de 0,001 unité.');
  return result;
};
export const productCode = () => `ART-${cryptoRandomCode()}`;
function cryptoRandomCode() { return Math.floor(Math.random() * 9e8 + 1e8).toString(); }
export const reference = (prefix) => `${prefix}-${new Date().toISOString().replace(/[-:.TZ]/g, '').slice(0, 14)}-${Math.random().toString(36).slice(2, 7).toUpperCase()}`;
export const ALLOWED_ROLES = ['MANAGER', 'MAGASIN', 'VENTES'];
export const checkDiscrete = (unit, milli) => {
  if (unit === 'PCE' && milli % 1000 !== 0) throw new Error('Les pièces doivent avoir une quantité entière.');
};
