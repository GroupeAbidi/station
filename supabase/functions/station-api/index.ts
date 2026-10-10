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
  const { error } = await db.from('AuditEvent').insert({ userId, action, entityType, entityId, details: details.slice(0, 900) });
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

    if (request.method === 'GET' && path === '/cash/current') {
      permit(user, 'sales.create');
      const { data, error } = await db.from('CashSession').select('*').is('closedAt', null).order('openedAt', { ascending: false }).limit(1).maybeSingle();
      if (error) databaseError(error);
      return json(data);
    }

    return json({ error: `Route inconnue : ${request.method} ${path}` }, 404);
  } catch (error) {
    console.error(error);
    return json({ error: error instanceof HttpError ? error.message : 'Erreur serveur. Consultez le journal Supabase.' }, error instanceof HttpError ? error.status : 500);
  }
});
