export const num = (n, digits = 2) => new Intl.NumberFormat('fr-DZ', { minimumFractionDigits: 0, maximumFractionDigits: digits }).format(Number(n) || 0);
export const da = cents => `${num((Number(cents) || 0) / 100)} DA`;
export const money = n => `${num(n)} DA`;
export const quantity = milli => (Number(milli) || 0) / 1000;
export const dateTime = s => s ? new Intl.DateTimeFormat('fr-DZ', { dateStyle: 'medium', timeStyle: 'short' }).format(new Date(s)) : '—';
export const dateOnly = s => s ? new Intl.DateTimeFormat('fr-DZ', { day: '2-digit', month: 'short' }).format(new Date(s)) : '';
export const purchaseEquivalent = p => {
  const factor = p.purchaseFactorMilli || 1000;
  if (factor <= 1000 || (p.stockMilli || 0) <= 0) return '';
  const whole = Math.floor(p.stockMilli / factor);
  const rem = (p.stockMilli % factor) / 1000;
  return `${num(whole, 0)} ${p.purchaseUnit}${rem ? ` + ${num(rem, 3)} ${p.baseUnit}` : ''}`;
};
export const stockStatus = p => p.stockMilli <= 0 ? 'out' : p.stockMilli <= p.minStockMilli ? 'low' : 'ok';
export const statusLabel = { PENDING: 'À approuver', APPROVED: 'Approuvée', REJECTED: 'Refusée', PARTIAL: 'Partielle', RECEIVED: 'Réceptionnée' };
export const roleLabel = { MANAGER: 'Responsable', MAGASIN: 'Magasinier', VENTES: 'Vendeur', ADMIN: 'Responsable' };
export const movementLabel = { RECEPTION: 'Réception', SALE: 'Vente', RETURN: 'Retour vente', ADJUSTMENT: 'Inventaire', INITIAL: 'Initialisation' };
export const can = (user, allowed) => !!user && allowed.includes(user.role);
export const downloadCSV = (rows, filename) => {
  const content = '\uFEFF' + rows.map(row => row.map(x => `"${String(x ?? '').replace(/"/g, '""')}"`).join(';')).join('\r\n');
  const href = URL.createObjectURL(new Blob([content], { type: 'text/csv;charset=utf-8;' }));
  const el = document.createElement('a'); el.href = href; el.download = filename; el.click();
  setTimeout(() => URL.revokeObjectURL(href), 1000);
};
