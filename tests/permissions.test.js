import test from 'node:test';
import assert from 'node:assert/strict';
import { hasPermission, PERMISSIONS } from '../server/permissions.js';
test('exactement trois rôles disponibles', () => {
  assert.deepEqual(Object.keys(PERMISSIONS).sort(), ['MAGASIN', 'MANAGER', 'VENTES']);
});
test('responsable : validation, comptes, rapports, pas de vente ni réception', () => {
  for (const p of ['dashboard.view', 'users.manage', 'purchases.approve', 'sales.view', 'audit.view']) assert.equal(hasPermission('MANAGER', p), true);
  for (const p of ['sales.create', 'purchases.create', 'receptions.create']) assert.equal(hasPermission('MANAGER', p), false);
});
test('magasinier : demande, réception, stock ; pas de validation ni caisse', () => {
  for (const p of ['purchases.create', 'receptions.create', 'products.manage', 'products.archive', 'stock.adjust']) assert.equal(hasPermission('MAGASIN', p), true);
  for (const p of ['purchases.approve', 'sales.create', 'dashboard.view', 'users.manage']) assert.equal(hasPermission('MAGASIN', p), false);
});
test('vendeur : ventes uniquement, aucune lecture de données administratives', () => {
  for (const p of ['sales.create', 'sales.view']) assert.equal(hasPermission('VENTES', p), true);
  for (const p of ['purchases.view', 'receptions.view', 'movements.view', 'users.manage', 'dashboard.view', 'stock.adjust', 'cash.manage', 'cash.configure']) assert.equal(hasPermission('VENTES', p), false);
  assert.equal(hasPermission('INCONNU', 'sales.create'), false);
  assert.equal(hasPermission('VENTES', 'something.unknown'), false);
});
test('comptabilité : retours et bénéfices sont réservés au responsable', () => {
  assert.equal(hasPermission('MANAGER', 'sales.return'), true);
  assert.equal(hasPermission('MANAGER', 'reports.profit'), true);
  assert.equal(hasPermission('VENTES', 'sales.return'), false);
  assert.equal(hasPermission('VENTES', 'reports.profit'), false);
});
