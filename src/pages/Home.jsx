import React from 'react';
import { ArrowRight, ClipboardList, PackageCheck, Warehouse, ScanBarcode, ShoppingBag, CheckCircle2, AlertTriangle, Package } from 'lucide-react';
import { PageHeading } from '../components/UI';
import { da, dateTime, num, quantity } from '../utils';

const Item = ({Icon, title, subtitle, onClick, index}) => <button type="button" className="workspace-action" onClick={onClick}>
  <span className="workspace-action-icon"><Icon size={24}/></span><span className="workspace-action-copy"><strong>{title}</strong><small>{subtitle}</small></span><span className="action-index">{index}</span><ArrowRight size={19}/>
</button>;
export default function Home({user,data,go}) {
  const magasin = user.role === 'MAGASIN';
  const pending = data.purchaseSummary?.pending || 0;
  const ready = (data.purchaseSummary?.approved || 0) + (data.purchaseSummary?.partial || 0);
  const alerts = data.stockSummary?.lowCount || 0;
  const mySales = data.sales||[];
  return <div className="workspace-home">
    <PageHeading eyebrow="MON ESPACE DE TRAVAIL" title={`Bonjour, ${user.name.split(' ')[0]} 👋`}
      description={magasin?'Voici vos tâches principales. Suivez les étapes dans l’ordre.':'Vous pouvez commencer une vente avec le lecteur code-barres ou ajouter les articles manuellement.'}/>
    <div className="workspace-hero"><div className="workspace-hero-art">{magasin?<Warehouse size={39}/>:<ScanBarcode size={39}/>}</div><div><small>{magasin?'VOTRE MISSION':'POINT DE VENTE'}</small><h2>{magasin?'Le stock toujours à jour.':'Vendre rapidement, sans erreur.'}</h2><p>{magasin?'Créez une demande, attendez l’approbation, puis réceptionnez les produits. Le stock augmente automatiquement.':'Ajoutez des articles, vérifiez les quantités et confirmez. Le stock diminue automatiquement.'}</p></div></div>
    {magasin ? <>
      <div className="workspace-metrics"><div><span>Demandes en attente</span><strong>{pending}</strong><small>En attente du responsable</small></div><div><span>Prêtes à recevoir</span><strong>{ready}</strong><small>Demandes approuvées</small></div><div><span>Alertes de stock</span><strong>{alerts}</strong><small>Produits à vérifier</small></div></div>
      <h3 className="workspace-section-title">Que souhaitez-vous faire ?</h3>
      <div className="workspace-actions">
        <Item index="01" Icon={ClipboardList} title="Créer une demande d’achat" subtitle="Demander les produits à commander" onClick={()=>go('purchases')}/>
        <Item index="02" Icon={PackageCheck} title="Réceptionner une livraison" subtitle="Enregistrer les produits reçus" onClick={()=>go('receptions')}/>
        <Item index="03" Icon={Warehouse} title="Vérifier le stock" subtitle="Voir les quantités et les alertes" onClick={()=>go('stock')}/>
        <Item index="04" Icon={Package} title="Gérer les articles" subtitle="Ajouter ou modifier un article et son code-barres" onClick={()=>go('products')}/>
      </div>
      <div className="workflow-help"><CheckCircle2 size={22}/><p><strong>Rappel :</strong> chaque réception doit être liée à une demande approuvée. Le stock est mis à jour automatiquement.</p></div>
    </> : <>
      <div className="vendor-action"><div><small>ACTION PRINCIPALE</small><h3>Prêt pour une nouvelle vente ?</h3><p>Utilisez votre lecteur de code-barres ou recherchez un article.</p></div><button onClick={()=>go('sales')}><ScanBarcode size={20}/> Ouvrir la caisse <ArrowRight size={18}/></button></div>
      <h3 className="workspace-section-title">Mes dernières ventes</h3>
      <div className="recent-simple">{mySales.slice(0,5).map(s=><div key={s.id}><span className="sale-logo"><ShoppingBag size={18}/></span><div><b>{s.ref}</b><small>{s.client||'Client comptoir'} · {dateTime(s.createdAt)}</small></div><strong>{da(s.totalCents)}</strong></div>)}{!mySales.length&&<div className="simple-empty">Vous n’avez encore enregistré aucune vente.</div>}</div>
      <div className="recent-simple sale-history">{mySales.slice(0,5).map(s=><div className="sale-history-row" key={s.id}><span className="sale-logo"><ShoppingBag size={18}/></span><div className="sale-history-body"><div className="sale-history-head"><div><b>{s.ref}</b><small>{s.client||'Client comptoir'} - {dateTime(s.createdAt)}</small></div><strong>{da(s.totalCents)}</strong></div><div className="sale-history-lines">{(s.lines||[]).map(line=><div key={line.id}><span>{line.product.name}</span><span>{num(quantity(line.qtyBaseMilli),3)} {line.product.baseUnit} x {da(line.priceCents)}</span><b>{da(line.totalCents)}</b></div>)}</div></div></div>)}{!mySales.length&&<div className="simple-empty">Aucune vente enregistree.</div>}</div>
    </>}
  </div>;
}
