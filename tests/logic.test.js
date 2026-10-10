import test from 'node:test';
import assert from 'node:assert/strict';
import { toMilli, toCents, toBaseMilli, normalizeName, checkDiscrete } from '../server/logic.js';
test('10 citernes de 1000 L - vente 10 L = 9 citernes pleines + 990 L', () => {
  const received = toBaseMilli(toMilli(10), toMilli(1000));
  const sold = toBaseMilli(toMilli(10), toMilli(1000), 'BASE');
  const remaining = received - sold;
  assert.equal(remaining / 1000, 9990);
  assert.equal(Math.floor(remaining / toMilli(1000)), 9);
  assert.equal((remaining % toMilli(1000)) / 1000, 990);
});
test('1 citerne de 1000 L reçue puis 1 L vendu laisse 999 L', () => {
  const received = toBaseMilli(toMilli(1), toMilli(1000));
  const sold = toBaseMilli(toMilli(1), toMilli(1000), 'BASE');
  assert.equal(received / 1000, 1000);
  assert.equal((received - sold) / 1000, 999);
});
test('quantités à 3 décimales et prix à 2', () => {
  assert.equal(toMilli(1.235), 1235);
  assert.equal(toCents(99.75), 9975);
  assert.throws(() => toMilli(1.0005));
  assert.throws(() => toCents(15.001));
});
test('normalisation des noms et pièces indivisibles', () => {
  assert.equal(normalizeName('  HUILE   VÉGÉTALE '), normalizeName('huile végétale'));
  assert.throws(() => checkDiscrete('PCE', 1500));
  assert.doesNotThrow(() => checkDiscrete('PCE', 2000));
});
test('pas de sous-unités de stock impossibles', () => {
  assert.throws(() => toBaseMilli(toMilli(0.001), toMilli(0.333)));
  assert.equal(toBaseMilli(toMilli(2), toMilli(12)), 24000);
});
