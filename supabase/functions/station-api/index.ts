import { createClient } from 'npm:@supabase/supabase-js@2';
import bcrypt from 'npm:bcryptjs@2.4.3';
import { SignJWT, jwtVerify } from 'npm:jose@5.10.0';

const url = Deno.env.get('SUPABASE_URL')!;
const secretKeys = JSON.parse(Deno.env.get('SUPABASE_SECRET_KEYS') || '{}');
const serviceKey = Deno.env.get('SUPABASE_SERVICE_ROLE_KEY') || Object.values(secretKeys)[0] as string;
const jwtSecret = Deno.env.get('STATION_JWT_SECRET')!;
const db = createClient(url, serviceKey, { auth: { persistSession: false } });
const key = new TextEncoder().encode(jwtSecret);
const cors = {
  'Access-Control-Allow-Origin': Deno.env.get('CORS_ORIGIN') || '*',
  'Access-Control-Allow-Headers': 'authorization, content-type',
  'Access-Control-Allow-Methods': 'GET, POST, PUT, PATCH, OPTIONS',
  'Content-Type': 'application/json; charset=utf-8',
};

const permissions: Record<string, string[]> = {
  MANAGER: ['dashboard.view', 'users.manage', 'products.manage', 'products.disable', 'products.archive', 'suppliers.manage', 'purchases.view', 'purchases.approve', 'receptions.view', 'sales.view', 'sales.return', 'cash.manage', 'cash.configure', 'reports.profit', 'movements.view', 'stock.adjust', 'audit.view'],
  MAGASIN: ['products.manage', 'products.archive', 'suppliers.manage', 'purchases.view', 'purchases.create', 'receptions.view', 'receptions.create', 'movements.view', 'stock.adjust'],
  VENTES: ['sales.view', 'sales.create'],
};

class HttpError extends Error { constructor(readonly status: number, message: string) { super(message); } }
const fail = (status: number, message: string): never => { throw new HttpError(status, message); };
const json = (body: unknown, status = 200) => new Response(JSON.stringify(body), { status, headers: cors });
const clean = (value: unknown) => String(value ?? '').trim();
const requireString = (value: unknown, label: string, min = 1, max = 500) => {
  const result = clean(value);
  if (result.length < min || result.length > max) fail(400, `${label} invalide.`);
  return result;
};
const toMilli = (value: unknown, label = 'QuantitÃ©') => {
  const number = Number(value);
  if (!Number.isFinite(number) || number <= 0 || Math.abs(number * 1000 - Math.round(number * 1000)) > 0.000001) fail(400, `${label} invalide.`);
  return Math.round(number * 1000);
};
const toCents = (value: unknown) => {
  const number = Number(value);
  if (!Number.isFinite(number) || number < 0 || Math.abs(number * 100 - Math.round(number * 100)) > 0.000001) fail(400, 'Prix invalide.');
  return Math.round(number * 100);
};
const normalizeName = (value: string) => value.normalize('NFKD').replace(/[\u0300-\u036f]/g, '').replace(/\s+/g, ' ').trim().toLowerCase();
const productCode = () => `ART-${Math.floor(Math.random() * 9e8 + 1e8)}`;
const userView = (user: any) => ({ id: user.id, name: user.name, username: user.username || user.email, role: user.role, active: user.active });
const reference = (prefix: string) => `${prefix}-${new Date().toISOString().replace(/[-:.TZ]/g, '').slice(0, 14)}-${crypto.randomUUID().slice(0, 5).toUpperCase()}`;

async function currentUser(request: Request) {
  const token = request.headers.get('authorization')?.replace(/^Bearer\s+/i, '');
  if (!token) fail(401, 'Authentification requise.');
  try {
    const verified = await jwtVerify(token, key, { algorithms: ['HS256'] });
    const { data, error } = await db.from('User').select('*').eq('id', verified.payload.sub!).single();
    if (error || !data || !data.active) fail(403, 'Compte dÃ©sactivÃ©.');
    return userView(data);
  } catch (error) {
    if (error instanceof HttpError) throw error;
    fail(401, 'Session expirÃ©e. Reconnectez-vous.');
  }
}
function permit(user: any, permission: string) {
  if (!permissions[user.role]?.includes(permission)) fail(403, 'AccÃ¨s non autorisÃ© pour votre rÃ´le.');
}
async function audit(userId: string, action: string, entityType: string, entityId: string, details = '') {
  const { error } = await db.from('AuditEvent').insert({ id: crypto.randomUUID(), userId, action, entityType, entityId, details: details.slice(0, 900) });
  if (error) throw error;
}
function databaseError(error: any): never {
  if (error?.code === '23505') fail(409, 'Doublon dÃ©tectÃ© : nom, rÃ©fÃ©rence ou code-barres dÃ©jÃ  enregistrÃ©.');
  if (error?.code === 'PGRST116') fail(404, 'Enregistrement introuvable.');
  fail(500, 'Erreur serveur. Consultez le journal Supabase.');
}

Deno.serve(async request => {
  if (request.method === 'OPTIONS') return new Response(null, { headers: cors });
  try {
    const path = new URL(request.url).pathname.replace(/^\/station-api/, '') || '/';
    if (request.method === 'GET' && path === '/health') return json({ ok: true, database: 'Supabase PostgreSQL', app: 'Station Magazine' });

    if (request.method === 'GET' && path === '/auth/users') {
      const { data, error } = await db.from('User').select('name,username').eq('active', true).not('username', 'is', null).order('name');
      if (error) databaseError(error);
      return json(data);
    }
    if (request.method === 'POST' && (path === '/auth/login' || path === '/')) {
      const body = await request.json();
      const username = requireString(body.username, 'Nom utilisateur', 3, 40).toLowerCase();
      const password = requireString(body.password, 'Mot de passe', 1, 120);
      const { data: user, error } = await db.from('User').select('*').or(`username.eq.${username},email.eq.${username}`).maybeSingle();
      if (error) databaseError(error);
      if (!user || !user.active || !await bcrypt.compare(password, user.passwordHash)) fail(401, 'Nom utilisateur ou mot de passe incorrect.');
      const token = await new SignJWT({}).setProtectedHeader({ alg: 'HS256' }).setSubject(user.id).setIssuedAt().setExpirationTime('8h').sign(key);
      return json({ token, user: userView(user) });
    }

    const user = await currentUser(request);
    if (request.method === 'GET' && path === '/auth/me') return json({ user });
    if (request.method === 'POST' && path === '/auth/password') {
      const body = await request.json();
      const oldPassword = requireString(body.oldPassword, 'Mot de passe actuel', 1, 120);
      const newPassword = requireString(body.newPassword, 'Nouveau mot de passe', 12, 120);
      const { data: existing, error: readError } = await db.from('User').select('passwordHash').eq('id', user.id).single();
      if (readError || !existing) databaseError(readError);
      if (!await bcrypt.compare(oldPassword, existing.passwordHash)) fail(400, 'Ancien mot de passe incorrect.');
      const { error } = await db.from('User').update({ passwordHash: await bcrypt.hash(newPassword, 12) }).eq('id', user.id);
      if (error) databaseError(error);
      return json({ ok: true });
    }

    if (request.method === 'GET' && path === '/users') {
      permit(user, 'users.manage');
      const { data, error } = await db.from('User').select('id,name,username,role,active,createdAt').order('createdAt');
      if (error) databaseError(error);
      return json(data);
    }
    if (request.method === 'POST' && path === '/users') {
      permit(user, 'users.manage');
      const body = await request.json();
      const name = requireString(body.name, 'Nom', 2, 90);
      const username = requireString(body.username, 'Nom utilisateur', 3, 40).toLowerCase();
      if (!/^[a-z0-9._-]+$/.test(username)) fail(400, 'Nom utilisateur invalide.');
      const password = requireString(body.password, 'Mot de passe', 12, 120);
      if (!['MANAGER', 'MAGASIN', 'VENTES'].includes(body.role)) fail(400, 'RÃ´le invalide.');
      const { data, error } = await db.from('User').insert({ id: crypto.randomUUID(), name, username, passwordHash: await bcrypt.hash(password, 12), role: body.role, active: true }).select('*').single();
      if (error) databaseError(error);
      await audit(user.id, 'USER_CREATE', 'User', data.id, username);
      return json(userView(data), 201);
    }
    const userMatch = path.match(/^\/users\/([^/]+)$/);
    if (request.method === 'PATCH' && userMatch) {
      permit(user, 'users.manage');
      const body = await request.json();
      if (user.id === userMatch[1] && (body.active === false || (body.role && body.role !== 'MANAGER'))) fail(400, 'Impossible de modifier votre propre accÃ¨s responsable.');
      const update: Record<string, unknown> = {};
      if (typeof body.active === 'boolean') update.active = body.active;
      if (body.role) { if (!['MANAGER', 'MAGASIN', 'VENTES'].includes(body.role)) fail(400, 'RÃ´le invalide.'); update.role = body.role; }
      if (body.password) update.passwordHash = await bcrypt.hash(requireString(body.password, 'Mot de passe', 12, 120), 12);
      if (!Object.keys(update).length) fail(400, 'Aucune modification.');
      const { data, error } = await db.from('User').update(update).eq('id', userMatch[1]).select('*').single();
      if (error) databaseError(error);
      await audit(user.id, 'USER_UPDATE', 'User', data.id, JSON.stringify({ active: body.active, role: body.role, passwordReset: !!body.password }));
      return json(userView(data));
    }

    if (request.method === 'GET' && path === '/suppliers') {
      permit(user, 'suppliers.manage');
      const { data, error } = await db.from('Supplier').select('*').eq('active', true).order('name');
      if (error) databaseError(error);
      return json(data);
    }
    const supplierInput = async () => {
      const body = await request.json();
      const supplierCode = requireString(body.supplierCode, 'Identifiant fournisseur', 1, 24).toUpperCase();
      if (!/^[A-Z0-9_-]+$/.test(supplierCode)) fail(400, 'Identifiant fournisseur invalide.');
      const email = clean(body.email); if (email && !/^\S+@\S+\.\S+$/.test(email)) fail(400, 'Email fournisseur invalide.');
      return { supplierCode, name: requireString(body.name, 'Nom fournisseur', 2, 120), contactName: clean(body.contactName).slice(0, 120), phone: clean(body.phone).slice(0, 40), email, address: clean(body.address).slice(0, 240), notes: clean(body.notes).slice(0, 500) };
    };
    if (request.method === 'POST' && path === '/suppliers') {
      permit(user, 'suppliers.manage'); const input = await supplierInput();
      const { data, error } = await db.from('Supplier').insert({ id: crypto.randomUUID(), ...input, active: true, createdById: user.id, updatedAt: new Date().toISOString() }).select('*').single();
      if (error) databaseError(error); await audit(user.id, 'SUPPLIER_CREATE', 'Supplier', data.id, data.name); return json(data, 201);
    }
    const supplierMatch = path.match(/^\/suppliers\/([^/]+)$/);
    if (request.method === 'PUT' && supplierMatch) {
      permit(user, 'suppliers.manage'); const input = await supplierInput();
      const { data, error } = await db.from('Supplier').update({ ...input, updatedAt: new Date().toISOString() }).eq('id', supplierMatch[1]).select('*').single();
      if (error) databaseError(error); await audit(user.id, 'SUPPLIER_UPDATE', 'Supplier', data.id, data.name); return json(data);
    }
    const supplierStatus = path.match(/^\/suppliers\/([^/]+)\/status$/);
    if (request.method === 'PATCH' && supplierStatus) {
      permit(user, 'suppliers.manage'); const body = await request.json(); if (typeof body.active !== 'boolean') fail(400, 'Statut invalide.');
      const { data, error } = await db.from('Supplier').update({ active: body.active, updatedAt: new Date().toISOString() }).eq('id', supplierStatus[1]).select('*').single();
      if (error) databaseError(error); await audit(user.id, 'SUPPLIER_STATUS', 'Supplier', data.id, String(body.active)); return json(data);
    }

    if (request.method === 'GET' && path === '/products') {
      const all = new URL(request.url).searchParams.get('all') === '1' && user.role !== 'VENTES';
      const query = db.from('Product').select('*').order('name');
      if (!all) query.eq('active', true);
      const { data, error } = await query;
      if (error) databaseError(error);
      return json(user.role === 'VENTES' ? data.map(({ purchasePriceCents, ...product }) => product) : data);
    }
    if (request.method === 'GET' && path === '/products/lookup') {
      const code = requireString(new URL(request.url).searchParams.get('code'), 'Code', 1, 64);
      const { data, error } = await db.from('Product').select('*').eq('active', true).or(`barcode.eq.${code},internalCode.eq.${code.toUpperCase()}`).maybeSingle();
      if (error) databaseError(error);
      if (!data) fail(404, `Article introuvable : ${code}`);
      if (user.role === 'VENTES') { const { purchasePriceCents, ...product } = data; return json(product); }
      return json(data);
    }
    const productInput = async (existingCode?: string) => {
      const body = await request.json();
      const name = requireString(body.name, 'Nom produit', 2, 150);
      const baseUnit = ['PCE', 'L', 'KG', 'M'].includes(body.baseUnit) ? body.baseUnit : fail(400, 'UnitÃ© de stock invalide.');
      const factor = toMilli(body.purchaseFactor, 'Coefficient d’achat');
      const minStock = body.minStock === undefined || body.minStock === '' ? 0 : toMilli(body.minStock, 'Seuil minimum');
      if (baseUnit === 'PCE' && (factor % 1000 || minStock % 1000)) fail(400, 'Les piÃ¨ces doivent avoir une quantitÃ© entiÃ¨re.');
      const internalCode = clean(body.internalCode || existingCode || productCode()).toUpperCase().replace(/\s+/g, '-');
      const barcode = clean(body.barcode) || null;
      if (!/^[A-Z0-9._-]{3,55}$/.test(internalCode)) fail(400, 'RÃ©fÃ©rence interne invalide.');
      if (barcode && !/^[A-Za-z0-9._-]{3,64}$/.test(barcode)) fail(400, 'Code-barres invalide.');
      return { name, normalizedName: normalizeName(name), internalCode, barcode, category: clean(body.category || 'Divers').slice(0, 60) || 'Divers', baseUnit, purchaseUnit: requireString(body.purchaseUnit, 'UnitÃ© d’achat', 1, 60), purchaseFactorMilli: factor, minStockMilli: minStock, purchasePriceCents: body.purchasePrice === undefined || body.purchasePrice === '' ? 0 : toCents(body.purchasePrice), salePriceCents: body.salePrice === undefined || body.salePrice === '' ? 0 : toCents(body.salePrice) };
    };
    if (request.method === 'POST' && path === '/products') {
      permit(user, 'products.manage'); const input = await productInput();
      const { data, error } = await db.from('Product').insert({ id: crypto.randomUUID(), ...input, stockMilli: 0, active: true, createdAt: new Date().toISOString(), updatedAt: new Date().toISOString() }).select('*').single();
      if (error) databaseError(error); await audit(user.id, 'PRODUCT_CREATE', 'Product', data.id, data.internalCode); return json(data, 201);
    }
    const productMatch = path.match(/^\/products\/([^/]+)$/);
    if (request.method === 'PUT' && productMatch) {
      permit(user, 'products.manage');
      const { data: previous, error: previousError } = await db.from('Product').select('*').eq('id', productMatch[1]).single();
      if (previousError || !previous) databaseError(previousError);
      const input = await productInput(previous.internalCode);
      if ((input.baseUnit !== previous.baseUnit || input.purchaseFactorMilli !== previous.purchaseFactorMilli) && previous.stockMilli !== 0) fail(400, 'UnitÃ©s verrouillÃ©es : article dÃ©jÃ  utilisÃ©.');
      const { data, error } = await db.from('Product').update({ ...input, updatedAt: new Date().toISOString() }).eq('id', previous.id).select('*').single();
      if (error) databaseError(error); await audit(user.id, 'PRODUCT_UPDATE', 'Product', data.id, data.internalCode); return json(data);
    }
    const productStatus = path.match(/^\/products\/([^/]+)\/status$/);
    if (request.method === 'PATCH' && productStatus) {
      permit(user, 'products.archive'); const body = await request.json(); if (typeof body.active !== 'boolean') fail(400, 'Statut invalide.');
      const { data, error } = await db.from('Product').update({ active: body.active, updatedAt: new Date().toISOString() }).eq('id', productStatus[1]).select('*').single();
      if (error) databaseError(error); await audit(user.id, 'PRODUCT_STATUS', 'Product', data.id, String(body.active)); return json(data);
    }
    const barcodeMatch = path.match(/^\/products\/([^/]+)\/generate-barcode$/);
    if (request.method === 'POST' && barcodeMatch) {
      permit(user, 'products.manage'); const { data: product, error: readError } = await db.from('Product').select('*').eq('id', barcodeMatch[1]).single();
      if (readError || !product) databaseError(readError); if (product.barcode) fail(400, 'Cet article dispose dÃ©jÃ  d’un code-barres.');
      const barcode = `GA-${product.internalCode}`;
      const { data, error } = await db.from('Product').update({ barcode, updatedAt: new Date().toISOString() }).eq('id', product.id).is('barcode', null).select('*').single();
      if (error || !data) databaseError(error); await audit(user.id, 'BARCODE_GENERATE', 'Product', data.id, barcode); return json(data);
    }

    if (request.method === 'GET' && path === '/cash/current') {
      permit(user, 'sales.create');
      const { data, error } = await db.from('CashSession').select('*').is('closedAt', null).order('openedAt', { ascending: false }).limit(1).maybeSingle();
      if (error) databaseError(error);
      return json(data);
    }
    if (request.method === 'GET' && path === '/cash/settings') {
      permit(user, 'cash.manage');
      let { data, error } = await db.from('CashSetting').select('*').eq('id', 1).maybeSingle();
      if (!data) ({ data, error } = await db.from('CashSetting').insert({ id: 1, defaultOpeningCents: 1000000, updatedAt: new Date().toISOString() }).select('*').single());
      if (error) databaseError(error); return json(data);
    }
    if (request.method === 'PUT' && path === '/cash/settings') {
      permit(user, 'cash.configure'); const body = await request.json(); const opening = Number(body.defaultOpeningCents);
      if (!Number.isSafeInteger(opening) || opening < 0) fail(400, 'Montant invalide.');
      const { data, error } = await db.from('CashSetting').upsert({ id: 1, defaultOpeningCents: opening, updatedAt: new Date().toISOString() }).select('*').single();
      if (error) databaseError(error); await audit(user.id, 'CASH_SETTING_UPDATE', 'CashSetting', '1', String(opening)); return json(data);
    }
    if (request.method === 'POST' && path === '/cash/open') {
      permit(user, 'cash.manage'); const body = await request.json(); const opening = Number(body.openingCents);
      if (!Number.isSafeInteger(opening) || opening < 0) fail(400, 'Montant invalide.');
      const { data: active, error: activeError } = await db.from('CashSession').select('id').is('closedAt', null).maybeSingle();
      if (activeError) databaseError(activeError); if (active) fail(400, 'Une caisse est dÃ©jÃ  ouverte.');
      const { data, error } = await db.from('CashSession').insert({ id: crypto.randomUUID(), userId: user.id, openingCents: opening }).select('*').single();
      if (error) databaseError(error); await audit(user.id, 'CASH_OPEN', 'CashSession', data.id, String(opening)); return json(data, 201);
    }
    if (request.method === 'POST' && path === '/cash/close') {
      permit(user, 'cash.manage'); const body = await request.json(); const closing = Number(body.closingCents);
      if (!Number.isSafeInteger(closing) || closing < 0) fail(400, 'Montant invalide.');
      const { data: active, error: activeError } = await db.from('CashSession').select('*').is('closedAt', null).order('openedAt', { ascending: false }).limit(1).maybeSingle();
      if (activeError) databaseError(activeError); if (!active) fail(400, 'Aucune caisse ouverte.');
      const { data, error } = await db.from('CashSession').update({ closingCents: closing, closedAt: new Date().toISOString() }).eq('id', active.id).select('*').single();
      if (error) databaseError(error); await audit(user.id, 'CASH_CLOSE', 'CashSession', data.id, String(closing)); return json(data);
    }
    if (request.method === 'GET' && path === '/cash/sessions') {
      permit(user, 'cash.manage');
      const { data, error } = await db.from('CashSession').select('*,user:User!CashSession_userId_fkey(name,username),sales:Sale(totalCents,paymentMethod)').order('openedAt', { ascending: false }).limit(200);
      if (error) databaseError(error);
      return json(data.map((session: any) => {
        const cashSalesCents = (session.sales || []).filter((sale: any) => sale.paymentMethod === 'CASH').reduce((sum: number, sale: any) => sum + sale.totalCents, 0);
        const expectedCents = session.openingCents + cashSalesCents;
        return { id: session.id, openedAt: session.openedAt, closedAt: session.closedAt, openingCents: session.openingCents, closingCents: session.closingCents, cashSalesCents, expectedCents, differenceCents: session.closingCents === null ? null : session.closingCents - expectedCents, user: session.user };
      }));
    }

    if (request.method === 'GET' && path === '/purchases') {
      permit(user, 'purchases.view');
      const { data, error } = await db.from('PurchaseRequest').select('*,supplierRef:Supplier!PurchaseRequest_supplierId_fkey(*),createdBy:User!PurchaseRequest_createdById_fkey(name),approvedBy:User!PurchaseRequest_approvedById_fkey(name),lines:PurchaseLine(*,product:Product(*)),receptions:Reception(id,ref,createdAt)').order('createdAt', { ascending: false }).limit(300);
      if (error) databaseError(error); return json(data);
    }
    if (request.method === 'POST' && path === '/purchases') {
      permit(user, 'purchases.create'); const body = await request.json();
      if (!Array.isArray(body.lines) || !body.lines.length || body.lines.length > 100) fail(400, 'Une demande doit contenir des articles.');
      const ids = body.lines.map((line: any) => requireString(line.productId, 'Article', 1, 100));
      if (new Set(ids).size !== ids.length) fail(400, 'Un article ne peut figurer qu’une fois.');
      const { data: products, error: productError } = await db.from('Product').select('*').in('id', ids).eq('active', true);
      if (productError || products.length !== ids.length) fail(404, 'Un ou plusieurs articles sont indisponibles.');
      let supplierName = clean(body.supplier).slice(0, 120); const supplierId = body.supplierId || null;
      if (supplierId) { const { data: supplier, error } = await db.from('Supplier').select('id,name').eq('id', supplierId).eq('active', true).single(); if (error || !supplier) fail(404, 'Fournisseur introuvable ou inactif.'); supplierName = supplier.name; }
      const requestId = crypto.randomUUID(); const now = new Date().toISOString();
      const { data: purchase, error } = await db.from('PurchaseRequest').insert({ id: requestId, ref: reference('DA'), supplier: supplierName, supplierId, notes: clean(body.notes).slice(0, 500), status: 'PENDING', createdById: user.id, createdAt: now, updatedAt: now }).select('*').single();
      if (error) databaseError(error);
      const byId = Object.fromEntries(products.map((product: any) => [product.id, product]));
      const lines = body.lines.map((line: any) => ({ id: crypto.randomUUID(), requestId, productId: line.productId, requestedMilli: toMilli(line.quantity), receivedMilli: 0, unitPriceCents: line.price === undefined || line.price === '' ? byId[line.productId].purchasePriceCents : toCents(line.price) }));
      const { error: lineError } = await db.from('PurchaseLine').insert(lines); if (lineError) databaseError(lineError);
      await audit(user.id, 'PURCHASE_REQUEST', 'PurchaseRequest', requestId, purchase.ref); return json({ ...purchase, lines }, 201);
    }
    const decisionMatch = path.match(/^\/purchases\/([^/]+)\/decision$/);
    if (request.method === 'POST' && decisionMatch) {
      permit(user, 'purchases.approve'); const body = await request.json(); if (!['APPROVED', 'REJECTED'].includes(body.decision)) fail(400, 'DÃ©cision invalide.');
      const { data: purchase, error: readError } = await db.from('PurchaseRequest').select('*').eq('id', decisionMatch[1]).single();
      if (readError || !purchase) databaseError(readError); if (purchase.createdById === user.id) fail(400, 'Un responsable ne peut pas approuver sa propre demande.');
      const { data, error } = await db.from('PurchaseRequest').update({ status: body.decision, approvedById: user.id, approvedAt: new Date().toISOString(), updatedAt: new Date().toISOString() }).eq('id', purchase.id).eq('status', 'PENDING').select('*').single();
      if (error || !data) fail(409, 'Demande dÃ©jÃ  traitÃ©e.'); await audit(user.id, body.decision, 'PurchaseRequest', data.id, data.ref); return json(data);
    }
    if (request.method === 'GET' && path === '/receptions') {
      permit(user, 'receptions.view'); const { data, error } = await db.from('Reception').select('*,request:PurchaseRequest(ref,supplier,supplierRef:Supplier(*)),createdBy:User(name),lines:ReceptionLine(*,product:Product(*))').order('createdAt', { ascending: false }).limit(300); if (error) databaseError(error); return json(data);
    }
    if (request.method === 'POST' && path === '/receptions') {
      permit(user, 'receptions.create'); const body = await request.json(); if (!Array.isArray(body.lines) || !body.lines.length) fail(400, 'Saisissez au moins une quantitÃ©.');
      const lines = body.lines.map((line: any) => ({ purchaseLineId: requireString(line.purchaseLineId, 'Ligne', 1, 100), quantityMilli: toMilli(line.quantity) }));
      if (new Set(lines.map((line: any) => line.purchaseLineId)).size !== lines.length) fail(400, 'Lignes de rÃ©ception en double.');
      const { data, error } = await db.rpc('station_receive_goods', { p_user_id: user.id, p_request_id: requireString(body.requestId, 'Demande', 1, 100), p_note: clean(body.note).slice(0, 500), p_lines: lines });
      if (error) fail(400, error.message); return json(data, 201);
    }

    if (request.method === 'POST' && path === '/sales') {
      permit(user, 'sales.create');
      const body = await request.json();
      const paymentMethod = ['CASH', 'CARD', 'CREDIT'].includes(body.paymentMethod) ? body.paymentMethod : 'CASH';
      if (!Array.isArray(body.lines) || body.lines.length < 1 || body.lines.length > 100) fail(400, 'Une vente doit contenir entre 1 et 100 articles.');
      const lines = body.lines.map((line: any) => ({
        productId: requireString(line.productId, 'Article', 1, 100),
        qtyMilli: toMilli(line.quantity),
        sellUnit: line.sellUnit === 'BASE' ? 'BASE' : line.sellUnit === 'PURCHASE' ? 'PURCHASE' : fail(400, 'UnitÃ© de vente invalide.'),
        priceCents: line.price === undefined || line.price === null || line.price === '' ? null : toCents(line.price),
      }));
      if (new Set(lines.map((line: any) => `${line.productId}:${line.sellUnit}`)).size !== lines.length) fail(400, 'Fusionnez les lignes rÃ©pÃ©tÃ©es du mÃªme article.');
      const { data, error } = await db.rpc('station_create_sale', {
        p_user_id: user.id, p_client: clean(body.client).slice(0, 120), p_payment_method: paymentMethod,
        p_cash_session_id: body.cashSessionId || null, p_lines: lines,
      });
      if (error) fail(400, error.message);
      return json(data, 201);
    }
    if (request.method === 'GET' && path === '/sales') {
      permit(user, 'sales.view');
      let query = db.from('Sale').select('*,createdBy:User!Sale_createdById_fkey(name,username),lines:SaleLine(*,product:Product(*))').order('createdAt', { ascending: false }).limit(300);
      if (user.role === 'VENTES') query = query.eq('createdById', user.id);
      const { data, error } = await query; if (error) databaseError(error);
      return json(user.role === 'VENTES' ? data.map((sale: any) => ({ ...sale, lines: sale.lines.map((line: any) => { const { purchasePriceCents, ...product } = line.product; return { ...line, product }; }) })) : data);
    }
    const returnMatch = path.match(/^\/sales\/([^/]+)\/return$/);
    if (request.method === 'POST' && returnMatch) {
      permit(user, 'sales.return'); const body = await request.json(); const reason = requireString(body.reason, 'Motif', 5, 300);
      if (!Array.isArray(body.lines) || !body.lines.length) fail(400, 'SÃ©lectionnez au moins une ligne.');
      const lines = body.lines.map((line: any) => ({ saleLineId: requireString(line.saleLineId, 'Ligne', 1, 100), quantityMilli: toMilli(line.quantity) }));
      const { data, error } = await db.rpc('station_return_sale', { p_user_id: user.id, p_sale_id: returnMatch[1], p_reason: reason, p_lines: lines });
      if (error) fail(400, error.message); return json(data, 201);
    }

    if (request.method === 'GET' && path === '/reports/profit') {
      permit(user, 'reports.profit');
      const { data, error } = await db.from('Sale').select('id,ref,createdAt,totalCents,paymentMethod,lines:SaleLine(costCents)').order('createdAt', { ascending: false }).limit(500);
      if (error) databaseError(error); return json(data.map((sale: any) => ({ id: sale.id, ref: sale.ref, createdAt: sale.createdAt, totalCents: sale.totalCents, paymentMethod: sale.paymentMethod, costCents: sale.lines.reduce((sum: number, line: any) => sum + line.costCents, 0), profitCents: sale.totalCents - sale.lines.reduce((sum: number, line: any) => sum + line.costCents, 0) })));
    }
    if (request.method === 'GET' && path === '/movements') {
      permit(user, 'movements.view'); const productId = new URL(request.url).searchParams.get('productId');
      let query = db.from('StockMovement').select('*,product:Product(name,internalCode,baseUnit),user:User(name)').order('createdAt', { ascending: false }).limit(500); if (productId) query = query.eq('productId', productId);
      const { data, error } = await query; if (error) databaseError(error); return json(data);
    }
    if (request.method === 'GET' && path === '/audit') {
      permit(user, 'audit.view'); const { data, error } = await db.from('AuditEvent').select('*,user:User(name)').order('createdAt', { ascending: false }).limit(200); if (error) databaseError(error); return json(data);
    }
    if (request.method === 'GET' && path === '/dashboard') {
      permit(user, 'dashboard.view');
      const since = new Date(Date.now() - 14 * 86400000).toISOString();
      const [productsResult, purchasesResult, salesResult, movementsResult, recentSalesResult] = await Promise.all([
        db.from('Product').select('*').eq('active', true).order('name'),
        db.from('PurchaseRequest').select('status'),
        db.from('Sale').select('createdAt,totalCents').gte('createdAt', since),
        db.from('StockMovement').select('*,product:Product(name,baseUnit)').order('createdAt', { ascending: false }).limit(7),
        db.from('Sale').select('id,ref,client,totalCents,createdAt').order('createdAt', { ascending: false }).limit(5),
      ]);
      for (const result of [productsResult, purchasesResult, salesResult, movementsResult, recentSalesResult]) if (result.error) databaseError(result.error);
      const products = productsResult.data!; const purchases = purchasesResult.data!; const sales = salesResult.data!;
      const daySeries = Array.from({ length: 14 }, (_, index) => { const day = new Date(Date.now() - (13 - index) * 86400000).toISOString().slice(0, 10); return { day, total: sales.filter((sale: any) => sale.createdAt.slice(0, 10) === day).reduce((sum: number, sale: any) => sum + sale.totalCents, 0) / 100 }; });
      return json({ productCount: products.length, lowStock: products.filter((product: any) => product.stockMilli <= product.minStockMilli), pendingCount: purchases.filter((purchase: any) => purchase.status === 'PENDING').length, activePurchaseCount: purchases.filter((purchase: any) => ['APPROVED', 'PARTIAL'].includes(purchase.status)).length, sales14DaysCents: sales.reduce((sum: number, sale: any) => sum + sale.totalCents, 0), saleCount14Days: sales.length, daySeries, recentMovements: movementsResult.data, recentSales: recentSalesResult.data });
    }
    if (request.method === 'POST' && path === '/stock/adjust') {
      permit(user, 'stock.adjust'); const body = await request.json(); const amount = Number(body.delta); if (!Number.isFinite(amount) || amount === 0) fail(400, 'Variation obligatoire.');
      const delta = Math.sign(amount) * toMilli(Math.abs(amount)); const reason = requireString(body.reason, 'Motif', 8, 300);
      const { data, error } = await db.rpc('station_adjust_stock', { p_user_id: user.id, p_product_id: requireString(body.productId, 'Article', 1, 100), p_delta_milli: delta, p_reason: reason });
      if (error) fail(400, error.message); return json(data, 201);
    }

    return json({ error: `Route inconnue : ${request.method} ${path}` }, 404);
  } catch (error) {
    console.error(error);
    return json({ error: error instanceof HttpError ? error.message : 'Erreur serveur. Consultez le journal Supabase.' }, error instanceof HttpError ? error.status : 500);
  }
});
