// One backend permission map shared by every protected operation.
export const PERMISSIONS = Object.freeze({
  MANAGER: Object.freeze([
    'dashboard.view', 'users.manage', 'products.manage', 'products.disable', 'products.archive', 'suppliers.manage',
    'purchases.view', 'purchases.approve', 'receptions.view',
    'sales.view', 'sales.return', 'cash.manage', 'cash.configure', 'reports.profit', 'movements.view', 'stock.adjust', 'audit.view'
  ]),
  MAGASIN: Object.freeze([
    'products.manage', 'products.archive', 'suppliers.manage', 'purchases.view', 'purchases.create',
    'receptions.view', 'receptions.create', 'movements.view', 'stock.adjust'
  ]),
  VENTES: Object.freeze(['sales.view', 'sales.create'])
});
export const hasPermission = (role, permission) => PERMISSIONS[role]?.includes(permission) ?? false;
