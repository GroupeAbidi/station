import 'dotenv/config';
import express from 'express';
import cors from 'cors';
import helmet from 'helmet';
import rateLimit from 'express-rate-limit';
import jwt from 'jsonwebtoken';
import bcrypt from 'bcryptjs';
import path from 'node:path';
import { fileURLToPath } from 'node:url';
import { PrismaClient } from '@prisma/client';
import { z, ZodError } from 'zod';
import { normalizeName, toMilli, toCents, toBaseMilli, checkDiscrete, productCode, reference, ALLOWED_ROLES } from './logic.js';
import { hasPermission } from './permissions.js';

if (!process.env.JWT_SECRET || process.env.JWT_SECRET.length < 32) throw new Error('Exécutez npm run setup pour créer un JWT_SECRET fort.');
const prisma = new PrismaClient();
const app = express();
const PORT = Number(process.env.PORT || 4000);
app.disable('x-powered-by');
app.use(helmet({ contentSecurityPolicy: false }));
app.use(cors({ origin: process.env.CORS_ORIGIN?.split(',').map(s => s.trim()) || ['http://localhost:5173', 'http://127.0.0.1:5173'] }));
app.use(express.json({ limit: '3mb' }));
const safe = fn => (req, res, next) => Promise.resolve(fn(req, res, next)).catch(next);
const fail = (message, status = 400) => { const e = new Error(message); e.status = status; throw e; };
const good = (res, data, status = 200) => res.status(status).json(data);
const str = z.string().trim();
const username = z.string().trim().min(3).max(40).regex(/^[A-Za-z0-9._-]+$/, 'Nom utilisateur invalide. Utilisez lettres, chiffres, point, tiret ou underscore.');
const supplierCode = z.string().trim().min(1).max(24).regex(/^[A-Za-z0-9_-]+$/, 'Identifiant fournisseur invalide. Utilisez lettres, chiffres, tiret ou underscore.').transform(value => value.toUpperCase());
const qty = z.coerce.number().positive().finite().max(100000000);
const price = z.coerce.number().nonnegative().finite().max(100000000);
const prodSchema = z.object({
  name: str.min(2).max(150), internalCode: str.max(55).optional().nullable(),
  barcode: str.max(64).optional().nullable(), category: str.max(60).default('Divers'),
  baseUnit: z.enum(['PCE', 'L', 'KG', 'M']).default('PCE'),
  purchaseUnit: str.min(1).max(60), purchaseFactor: qty,
  minStock: z.coerce.number().nonnegative().finite().default(0),
  purchasePrice: price.default(0), salePrice: price.default(0),
});
const limitLogin = rateLimit({ windowMs: 15 * 60 * 1000, limit: 12, standardHeaders: 'draft-7', legacyHeaders: false, message: { error: 'Trop de tentatives. Réessayez dans 15 minutes.' } });
const limitAccountList = rateLimit({ windowMs: 15 * 60 * 1000, limit: 60, standardHeaders: 'draft-7', legacyHeaders: false });

const auth = safe(async (req, res, next) => {
  const token = (req.headers.authorization || '').replace(/^Bearer\s+/i, '');
  if (!token) fail('Authentification requise.', 401);
  let claims;
  try { claims = jwt.verify(token, process.env.JWT_SECRET, { algorithms: ['HS256'] }); }
  catch { fail('Session expirée. Reconnectez-vous.', 401); }
  const u = await prisma.user.findUnique({ where: { id: claims.sub } });
  if (!u || !u.active) fail('Compte désactivé.', 403);
  req.user = { id: u.id, name: u.name, username: u.username || u.email, role: u.role };
  next();
});
const permit = permission => (req, _res, next) => hasPermission(req.user.role, permission) ? next() : next(Object.assign(new Error('Accès non autorisé pour votre rôle.'), { status: 403 }));
const audit = (tx, userId, action, entityType, entityId, details = '') => tx.auditEvent.create({ data: { userId, action, entityType, entityId, details: String(details).slice(0, 900) } });
const asUser = user => ({ id: user.id, name: user.name, username: user.username || user.email, role: user.role, active: user.active });
const productData = input => {
  const p = prodSchema.parse(input);
  const factor = toMilli(p.purchaseFactor, 'Coefficient d’achat');
  const min = toMilli(p.minStock, 'Seuil minimum');
  checkDiscrete(p.baseUnit, min);
  if (p.baseUnit === 'PCE') checkDiscrete('PCE', factor);
  const internalCode = (p.internalCode || productCode()).toUpperCase().replace(/\s+/g, '-');
  if (!/^[A-Z0-9._-]{3,55}$/.test(internalCode)) fail('La référence interne doit contenir 3 à 55 caractères : lettres, chiffres, -, _, .');
  const barcode = p.barcode?.trim() || null;
  if (barcode && !/^[A-Za-z0-9._-]{3,64}$/.test(barcode)) fail('Code-barres invalide (3 à 64 caractères alphanumériques).');
  return { name: p.name, normalizedName: normalizeName(p.name), internalCode, barcode,
    category: p.category || 'Divers', baseUnit: p.baseUnit, purchaseUnit: p.purchaseUnit,
    purchaseFactorMilli: factor, minStockMilli: min, purchasePriceCents: toCents(p.purchasePrice),
    salePriceCents: toCents(p.salePrice) };
};

app.get('/api/health', safe(async (_req, res) => {
  await prisma.user.count(); good(res, { ok: true, database: 'PostgreSQL', app: 'Station Magazine' });
}));
app.get('/api/auth/users', limitAccountList, safe(async (_req, res) => {
  const users = await prisma.user.findMany({ where: { active: true, username: { not: null } }, select: { name: true, username: true }, orderBy: { name: 'asc' } });
  good(res, users);
}));
app.post('/api/auth/login', limitLogin, safe(async (req, res) => {
  const data = z.object({ username, password: z.string().min(1) }).parse(req.body);
  const normalized = data.username.toLowerCase();
  const u = await prisma.user.findFirst({ where: { OR: [{ username: normalized }, { email: normalized }] } });
  if (!u || !u.active || !await bcrypt.compare(data.password, u.passwordHash)) fail('Nom utilisateur ou mot de passe incorrect.', 401);
  const token = jwt.sign({ sub: u.id }, process.env.JWT_SECRET, { expiresIn: '8h', algorithm: 'HS256' });
  good(res, { token, user: asUser(u) });
}));
app.get('/api/auth/me', auth, safe(async (req, res) => good(res, { user: req.user })));
app.post('/api/auth/password', auth, safe(async (req, res) => {
  const d = z.object({ oldPassword: z.string().min(1), newPassword: z.string().min(12).max(120) }).parse(req.body);
  const u = await prisma.user.findUnique({ where: { id: req.user.id } });
  if (!await bcrypt.compare(d.oldPassword, u.passwordHash)) fail('Ancien mot de passe incorrect.');
  await prisma.user.update({ where: { id: u.id }, data: { passwordHash: await bcrypt.hash(d.newPassword, 12) } });
  good(res, { ok: true });
}));

app.get('/api/users', auth, permit('users.manage'), safe(async (_req, res) => {
  good(res, await prisma.user.findMany({ select: { id: true, name: true, username: true, role: true, active: true, createdAt: true }, orderBy: { createdAt: 'asc' } }));
}));
app.post('/api/users', auth, permit('users.manage'), safe(async (req, res) => {
  const d = z.object({ name: str.min(2).max(90), username, password: z.string().min(12).max(120), role: z.enum(ALLOWED_ROLES) }).parse(req.body);
  const u = await prisma.user.create({ data: { name: d.name, username: d.username.toLowerCase(), passwordHash: await bcrypt.hash(d.password, 12), role: d.role } });
  await audit(prisma, req.user.id, 'USER_CREATE', 'User', u.id, u.username);
  good(res, asUser(u), 201);
}));
app.patch('/api/users/:id', auth, permit('users.manage'), safe(async (req, res) => {
  const d = z.object({ active: z.boolean().optional(), role: z.enum(ALLOWED_ROLES).optional(), password: z.string().min(12).max(120).optional() }).parse(req.body);
  if (req.user.id === req.params.id && (d.active === false || (d.role && d.role !== 'MANAGER'))) fail('Impossible de désactiver ou de modifier votre propre rôle de responsable.');
  const input = { ...(d.active !== undefined ? { active: d.active } : {}), ...(d.role ? { role: d.role } : {}), ...(d.password ? { passwordHash: await bcrypt.hash(d.password, 12) } : {}) };
  if (!Object.keys(input).length) fail('Aucune modification.');
  const u = await prisma.user.update({ where: { id: req.params.id }, data: input });
  await audit(prisma, req.user.id, 'USER_UPDATE', 'User', u.id, JSON.stringify({ active: d.active, role: d.role, passwordReset: !!d.password }));
  good(res, asUser(u));
}));

app.get('/api/suppliers', auth, permit('suppliers.manage'), safe(async (_req, res) => {
  good(res, await prisma.supplier.findMany({ where: { active: true }, include: { _count: { select: { requests: true } } }, orderBy: { name: 'asc' } }));
}));
app.post('/api/suppliers', auth, permit('suppliers.manage'), safe(async (req, res) => {
  const d = z.object({ supplierCode, name: str.min(2).max(120), phone: str.max(40).default(''), email: z.string().trim().email().or(z.literal('')).default(''), address: str.max(240).default(''), notes: str.max(500).default('') }).parse(req.body);
  const supplier = await prisma.supplier.create({ data: { ...d, createdById: req.user.id } });
  await audit(prisma, req.user.id, 'SUPPLIER_CREATE', 'Supplier', supplier.id, supplier.name);
  good(res, supplier, 201);
}));
app.put('/api/suppliers/:id', auth, permit('suppliers.manage'), safe(async (req, res) => {
  const d = z.object({ supplierCode, name: str.min(2).max(120), phone: str.max(40).default(''), email: z.string().trim().email().or(z.literal('')).default(''), address: str.max(240).default(''), notes: str.max(500).default('') }).parse(req.body);
  const supplier = await prisma.supplier.update({ where: { id: req.params.id }, data: d });
  await audit(prisma, req.user.id, 'SUPPLIER_UPDATE', 'Supplier', supplier.id, supplier.name);
  good(res, supplier);
}));
app.patch('/api/suppliers/:id/status', auth, permit('suppliers.manage'), safe(async (req, res) => {
  const { active } = z.object({ active: z.boolean() }).parse(req.body);
  const supplier = await prisma.supplier.update({ where: { id: req.params.id }, data: { active } });
  await audit(prisma, req.user.id, 'SUPPLIER_STATUS', 'Supplier', supplier.id, String(active));
  good(res, supplier);
}));

app.get('/api/products', auth, safe(async (req, res) => {
  const products = await prisma.product.findMany({ where: (req.query.all === '1' && req.user.role !== 'VENTES') ? {} : { active: true }, orderBy: { name: 'asc' } });
  good(res, req.user.role === 'VENTES' ? products.map(({ purchasePriceCents, ...item }) => item) : products);
}));
app.get('/api/products/lookup', auth, safe(async (req, res) => {
  const code = String(req.query.code || '').trim();
  if (!code) fail('Code manquant.');
  const product = await prisma.product.findFirst({ where: { active: true, OR: [{ barcode: code }, { internalCode: code.toUpperCase() }] } });
  if (!product) fail(`Article introuvable : ${code}`, 404);
  if (req.user.role === 'VENTES') { const { purchasePriceCents, ...item } = product; return good(res, item); }
  good(res, product);
}));
app.post('/api/products', auth, permit('products.manage'), safe(async (req, res) => {
  const data = productData(req.body);
  const p = await prisma.product.create({ data });
  await audit(prisma, req.user.id, 'PRODUCT_CREATE', 'Product', p.id, p.internalCode);
  good(res, p, 201);
}));
app.put('/api/products/:id', auth, permit('products.manage'), safe(async (req, res) => {
  const previous = await prisma.product.findUnique({ where: { id: req.params.id }, include: { _count: { select: { requestLines: true, saleLines: true, receiptLines: true } } } });
  if (!previous) fail('Article introuvable.', 404);
  const data = productData({ ...req.body, internalCode: req.body.internalCode || previous.internalCode });
  const unitsChanged = data.baseUnit !== previous.baseUnit || data.purchaseFactorMilli !== previous.purchaseFactorMilli;
  if (unitsChanged && (previous.stockMilli !== 0 || previous._count.requestLines || previous._count.saleLines || previous._count.receiptLines))
    fail('Unités verrouillées : article déjà utilisé. Créez un nouvel article pour une conversion différente.');
  const p = await prisma.product.update({ where: { id: req.params.id }, data });
  await audit(prisma, req.user.id, 'PRODUCT_UPDATE', 'Product', p.id, p.internalCode);
  good(res, p);
}));
app.patch('/api/products/:id/status', auth, permit('products.archive'), safe(async (req, res) => {
  const { active } = z.object({ active: z.boolean() }).parse(req.body);
  const p = await prisma.product.update({ where: { id: req.params.id }, data: { active } });
  await audit(prisma, req.user.id, 'PRODUCT_STATUS', 'Product', p.id, String(active));
  good(res, p);
}));
app.post('/api/products/:id/generate-barcode', auth, permit('products.manage'), safe(async (req, res) => {
  const p = await prisma.product.findUnique({ where: { id: req.params.id } });
  if (!p) fail('Article introuvable.', 404);
  if (p.barcode) fail('Cet article dispose déjà d’un code-barres.');
  const barcode = `GA-${p.internalCode}`;
  const updated = await prisma.product.updateMany({ where: { id: p.id, barcode: null }, data: { barcode } });
  if (updated.count !== 1) fail('Code-barres déjà attribué.');
  await audit(prisma, req.user.id, 'BARCODE_GENERATE', 'Product', p.id, barcode);
  good(res, { ...p, barcode });
}));
app.post('/api/products/import', auth, permit('products.manage'), safe(async (req, res) => {
  const rows = z.array(z.record(z.unknown())).min(1).max(500).parse(req.body?.rows);
  const results = [];
  for (let i = 0; i < rows.length; i++) {
    try {
      const p = await prisma.product.create({ data: productData(rows[i]) });
      await audit(prisma, req.user.id, 'PRODUCT_IMPORT', 'Product', p.id, p.internalCode);
      results.push({ line: i + 1, ok: true, name: p.name, code: p.internalCode });
    } catch (e) {
      results.push({ line: i + 1, ok: false, name: String(rows[i]?.name || ''), error: e.code === 'P2002' ? 'Nom, référence ou code-barres déjà existant.' : e instanceof ZodError ? e.issues.map(x => `${x.path.join('.')}: ${x.message}`).join('; ') : e.message });
    }
  }
  good(res, { created: results.filter(x => x.ok).length, rejected: results.filter(x => !x.ok).length, results });
}));

const purchaseLineSchema = z.object({ productId: z.string().min(1), quantity: qty, price: price.optional() });
app.get('/api/purchases', auth, permit('purchases.view'), safe(async (_req, res) => {
  good(res, await prisma.purchaseRequest.findMany({ include: { supplierRef: true, createdBy: { select: { name: true } }, approvedBy: { select: { name: true } }, lines: { include: { product: true } }, receptions: { select: { id: true, ref: true, createdAt: true } } }, orderBy: { createdAt: 'desc' }, take: 300 }));
}));
app.post('/api/purchases', auth, permit('purchases.create'), safe(async (req, res) => {
  const d = z.object({ supplier: str.max(120).default(''), supplierId: z.string().min(1).nullable().optional(), notes: str.max(500).default(''), lines: z.array(purchaseLineSchema).min(1).max(100) }).parse(req.body);
  const savedSupplier = d.supplierId ? await prisma.supplier.findFirst({ where: { id: d.supplierId, active: true } }) : null;
  if (d.supplierId && !savedSupplier) fail('Fournisseur introuvable ou inactif.', 404);
  const ids = d.lines.map(x => x.productId);
  if (new Set(ids).size !== ids.length) fail('Un article ne peut figurer qu’une fois sur la même demande.');
  const products = await prisma.product.findMany({ where: { id: { in: ids }, active: true } });
  if (products.length !== ids.length) fail('Un ou plusieurs articles sont indisponibles.');
  const byId = Object.fromEntries(products.map(p => [p.id, p]));
  const lines = d.lines.map(x => {
    const purchaseMilli = toMilli(x.quantity);
    const baseMilli = toBaseMilli(purchaseMilli, byId[x.productId].purchaseFactorMilli);
    checkDiscrete(byId[x.productId].baseUnit, baseMilli);
    return { productId: x.productId, requestedMilli: purchaseMilli, unitPriceCents: toCents(x.price ?? byId[x.productId].purchasePriceCents / 100) };
  });
  const p = await prisma.purchaseRequest.create({ data: { ref: reference('DA'), supplier: savedSupplier?.name || d.supplier, supplierId: savedSupplier?.id, notes: d.notes, createdById: req.user.id, lines: { create: lines } }, include: { lines: true, supplierRef: true } });
  await audit(prisma, req.user.id, 'PURCHASE_REQUEST', 'PurchaseRequest', p.id, p.ref);
  good(res, p, 201);
}));
app.post('/api/purchases/:id/decision', auth, permit('purchases.approve'), safe(async (req, res) => {
  const d = z.object({ decision: z.enum(['APPROVED', 'REJECTED']) }).parse(req.body);
  const updated = await prisma.$transaction(async tx => {
    const p = await tx.purchaseRequest.findUnique({ where: { id: req.params.id } });
    if (!p) fail('Demande introuvable.', 404);
    if (p.status !== 'PENDING') fail('Seules les demandes en attente peuvent être décidées.');
    if (p.createdById === req.user.id) fail('Un responsable ne peut pas approuver sa propre demande.');
    const count = await tx.purchaseRequest.updateMany({ where: { id: p.id, status: 'PENDING' }, data: { status: d.decision, approvedById: req.user.id, approvedAt: new Date() } });
    if (!count.count) fail('Demande déjà traitée.');
    await audit(tx, req.user.id, d.decision, 'PurchaseRequest', p.id, p.ref);
    return tx.purchaseRequest.findUnique({ where: { id: p.id } });
  });
  good(res, updated);
}));

app.get('/api/receptions', auth, permit('receptions.view'), safe(async (_req, res) => {
  good(res, await prisma.reception.findMany({ include: { request: { select: { ref: true, supplier: true, supplierRef: true } }, createdBy: { select: { name: true } }, lines: { include: { product: true } } }, orderBy: { createdAt: 'desc' }, take: 300 }));
}));
app.post('/api/receptions', auth, permit('receptions.create'), safe(async (req, res) => {
  const d = z.object({ requestId: z.string().min(1), note: str.max(500).default(''), lines: z.array(z.object({ purchaseLineId: z.string().min(1), quantity: qty })).min(1).max(100) }).parse(req.body);
  if (new Set(d.lines.map(x => x.purchaseLineId)).size !== d.lines.length) fail('Lignes de réception en double.');
  const result = await prisma.$transaction(async tx => {
    const purchase = await tx.purchaseRequest.findUnique({ where: { id: d.requestId }, include: { lines: { include: { product: true } } } });
    if (!purchase) fail('Demande introuvable.', 404);
    if (!['APPROVED', 'PARTIAL'].includes(purchase.status)) fail('La demande doit être approuvée et non terminée.');
    const lineMap = Object.fromEntries(purchase.lines.map(l => [l.id, l]));
    const prepared = d.lines.map(x => {
      const l = lineMap[x.purchaseLineId];
      if (!l) fail('Ligne inexistante dans cette demande.');
      if (!l.product.active) fail(`Article inactif : ${l.product.name}`);
      const q = toMilli(x.quantity);
      if (q > l.requestedMilli - l.receivedMilli) fail(`Réception supérieure au reliquat : ${l.product.name}`);
      const base = toBaseMilli(q, l.product.purchaseFactorMilli);
      checkDiscrete(l.product.baseUnit, base);
      return { l, q, base };
    });
    const receipt = await tx.reception.create({ data: { ref: reference('REC'), requestId: purchase.id, note: d.note, createdById: req.user.id,
      lines: { create: prepared.map(x => ({ productId: x.l.productId, qtyPurchaseMilli: x.q, qtyBaseMilli: x.base })) } } });
    for (const x of prepared) {
      await tx.purchaseLine.update({ where: { id: x.l.id }, data: { receivedMilli: { increment: x.q } } });
      const product = await tx.product.update({ where: { id: x.l.productId }, data: { stockMilli: { increment: x.base } } });
      await tx.stockMovement.create({ data: { productId: x.l.productId, deltaMilli: x.base, balanceAfterMilli: product.stockMilli, sourceRef: receipt.ref, type: 'RECEPTION', userId: req.user.id, note: d.note } });
    }
    const done = await tx.purchaseLine.findMany({ where: { requestId: purchase.id } });
    const status = done.every(l => l.receivedMilli === l.requestedMilli) ? 'RECEIVED' : 'PARTIAL';
    await tx.purchaseRequest.update({ where: { id: purchase.id }, data: { status } });
    await audit(tx, req.user.id, 'GOODS_RECEIPT', 'Reception', receipt.id, `${receipt.ref} ${purchase.ref}`);
    return receipt;
  });
  good(res, result, 201);
}));

app.get('/api/sales', auth, permit('sales.view'), safe(async (req, res) => {
  const sales = await prisma.sale.findMany({ where: req.user.role === 'VENTES' ? { createdById: req.user.id } : {}, include: { createdBy: { select: { name: true, username: true } }, lines: { include: { product: true } } }, orderBy: { createdAt: 'desc' }, take: 300 });
  // Sellers must never receive supplier purchasing costs, even in nested sale details.
  good(res, req.user.role === 'VENTES' ? sales.map(s => ({ ...s, lines: s.lines.map(l => {
    const { purchasePriceCents, ...product } = l.product;
    return { ...l, product };
  }) })) : sales);
}));
app.get('/api/cash/current', auth, permit('sales.create'), safe(async (_req, res) => {
  good(res, await prisma.cashSession.findFirst({ where: { closedAt: null }, orderBy: { openedAt: 'desc' } }));
}));
app.get('/api/cash/settings', auth, permit('cash.manage'), safe(async (_req, res) => {
  const setting = await prisma.cashSetting.findUnique({ where: { id: 1 } }) || await prisma.cashSetting.create({ data: { id: 1 } });
  good(res, setting);
}));
app.put('/api/cash/settings', auth, permit('cash.configure'), safe(async (req, res) => {
  const d = z.object({ defaultOpeningCents: z.coerce.number().int().nonnegative().max(1000000000) }).parse(req.body);
  const setting = await prisma.cashSetting.upsert({ where: { id: 1 }, create: { id: 1, defaultOpeningCents: d.defaultOpeningCents }, update: { defaultOpeningCents: d.defaultOpeningCents } });
  await audit(prisma, req.user.id, 'CASH_SETTING_UPDATE', 'CashSetting', '1', String(d.defaultOpeningCents));
  good(res, setting);
}));
app.get('/api/cash/sessions', auth, permit('cash.manage'), safe(async (_req, res) => {
  const sessions = await prisma.cashSession.findMany({ include: { user: { select: { name: true, username: true } }, sales: { where: { paymentMethod: 'CASH' }, select: { totalCents: true } } }, orderBy: { openedAt: 'desc' }, take: 200 });
  good(res, sessions.map(session => {
    const cashSalesCents = session.sales.reduce((total, sale) => total + sale.totalCents, 0);
    const expectedCents = session.openingCents + cashSalesCents;
    return { id: session.id, openedAt: session.openedAt, closedAt: session.closedAt, openingCents: session.openingCents, cashSalesCents, expectedCents, closingCents: session.closingCents, differenceCents: session.closingCents === null ? null : session.closingCents - expectedCents, user: session.user };
  }));
}));
app.post('/api/cash/open', auth, permit('cash.manage'), safe(async (req, res) => {
  const d = z.object({ openingCents: z.coerce.number().int().nonnegative() }).parse(req.body);
  const existing = await prisma.cashSession.findFirst({ where: { closedAt: null } });
  if (existing) fail('Une caisse est déjà ouverte.');
  const session = await prisma.cashSession.create({ data: { userId: req.user.id, openingCents: d.openingCents } });
  await audit(prisma, req.user.id, 'CASH_OPEN', 'CashSession', session.id, String(d.openingCents));
  good(res, session, 201);
}));
app.post('/api/cash/close', auth, permit('cash.manage'), safe(async (req, res) => {
  const d = z.object({ closingCents: z.coerce.number().int().nonnegative() }).parse(req.body);
  const current = await prisma.cashSession.findFirst({ where: { closedAt: null } });
  if (!current) fail('Aucune caisse ouverte.');
  const session = await prisma.cashSession.update({ where: { id: current.id }, data: { closingCents: d.closingCents, closedAt: new Date() } });
  await audit(prisma, req.user.id, 'CASH_CLOSE', 'CashSession', session.id, String(d.closingCents));
  good(res, session);
}));
app.post('/api/sales', auth, permit('sales.create'), safe(async (req, res) => {
  const d = z.object({ client: str.max(120).default(''), paymentMethod: z.enum(['CASH', 'CARD', 'CREDIT']).default('CASH'), cashSessionId: z.string().nullable().optional(), lines: z.array(z.object({ productId: z.string().min(1), quantity: qty, sellUnit: z.enum(['BASE', 'PURCHASE']), price: price.optional() })).min(1).max(100) }).parse(req.body);
  if (d.paymentMethod === 'CASH') {
    const cash = await prisma.cashSession.findFirst({ where: { id: d.cashSessionId || undefined, closedAt: null } });
    if (!cash) fail('Ouvrez une caisse avant d’enregistrer une vente en espèces.');
  }
  const unique = d.lines.map(l => `${l.productId}:${l.sellUnit}`);
  if (new Set(unique).size !== unique.length) fail('Fusionnez les lignes répétées du même article et de la même unité.');
  const result = await prisma.$transaction(async tx => {
    const products = await tx.product.findMany({ where: { id: { in: d.lines.map(l => l.productId) }, active: true } });
    const map = Object.fromEntries(products.map(p => [p.id, p]));
    const prepared = d.lines.map(l => {
      const p = map[l.productId];
      if (!p) fail('Article inactif ou introuvable.');
      const milli = toMilli(l.quantity);
      const base = toBaseMilli(milli, p.purchaseFactorMilli, l.sellUnit);
      checkDiscrete(p.baseUnit, base);
      const unitPrice = toCents(l.price ?? (l.sellUnit === 'BASE' ? p.salePriceCents / 100 : (p.salePriceCents * p.purchaseFactorMilli / 100000)));
      const total = Math.round(unitPrice * milli / 1000);
      if (!Number.isSafeInteger(total)) fail('Montant trop élevé.');
      const cost = Math.round(p.purchasePriceCents * (l.sellUnit === 'BASE' ? base / p.purchaseFactorMilli : milli / 1000));
      return { ...l, p, milli, base, unitPrice, total, cost };
    });
    const totalCents = prepared.reduce((n, l) => n + l.total, 0);
    if (!Number.isSafeInteger(totalCents)) fail('Total invalide.');
    const sale = await tx.sale.create({ data: { ref: reference('VTE'), client: d.client, totalCents, paymentMethod: d.paymentMethod, cashSessionId: d.cashSessionId || undefined, createdById: req.user.id, lines: { create: prepared.map(x => ({ productId: x.p.id, qtyMilli: x.milli, sellUnit: x.sellUnit, qtyBaseMilli: x.base, priceCents: x.unitPrice, costCents: x.cost, totalCents: x.total })) } } });
    for (const l of prepared) {
      const updated = await tx.product.updateMany({ where: { id: l.p.id, stockMilli: { gte: l.base } }, data: { stockMilli: { decrement: l.base } } });
      if (updated.count !== 1) fail(`Stock insuffisant pour : ${l.p.name}.`, 409);
      const after = await tx.product.findUnique({ where: { id: l.p.id } });
      await tx.stockMovement.create({ data: { productId: l.p.id, deltaMilli: -l.base, balanceAfterMilli: after.stockMilli, sourceRef: sale.ref, type: 'SALE', userId: req.user.id, note: d.client } });
    }
    await audit(tx, req.user.id, 'SALE', 'Sale', sale.id, sale.ref);
    return sale;
  });
  good(res, result, 201);
}));

app.post('/api/sales/:id/return', auth, permit('sales.return'), safe(async (req, res) => {
  const d = z.object({ reason: str.min(5).max(300), lines: z.array(z.object({ saleLineId: z.string().min(1), quantity: qty })).min(1).max(100) }).parse(req.body);
  const result = await prisma.$transaction(async tx => {
    const sale = await tx.sale.findUnique({ where: { id: req.params.id }, include: { lines: true } });
    if (!sale) fail('Vente introuvable.', 404);
    const saleLines = Object.fromEntries(sale.lines.map(line => [line.id, line]));
    const prepared = [];
    for (const item of d.lines) {
      const line = saleLines[item.saleLineId];
      if (!line) fail('Ligne de vente introuvable.');
      const already = await tx.saleReturnLine.aggregate({ where: { saleLineId: line.id }, _sum: { qtyMilli: true } });
      const requested = toMilli(item.quantity);
      if (requested > line.qtyMilli - (already._sum.qtyMilli || 0)) fail('Quantité retournée supérieure à la quantité vendue.');
      const base = line.qtyBaseMilli * requested / line.qtyMilli;
      const amount = Math.round(line.totalCents * requested / line.qtyMilli);
      if (!Number.isSafeInteger(base)) fail('Conversion du retour impossible.');
      prepared.push({ line, requested, base, amount });
    }
    const total = prepared.reduce((sum, item) => sum + item.amount, 0);
    const returned = await tx.saleReturn.create({ data: { ref: reference('RET'), saleId: sale.id, createdById: req.user.id, reason: d.reason, totalCents: total, lines: { create: prepared.map(item => ({ saleLineId: item.line.id, qtyMilli: item.requested, qtyBaseMilli: item.base, amountCents: item.amount })) } } });
    for (const item of prepared) {
      const product = await tx.product.update({ where: { id: item.line.productId }, data: { stockMilli: { increment: item.base } } });
      await tx.stockMovement.create({ data: { productId: item.line.productId, deltaMilli: item.base, balanceAfterMilli: product.stockMilli, sourceRef: returned.ref, type: 'RETURN', userId: req.user.id, note: d.reason } });
    }
    await audit(tx, req.user.id, 'SALE_RETURN', 'SaleReturn', returned.id, `${returned.ref} ${sale.ref}`);
    return returned;
  });
  good(res, result, 201);
}));

app.get('/api/reports/profit', auth, permit('reports.profit'), safe(async (_req, res) => {
  const sales = await prisma.sale.findMany({ include: { lines: true }, orderBy: { createdAt: 'desc' }, take: 500 });
  const rows = sales.map(sale => ({ id: sale.id, ref: sale.ref, createdAt: sale.createdAt, totalCents: sale.totalCents, costCents: sale.lines.reduce((sum, line) => sum + line.costCents, 0), paymentMethod: sale.paymentMethod }));
  good(res, rows.map(row => ({ ...row, profitCents: row.totalCents - row.costCents })));
}));

app.get('/api/movements', auth, permit('movements.view'), safe(async (req, res) => {
  const where = req.query.productId ? { productId: String(req.query.productId) } : {};
  good(res, await prisma.stockMovement.findMany({ where, include: { product: { select: { name: true, internalCode: true, baseUnit: true } }, user: { select: { name: true } } }, orderBy: { createdAt: 'desc' }, take: 500 }));
}));
app.post('/api/stock/adjust', auth, permit('stock.adjust'), safe(async (req, res) => {
  const d = z.object({ productId: z.string().min(1), delta: z.coerce.number().finite().refine(n => n !== 0, 'Variation obligatoire'), reason: str.min(8).max(300) }).parse(req.body);
  const abs = toMilli(Math.abs(d.delta));
  const delta = d.delta > 0 ? abs : -abs;
  const movement = await prisma.$transaction(async tx => {
    const p = await tx.product.findUnique({ where: { id: d.productId } });
    if (!p) fail('Article introuvable.', 404);
    checkDiscrete(p.baseUnit, abs);
    if (delta < 0) {
      const updated = await tx.product.updateMany({ where: { id: p.id, stockMilli: { gte: abs } }, data: { stockMilli: { decrement: abs } } });
      if (!updated.count) fail('Stock insuffisant pour correction.', 409);
    } else await tx.product.update({ where: { id: p.id }, data: { stockMilli: { increment: abs } } });
    const after = await tx.product.findUnique({ where: { id: p.id } });
    const mv = await tx.stockMovement.create({ data: { productId: p.id, deltaMilli: delta, balanceAfterMilli: after.stockMilli, sourceRef: reference('INV'), type: 'ADJUSTMENT', userId: req.user.id, note: d.reason } });
    await audit(tx, req.user.id, 'STOCK_ADJUSTMENT', 'StockMovement', mv.id, d.reason);
    return mv;
  });
  good(res, movement, 201);
}));

app.get('/api/dashboard', auth, permit('dashboard.view'), safe(async (_req, res) => {
  const [products, purchases, sales, recentMovements, recentSales] = await Promise.all([
    prisma.product.findMany({ where: { active: true }, orderBy: { name: 'asc' } }),
    prisma.purchaseRequest.groupBy({ by: ['status'], _count: { id: true } }),
    prisma.sale.findMany({ where: { createdAt: { gte: new Date(Date.now() - 14 * 86400000) } }, select: { createdAt: true, totalCents: true } }),
    prisma.stockMovement.findMany({ include: { product: { select: { name: true, baseUnit: true } } }, orderBy: { createdAt: 'desc' }, take: 7 }),
    prisma.sale.findMany({ orderBy: { createdAt: 'desc' }, take: 5, select: { id: true, ref: true, client: true, totalCents: true, createdAt: true } }),
  ]);
  const daySeries = Array.from({ length: 14 }, (_, i) => {
    const d = new Date(Date.now() - (13 - i) * 86400000).toISOString().slice(0, 10);
    const sum = sales.filter(x => x.createdAt.toISOString().slice(0, 10) === d).reduce((n, x) => n + x.totalCents, 0);
    return { day: d, total: sum / 100 };
  });
  good(res, { productCount: products.length, lowStock: products.filter(p => p.stockMilli <= p.minStockMilli),
    pendingCount: purchases.find(p => p.status === 'PENDING')?._count?.id || 0,
    activePurchaseCount: purchases.filter(p => ['APPROVED', 'PARTIAL'].includes(p.status)).reduce((n, p) => n + p._count.id, 0),
    sales14DaysCents: sales.reduce((n, s) => n + s.totalCents, 0), saleCount14Days: sales.length,
    daySeries, recentMovements, recentSales });
}));
app.get('/api/audit', auth, permit('audit.view'), safe(async (_req, res) => {
  good(res, await prisma.auditEvent.findMany({ include: { user: { select: { name: true } } }, orderBy: { createdAt: 'desc' }, take: 200 }));
}));

app.use('/api', (req, _res, next) => next(Object.assign(new Error(`Route inconnue : ${req.method} ${req.path}`), { status: 404 })));
const rootDir = path.dirname(fileURLToPath(import.meta.url));
const dist = path.join(rootDir, '../dist');
app.use(express.static(dist));
app.get('*', (_req, res) => res.sendFile(path.join(dist, 'index.html'), err => { if (err && !res.headersSent) res.status(404).send('Compilez le front-end avec npm run build ou lancez npm run dev.'); }));
app.use((err, _req, res, _next) => {
  if (err instanceof ZodError) return res.status(400).json({ error: err.issues.map(x => `${x.path.join('.')}: ${x.message}`).join(' · ') });
  if (err.code === 'P2002') return res.status(409).json({ error: 'Doublon détecté : nom, référence, email ou code-barres déjà enregistré.' });
  if (err.code === 'P2025') return res.status(404).json({ error: 'Enregistrement introuvable.' });
  if (['P2034', 'P2028'].includes(err.code)) return res.status(409).json({ error: 'Conflit de mise à jour. Rechargez les données et réessayez.' });
  const code = err.status || 500;
  if (code >= 500) console.error(err);
  res.status(code).json({ error: code >= 500 ? 'Erreur serveur. Consultez le journal du serveur.' : err.message });
});
app.listen(PORT, () => console.log(`API Station Magazine : http://localhost:${PORT} | front-end : http://localhost:5173`));
