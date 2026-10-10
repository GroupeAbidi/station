import React from 'react';
import { AlertTriangle, ArrowRight, BarChart3, CheckCircle2, ClipboardCheck, Package, Warehouse, ShoppingBag, TrendingUp } from 'lucide-react';
import { ResponsiveContainer, AreaChart, CartesianGrid, XAxis, YAxis, Tooltip, Area } from 'recharts';
import { PageHeading, Panel, Button } from '../components/UI';
import { da, dateOnly, dateTime, num, quantity } from '../utils';
export default function Dashboard({data,go,user}){
  const pending=data?.pendingCount||0;
  const low=data?.lowStock||[];
  const cards=[
    {name:'Articles enregistrés',value:num(data?.productCount||0,0),icon:Package, tone:'navy',desc:'Références actives'},
    {name:'Demandes à valider',value:num(pending,0),icon:ClipboardCheck,tone:'gold',desc:'En attente de décision'},
    {name:'Alertes de stock',value:num(low.length,0),icon:AlertTriangle,tone:'red',desc:'Rupture ou stock faible'},
    {name:'Ventes sur 14 jours',value:da(data?.sales14DaysCents||0),icon:TrendingUp,tone:'green',desc:`${data?.saleCount14Days||0} vente(s)`},
  ];
  return <div className="manager-home">
    <PageHeading eyebrow="TABLEAU DE BORD DU RESPONSABLE" title={`Bonjour, ${user.name.split(' ')[0]} 👋`} description="Toutes les informations importantes du magasin au même endroit."/>
    <div className="manager-welcome"><div><small>VOTRE PRIORITÉ</small><h2>{pending?`${pending} demande${pending>1?'s':''} à approuver`:'Le magasin est à jour'}</h2><p>{pending?'Vérifiez les demandes du magasinier avant toute réception.':'Aucune demande d’achat ne nécessite votre décision actuellement.'}</p><Button icon={ArrowRight} onClick={()=>go('purchases')}>Voir les demandes</Button></div><div className="welcome-icon"><ClipboardCheck size={56}/></div></div>
    <div className="stat-grid clear-stats">{cards.map(c=><div className="clear-stat" key={c.name}><div className={`clear-stat-symbol ${c.tone}`}><c.icon size={24}/></div><span>{c.name}</span><strong>{c.value}</strong><small>{c.desc}</small></div>)}</div>
    <div className="quick-actions-bar"><button onClick={()=>go('stock')}><Warehouse size={19}/> Voir le stock <ArrowRight size={16}/></button><button onClick={()=>go('reports')}><BarChart3 size={19}/> Rapport des ventes <ArrowRight size={16}/></button><button onClick={()=>go('users')}><CheckCircle2 size={19}/> Comptes utilisateurs <ArrowRight size={16}/></button></div>
    <div className="dashboard-main-grid simple-dashboard-grid">
      <Panel title="Évolution des ventes" subtitle="Chiffre d'affaires des 14 derniers jours"><div className="chart-wrap"><ResponsiveContainer width="100%" height="100%"><AreaChart data={data?.daySeries||[]} margin={{top:14,right:18,left:-8,bottom:0}}><defs><linearGradient id="simpleGradient" x1="0" x2="0" y1="0" y2="1"><stop offset="0%" stopColor="#1663dd" stopOpacity="0.2"/><stop offset="100%" stopColor="#1663dd" stopOpacity="0"/></linearGradient></defs><CartesianGrid stroke="#e4eaf0" strokeDasharray="4 4" vertical={false}/><XAxis dataKey="day" tickFormatter={d=>d?.slice(5)} tick={{fill:'#59667a',fontSize:12}} axisLine={false} tickLine={false}/><YAxis tick={{fill:'#59667a',fontSize:12}} tickFormatter={n=>num(n,0)} axisLine={false} tickLine={false}/><Tooltip formatter={n=>[`${num(n)} DA`,'Ventes']}/><Area type="monotone" dataKey="total" stroke="#1663dd" strokeWidth={3} fill="url(#simpleGradient)"/></AreaChart></ResponsiveContainer></div></Panel>
      <Panel title="Articles à surveiller" subtitle="Produits manquants ou sous le seuil défini">{low.length?<div className="simple-alert-list">{low.slice(0,7).map(p=><button onClick={()=>go('stock')} key={p.id}><span className="red-circle"><AlertTriangle size={17}/></span><span><b>{p.name}</b><small>{p.internalCode}</small></span><strong>{num(quantity(p.stockMilli),3)} {p.baseUnit}</strong></button>)}</div>:<div className="simple-empty success"><CheckCircle2 size={29}/> Aucun article en alerte.</div>}</Panel>
    </div>
    <Panel title="Ventes récentes" subtitle="Dernières opérations validées"><div className="recent-simple manager-recent">{(data?.recentSales||[]).map(s=><div key={s.id}><span className="sale-logo"><ShoppingBag size={18}/></span><div><b>{s.ref}</b><small>{s.client||'Comptoir'} · {dateTime(s.createdAt)}</small></div><strong>{da(s.totalCents)}</strong></div>)}{!data?.recentSales?.length&&<div className="simple-empty">Aucune vente enregistrée.</div>}</div></Panel>
  </div>;
}
