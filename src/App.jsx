import React, { useCallback, useEffect, useState } from 'react';
import {
  ArrowRight, Banknote, BarChart3, ClipboardCheck, ClipboardList, History, LayoutDashboard,
  LogOut, Menu, Package, PackageCheck, PanelLeftClose, PanelLeftOpen, RefreshCcw, ScanBarcode,
  ShieldCheck, Settings, ShoppingCart, UserRound, Users, Warehouse, X, KeyRound,
  Eye, EyeOff, Boxes, FileSpreadsheet
} from 'lucide-react';
import { api, post, getToken, setToken } from './api';
import { roleLabel } from './utils';
import { Button, FormField, Modal, Spinner, Toast } from './components/UI';
import Dashboard from './pages/Dashboard';
import { Products, ImportProducts } from './pages/Products';
import Purchases from './pages/Purchases';
import Receptions from './pages/Receptions';
import Stock from './pages/Stock';
import Sales from './pages/Sales';
import Movements from './pages/Movements';
import UsersPage, { Audit } from './pages/Users';
import Home from './pages/Home';
import Reports from './pages/Reports';
import Suppliers from './pages/Suppliers';
import Cash from './pages/Cash';

const nav = {
  MANAGER: [
    ['dashboard', 'Vue générale', LayoutDashboard],
    ['purchases', 'Demandes à valider', ClipboardCheck],
    ['stock', 'État du stock', Warehouse],
    ['reports', 'Rapport des ventes', BarChart3],
    ['cash', 'Journal de caisse', Banknote],
    ['products', 'Articles', Package],
    ['receptions', 'Réceptions', PackageCheck],
    ['movements', 'Historique du stock', History],
    ['users', 'Comptes et accès', Users],
    ['suppliers', 'Fournisseurs', Users],
    ['audit', 'Journal de contrôle', ShieldCheck],
  ],
  MAGASIN: [
    ['home', 'Accueil', LayoutDashboard],
    ['purchases', 'Demandes d’achat', ClipboardList],
    ['receptions', 'Réception produits', PackageCheck],
    ['stock', 'Stock disponible', Warehouse],
    ['products', 'Articles', Package],
    ['import', 'Import Excel', FileSpreadsheet],
    ['movements', 'Mouvements', History],
    ['suppliers', 'Fournisseurs', Users],
  ],
  VENTES: [
    ['sales', 'Nouvelle vente', ShoppingCart],
    ['home', 'Mon espace', LayoutDashboard],
  ],
};
const labels = Object.fromEntries(Object.values(nav).flat().map(([key,label]) => [key,label]));
const navGroups = { dashboard:'TABLEAU DE BORD', purchases:'APPROVISIONNEMENT', receptions:'APPROVISIONNEMENT', suppliers:'APPROVISIONNEMENT', stock:'STOCK ET ARTICLES', products:'STOCK ET ARTICLES', import:'STOCK ET ARTICLES', movements:'STOCK ET ARTICLES', reports:'FINANCES', cash:'FINANCES', sales:'VENTES', home:'ACCUEIL', users:'ADMINISTRATION', audit:'ADMINISTRATION' };
const firstPage = role => role === 'VENTES' ? 'sales' : role === 'MANAGER' ? 'dashboard' : 'home';
const initial = { products: [], purchases: [], receptions: [], sales: [], movements: [], suppliers: [], profit: [], cash: [], users: [], audits: [], dashboard: null };

function Brand({ vertical = false }) {
  return <div className={`station-brand ${vertical?'brand-vertical':''}`}>
    <span className="station-logo"><Boxes size={23} strokeWidth={2.5}/></span>
    <div><strong>Station <span>Magazine</span></strong><small>GESTION DU MAGASIN</small></div>
  </div>;
}

function Login({ onLogin, toast }) {
  const [username, setUsername] = useState('');
  const [password, setPassword] = useState('');
  const [accounts, setAccounts] = useState([]);
  const [show, setShow] = useState(false);
  const [busy, setBusy] = useState(false);
  useEffect(() => { api('/auth/users').then(setAccounts).catch(() => {}); }, []);
  const submit = async e => {
    e.preventDefault(); setBusy(true);
    try {
      const result = await post('/auth/login', { username, password });
      setToken(result.token); onLogin(result.user);
    } catch (err) { toast(err.message, 'error'); } finally { setBusy(false); }
  };
  return <div className="station-login">
    <div className="login-top"><Brand/></div>
    <div className="login-shell">
      <div className="login-intro">
        <div className="welcome-tag">Un seul espace, trois métiers</div>
        <h1>Votre magasin,<br/><span>plus simple à gérer.</span></h1>
        <p>Demandes d’achat, réceptions, stock et ventes. Chaque collaborateur accède uniquement aux outils dont il a besoin.</p>
        <div className="login-capabilities">
          <span><BarChart3 size={18}/> Responsable</span>
          <span><Warehouse size={18}/> Magasinier</span>
          <span><ScanBarcode size={18}/> Vendeur</span>
        </div>
      </div>
      <div className="signin-card">
        <div className="signin-symbol"><UserRound size={24}/></div>
        <h2>Connexion</h2>
        <p>Entrez les identifiants de votre compte.</p>
        <form className="form-layout" onSubmit={submit}>
          <FormField label="Utilisateur"><select autoComplete="username" required value={username} onChange={e=>setUsername(e.target.value)}><option value="">Choisir un utilisateur</option>{accounts.map(account=><option key={account.username} value={account.username}>{account.name} ({account.username})</option>)}</select></FormField>
          <FormField label="Mot de passe"><div className="password-control"><input type={show?'text':'password'} autoComplete="current-password" required placeholder="Votre mot de passe" value={password} onChange={e=>setPassword(e.target.value)}/><button type="button" onClick={()=>setShow(!show)} aria-label={show?'Masquer le mot de passe':'Afficher le mot de passe'}>{show?<EyeOff size={19}/>:<Eye size={19}/>}</button></div></FormField>
          <Button type="submit" block loading={busy}>Accéder à mon espace <ArrowRight size={18}/></Button>
        </form>
        <div className="signin-hint"><ShieldCheck size={18}/><span>Vos accès dépendent du rôle attribué par le responsable.</span></div>
      </div>
    </div>
    <div className="login-bottom">Station Magazine · Gestion interne sécurisée</div>
  </div>;
}

function PasswordDialog({ onClose, toast }) {
  const [oldPassword,setOld] = useState(''); const [newPassword,setNew] = useState(''); const [saving,setSaving] = useState(false);
  const submit = async e => {e.preventDefault(); setSaving(true);try{await post('/auth/password',{oldPassword,newPassword});toast('Mot de passe modifié.');onClose();}catch(err){toast(err.message,'error');}finally{setSaving(false)}};
  return <Modal title="Modifier mon mot de passe" onClose={onClose}>
    <form className="form-layout" onSubmit={submit}>
      <FormField label="Mot de passe actuel"><input type="password" autoComplete="current-password" required value={oldPassword} onChange={e=>setOld(e.target.value)}/></FormField>
      <FormField label="Nouveau mot de passe" hint="12 caractères minimum"><input type="password" autoComplete="new-password" minLength={12} required value={newPassword} onChange={e=>setNew(e.target.value)}/></FormField>
      <div className="modal-actions"><Button type="button" variant="secondary" onClick={onClose}>Annuler</Button><Button type="submit" loading={saving}>Enregistrer</Button></div>
    </form>
  </Modal>;
}

function SettingsDialog({ user, onClose, onPassword, onUsers }) {
  return <Modal title="Paramètres" subtitle="Gérez vos préférences et les accès de l’équipe." onClose={onClose}>
    <div className="settings-actions">
      <button type="button" className="settings-action" onClick={onPassword}><KeyRound size={20}/><span><strong>Modifier le mot de passe</strong><small>Changez votre mot de passe personnel.</small></span><ArrowRight size={17}/></button>
      {user.role === 'MANAGER' && <button type="button" className="settings-action" onClick={onUsers}><Users size={20}/><span><strong>Utilisateurs & accès</strong><small>Ajouter, désactiver, activer ou réinitialiser un compte.</small></span><ArrowRight size={17}/></button>}
    </div>
  </Modal>;
}

export default function App() {
  const [user,setUser] = useState(null);
  const [page,setPage] = useState('dashboard');
  const [data,setData] = useState(initial);
  const [loading,setLoading] = useState(!!getToken());
  const [refreshing,setRefreshing] = useState(false);
  const [message,setMessage] = useState(null);
  const [mobile,setMobile] = useState(false);
  const [sidebarCollapsed,setSidebarCollapsed] = useState(false);
  const [passwordOpen,setPasswordOpen] = useState(false);
  const [settingsOpen,setSettingsOpen] = useState(false);
  const [preselect,setPreselect] = useState(null);
  const toast = useCallback((text,type='success') => setMessage({message:text,type,id:Date.now()}),[]);
  const load = useCallback(async (person,begin=false) => {
    if (!person) return;
    if (begin) setLoading(true); else setRefreshing(true);
    try {
      const paths = person.role === 'MANAGER'
        ? ['products','purchases','receptions','sales','movements','dashboard','users','suppliers','profit','cash','audit']
        : person.role === 'MAGASIN' ? ['products','purchases','receptions','movements','suppliers']
        : ['products','sales'];
      const result = await Promise.all(paths.map(k => api(k === 'profit' ? '/reports/profit' : k === 'cash' ? '/cash/sessions' : '/'+k)));
      const fresh = { ...initial }; paths.forEach((key,index)=>{fresh[key === 'audit' ? 'audits' : key] = result[index]});
      setData(fresh);
    } catch(err) { toast(err.message,'error'); }
    finally {setLoading(false);setRefreshing(false);}
  },[toast]);
  useEffect(()=>{
    let alive = true;
    if (getToken()) api('/auth/me').then(({user:u})=>{if (alive){setUser(u);setPage(firstPage(u.role));load(u,true)}})
      .catch(()=>{setToken(null);if(alive)setLoading(false)});
    return ()=>{alive=false};
  },[load]);
  useEffect(()=>{
    const fn=()=>{setUser(null);setData(initial);setLoading(false)};
    window.addEventListener('magasin:unauthorized',fn);
    return ()=>window.removeEventListener('magasin:unauthorized',fn);
  },[]);
  const onLogin = person => {setUser(person);setPage(firstPage(person.role));load(person,true)};
  const go = (dest,params={}) => {
    if (!user || !(nav[user.role]||[]).some(([key])=>key===dest)) return;
    if(params.requestId) setPreselect(params.requestId);
    setPage(dest);setMobile(false);window.scrollTo({top:0,behavior:'smooth'});
  };
  const logout=()=>{setToken(null);setUser(null);setData(initial);setMobile(false)};
  const changed=()=>load(user);
  if(!user) return <><Login onLogin={onLogin} toast={toast}/><Toast toast={message} onClose={()=>setMessage(null)}/></>;
  const common={user,changed,toast};
  const content = () => {
    switch(page){
      case 'dashboard': return <Dashboard data={data.dashboard} go={go} user={user}/>;
      case 'home': return <Home user={user} data={data} go={go}/>;
      case 'products': return <Products products={data.products} {...common}/>;
      case 'import': return <ImportProducts changed={changed} toast={toast}/>;
      case 'purchases': return <Purchases purchases={data.purchases} products={data.products} suppliers={data.suppliers} go={go} {...common}/>;
      case 'suppliers': return <Suppliers suppliers={data.suppliers} {...common}/>;
      case 'receptions': return <Receptions receptions={data.receptions} purchases={data.purchases} preselect={preselect} clearPreselect={()=>setPreselect(null)} {...common}/>;
      case 'stock': return <Stock products={data.products} {...common}/>;
      case 'sales': return <Sales products={data.products} sales={data.sales} {...common}/>;
      case 'reports': return <Reports sales={data.sales} profit={data.profit} go={go}/>;
      case 'cash': return <Cash sessions={data.cash} {...common}/>;
      case 'movements': return <Movements movements={data.movements}/>;
      case 'users': return <UsersPage users={data.users} current={user} changed={changed} toast={toast}/>;
      case 'audit': return <Audit audits={data.audits}/>;
      default: return <Home user={user} data={data} go={go}/>;
    }
  };
  return <div className="station-app">
    {mobile && <button className="station-backdrop" aria-label="Fermer le menu" onClick={()=>setMobile(false)}/>}
    <aside className={`station-sidebar ${mobile?'open':''} ${sidebarCollapsed?'collapsed':''}`}>
      <div className="sidebar-top"><Brand/><button className="station-close" aria-label="Fermer le menu" onClick={()=>setMobile(false)}><X size={22}/></button></div>
      <p className="sidebar-label">MON ESPACE</p>
      <nav aria-label="Menu principal" className="station-menu">{(nav[user.role]||[]).filter(([key])=>key!=='users').map(([key,label,Icon],index,items) =>
        <React.Fragment key={key}>{(index===0||navGroups[key]!==navGroups[items[index-1][0]])&&<div className="sidebar-group-label">{navGroups[key]}</div>}<button type="button" onClick={()=>go(key)} className={`station-menu-item ${page===key?'active':''}`} aria-current={page===key?'page':undefined} title={sidebarCollapsed?label:undefined}><Icon size={21}/><span>{label}</span>{key==='purchases'&&user.role==='MANAGER'&&(data.dashboard?.pendingCount||0)>0&&<b className="nav-pill">{data.dashboard.pendingCount}</b>}</button></React.Fragment>
      )}</nav>
      <div className="sidebar-foot"><div className="sidebar-settings-title">PARAMÈTRES</div><button className="sidebar-settings-button" onClick={()=>setSettingsOpen(true)} title="Paramètres"><Settings size={19}/><span>Paramètres</span></button><button onClick={logout}><LogOut size={18}/><span>Déconnexion</span></button></div>
    </aside>
    <div className="station-main">
      <header className="station-topbar">
        <div className="topbar-title"><button className="station-menu-toggle" aria-label="Ouvrir le menu" onClick={()=>setMobile(true)}><Menu size={23}/></button><button className="station-collapse-toggle" aria-label={sidebarCollapsed?'Ouvrir la barre latérale':'Réduire la barre latérale'} onClick={()=>setSidebarCollapsed(value=>!value)}>{sidebarCollapsed?<PanelLeftOpen size={21}/>:<PanelLeftClose size={21}/>}</button><span>{labels[page]||'Accueil'}</span></div>
        <div className="station-top-actions"><button className="station-refresh" onClick={changed} disabled={refreshing} aria-label="Actualiser les données"><RefreshCcw size={19} className={refreshing?'spin':''}/><span>Actualiser</span></button><span className="top-role">{roleLabel[user.role]}</span><span className="top-avatar">{user.name[0]?.toUpperCase()}</span></div>
      </header>
      <main className="station-content">{loading?<Spinner/>:content()}<footer className="station-footer">Station Magazine © 2026 · Données et mouvements enregistrés</footer></main>
    </div>
    {passwordOpen&&<PasswordDialog onClose={()=>setPasswordOpen(false)} toast={toast}/>}
    {settingsOpen&&<SettingsDialog user={user} onClose={()=>setSettingsOpen(false)} onPassword={()=>{setSettingsOpen(false);setPasswordOpen(true)}} onUsers={()=>{setSettingsOpen(false);go('users')}}/>}
    <Toast toast={message} onClose={()=>setMessage(null)}/>
  </div>;
}
