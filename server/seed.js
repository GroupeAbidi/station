import 'dotenv/config';
import { PrismaClient } from '@prisma/client';
import bcrypt from 'bcryptjs';
import { normalizeName, toMilli, toCents, reference } from './logic.js';
const prisma = new PrismaClient();
try {
  // Exactly three default workspaces. Existing user data is never deleted.
  const roles = [
    { key: 'MANAGER', name: 'Responsable', username: 'manager', legacyEmail: process.env.MANAGER_EMAIL || process.env.ADMIN_EMAIL || 'manager@station.local', password: process.env.MANAGER_PASSWORD || process.env.ADMIN_PASSWORD },
    { key: 'MAGASIN', name: 'Magasinier', username: 'magasinier', legacyEmail: process.env.MAGASIN_EMAIL || 'magasinier@station.local', password: process.env.MAGASIN_PASSWORD },
    { key: 'VENTES', name: 'Vendeur', username: 'vendeur', legacyEmail: process.env.VENDEUR_EMAIL || 'vendeur@station.local', password: process.env.VENDEUR_PASSWORD },
  ];
  for (const account of roles) {
    if (!account.password || account.password.length < 12) throw new Error(`Mot de passe invalide pour ${account.key}. Vérifiez le fichier .env et exécutez npm run setup.`);
  }
  // In-place migration of legacy roles, preserving passwords and document ownership.
  await prisma.user.updateMany({ where: { role: 'ADMIN' }, data: { role: 'MANAGER' } });
  await prisma.user.updateMany({ where: { role: 'ACHATS' }, data: { role: 'MAGASIN' } });
  const oldAdmin = await prisma.user.findUnique({ where: { email: 'admin@magasin.local' } });
  if (oldAdmin) roles[0].legacyEmail = oldAdmin.email;
  let admin;
  for (const a of roles) {
    const legacyEmail = a.legacyEmail?.toLowerCase();
    const existing = await prisma.user.findUnique({ where: { username: a.username } })
      || (legacyEmail ? await prisma.user.findUnique({ where: { email: legacyEmail } }) : null);
    const u = existing
      ? await prisma.user.update({ where: { id: existing.id }, data: { username: a.username, role: a.key } })
      : await prisma.user.create({ data: { name: a.name, username: a.username, passwordHash: await bcrypt.hash(a.password, 12), role: a.key } });
    if (!existing) console.log(`${a.name} créé : ${a.username}`);
    if (a.key === 'MANAGER') admin = u;
  }
  const assigned = new Set((await prisma.user.findMany({ where: { username: { not: null } }, select: { username: true } })).map(u => u.username.toLowerCase()));
  const legacyUsers = await prisma.user.findMany({ where: { username: null }, select: { id: true, name: true, email: true } });
  for (const user of legacyUsers) {
    const source = user.email?.split('@')[0] || user.name || 'utilisateur';
    let base = source.normalize('NFD').replace(/[\u0300-\u036f]/g, '').toLowerCase().replace(/[^a-z0-9._-]+/g, '-').replace(/^[._-]+|[._-]+$/g, '');
    if (base.length < 3) base = `user-${user.id.slice(-8).toLowerCase()}`;
    base = base.slice(0, 36);
    let candidate = base;
    let suffix = 2;
    while (assigned.has(candidate)) candidate = `${base.slice(0, 36 - String(suffix).length)}-${suffix++}`;
    await prisma.user.update({ where: { id: user.id }, data: { username: candidate } });
    assigned.add(candidate);
    console.log(`Nom utilisateur attribué à ${user.name} : ${candidate}`);
  }
  const supplierCodes = new Set((await prisma.supplier.findMany({ where: { supplierCode: { not: null } }, select: { supplierCode: true } })).map(supplier => supplier.supplierCode));
  const suppliersWithoutCode = await prisma.supplier.findMany({ where: { supplierCode: null }, select: { id: true, name: true }, orderBy: { createdAt: 'asc' } });
  let nextSupplierNumber = 1;
  for (const supplier of suppliersWithoutCode) {
    let supplierCode;
    do { supplierCode = `FOU-${String(nextSupplierNumber++).padStart(3, '0')}`; } while (supplierCodes.has(supplierCode));
    await prisma.supplier.update({ where: { id: supplier.id }, data: { supplierCode } });
    supplierCodes.add(supplierCode);
    console.log(`ID fournisseur attribué à ${supplier.name} : ${supplierCode}`);
  }
  if (await prisma.product.count() === 0) {
    const demos = [
      ['Huile végétale en citerne', 'HUILE-C1000', 'Huiles', 'L', 'Citerne 1 000 L', 1000, 115000, 145, 2000],
      ['Huile de tournesol 5 L', 'HUILE-B5', 'Huiles', 'L', 'Bidon 5 L', 5, 810, 950, 50],
      ['Concentré de tomate 400 g', 'TOM-400', 'Conserves', 'PCE', 'Carton de 24', 24, 1450, 75, 120],
      ['Harissa 380 g', 'HAR-380', 'Conserves', 'PCE', 'Carton de 12', 12, 720, 70, 80],
      ['Sucre blanc', 'SUC-1KG', 'Épicerie', 'KG', 'Sac de 50 KG', 50, 4500, 110, 150],
      ['Farine de blé', 'FAR-25KG', 'Minoterie', 'KG', 'Sac de 25 KG', 25, 2100, 100, 100],
      ['Carton d’emballage', 'CAR-01', 'Emballages', 'PCE', 'Paquet de 50', 50, 900, 25, 30],
    ];
    for (const [name, internalCode, category, baseUnit, purchaseUnit, factor, purchasePrice, salePrice, minStock] of demos) {
      await prisma.product.create({ data: { name, normalizedName: normalizeName(name), internalCode, category, baseUnit, purchaseUnit, purchaseFactorMilli: toMilli(factor), purchasePriceCents: toCents(purchasePrice), salePriceCents: toCents(salePrice), minStockMilli: toMilli(minStock) } });
    }
    console.log('7 articles de démonstration créés (sans codes-barres pour illustrer leur génération).');
    // Demonstrate the complete chain in a single seed transaction.
    const oil = await prisma.product.findUnique({ where: { internalCode: 'HUILE-C1000' } });
    if (oil) {
      await prisma.$transaction(async (tx) => {
        const req = await tx.purchaseRequest.create({ data: { ref: reference('DA'), supplier: 'Fournisseur démonstration', status: 'RECEIVED', createdById: admin.id, approvedById: admin.id, approvedAt: new Date(), notes: 'Exemple : 10 citernes × 1000 L', lines: { create: [{ productId: oil.id, requestedMilli: 10000, receivedMilli: 10000, unitPriceCents: toCents(115000) }] } } });
        const rec = await tx.reception.create({ data: { ref: reference('REC'), requestId: req.id, createdById: admin.id, note: 'Réception de démonstration', lines: { create: [{ productId: oil.id, qtyPurchaseMilli: 10000, qtyBaseMilli: 10000000 }] } } });
        await tx.stockMovement.create({ data: { productId: oil.id, deltaMilli: 10000000, balanceAfterMilli: 10000000, type: 'RECEPTION', sourceRef: rec.ref, userId: admin.id } });
        const sale = await tx.sale.create({ data: { ref: reference('VTE'), client: 'Vente test', createdById: admin.id, totalCents: toCents(1450), lines: { create: [{ productId: oil.id, qtyMilli: 10000, sellUnit: 'BASE', qtyBaseMilli: 10000, priceCents: toCents(145), totalCents: toCents(1450) }] } } });
        await tx.product.update({ where: { id: oil.id }, data: { stockMilli: 9990000 } });
        await tx.stockMovement.create({ data: { productId: oil.id, deltaMilli: -10000, balanceAfterMilli: 9990000, type: 'SALE', sourceRef: sale.ref, userId: admin.id } });
      });
      console.log('Démo : 10 citernes de 1000 L reçues, 10 L vendus, stock restant 9 990 L.');
    }
  }
} finally { await prisma.$disconnect(); }
