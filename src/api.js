const TOKEN_KEY = 'magasinpro_token';
export const getToken = () => sessionStorage.getItem(TOKEN_KEY);
export const setToken = token => token ? sessionStorage.setItem(TOKEN_KEY, token) : sessionStorage.removeItem(TOKEN_KEY);
export async function api(path, options = {}) {
  const headers = { 'Content-Type': 'application/json', ...(getToken() ? { Authorization: `Bearer ${getToken()}` } : {}) };
  const response = await fetch(`/api${path}`, { ...options, headers: { ...headers, ...options.headers } });
  let payload;
  try { payload = await response.json(); } catch { throw new Error('Réponse serveur illisible. Le serveur API est-il démarré ?'); }
  if (!response.ok) {
    if (response.status === 401 && !path.startsWith('/auth/login')) {
      setToken(null); window.dispatchEvent(new CustomEvent('magasin:unauthorized'));
    }
    throw new Error(payload.error || `Erreur HTTP ${response.status}`);
  }
  return payload;
}
export const post = (path, data) => api(path, { method: 'POST', body: JSON.stringify(data) });
export const put = (path, data) => api(path, { method: 'PUT', body: JSON.stringify(data) });
export const patch = (path, data) => api(path, { method: 'PATCH', body: JSON.stringify(data) });
