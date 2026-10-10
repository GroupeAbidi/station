import React, { useMemo, useState } from 'react';
import { Download } from 'lucide-react';
import { PageHeading, Panel, Button, SearchBox, Empty } from '../components/UI';
import { post } from '../api';
import { da, dateTime, downloadCSV, quantity, num } from '../utils';

export default function Reports({ sales, profit = [] }) {
  const [search, setSearch] = useState('');
  const [seller, setSeller] = useState('');
  const sellers = useMemo(() => Array.from(new Map(sales.filter(sale => sale.createdBy).map(sale => [sale.createdBy.username || sale.createdBy.name, sale.createdBy])).values()), [sales]);
  const selectedSales = seller ? sales.filter(sale => (sale.createdBy?.username || sale.createdBy?.name) === seller) : sales;
  const rows = selectedSales.filter(sale => (sale.ref + ' ' + sale.client + ' ' + (sale.createdBy?.name || '') + ' ' + (sale.createdBy?.username || '')).toLowerCase().includes(search.toLowerCase()));
  const today = new Date().toDateString();
  const daySales = selectedSales.filter(sale => new Date(sale.createdAt).toDateString() === today);
  const sum = list => list.reduce((total, sale) => total + sale.totalCents, 0);
  const profitTotal = seller ? profit.filter(item => sales.find(sale => sale.id === item.id && (sale.createdBy?.username || sale.createdBy?.name) === seller)).reduce((total, item) => total + item.profitCents, 0) : profit.reduce((total, item) => total + item.profitCents, 0);
  const returnSale = async sale => {
    if (!window.confirm('Retourner entièrement la vente ' + sale.ref + ' ?')) return;
    const reason = window.prompt('Motif du retour :', 'Retour client');
    if (!reason) return;
    try { await post('/sales/' + sale.id + '/return', { reason, lines: sale.lines.map(line => ({ saleLineId: line.id, quantity: quantity(line.qtyMilli) })) }); window.location.reload(); }
    catch (error) { window.alert(error.message); }
  };
  const exportSales = () => downloadCSV([['Référence', 'Date', 'Client', 'Vendeur', 'Compte', 'Total DA'], ...rows.map(sale => [sale.ref, dateTime(sale.createdAt), sale.client, sale.createdBy?.name, sale.createdBy?.username, (sale.totalCents / 100).toFixed(2)])], 'station-magazine-ventes.csv');

  return <>
    <PageHeading eyebrow="SUIVI RESPONSABLE" title="Contrôle des ventes" description="Suivez toutes les ventes ou sélectionnez le compte d’un vendeur." actions={<Button icon={Download} variant="secondary" onClick={exportSales}>Exporter CSV</Button>}/>
    <div className="workspace-metrics manager-reports"><div><span>{seller ? 'Chiffre d’affaires du compte' : 'Chiffre d’affaires total'}</span><strong>{da(sum(selectedSales))}</strong><small>{seller ? 'Compte sélectionné' : 'Toutes les ventes enregistrées'}</small></div><div><span>Bénéfice brut</span><strong>{da(profitTotal)}</strong><small>Ventes moins coût d’achat</small></div><div><span>Aujourd’hui</span><strong>{da(sum(daySales))}</strong><small>{daySales.length} vente(s) aujourd’hui</small></div><div><span>Transactions</span><strong>{num(selectedSales.length, 0)}</strong><small>{seller ? 'Pour ce vendeur' : 'Historique enregistré'}</small></div></div>
    <Panel title="Ventes par compte vendeur" subtitle="Cliquez sur un compte pour contrôler uniquement ses ventes.">
      <div className="seller-summary"><button className={!seller ? 'active' : ''} onClick={() => setSeller('')}><strong>Tous les comptes</strong><span>{num(sales.length, 0)} ventes · {da(sum(sales))}</span></button>{sellers.map(account => { const key = account.username || account.name; const accountSales = sales.filter(sale => (sale.createdBy?.username || sale.createdBy?.name) === key); return <button key={key} className={seller === key ? 'active' : ''} onClick={() => setSeller(key)}><strong>{account.name}</strong><span>{account.username || 'compte'} · {num(accountSales.length, 0)} ventes · {da(sum(accountSales))}</span></button>; })}</div>
    </Panel>
    <Panel title="Journal des ventes" subtitle={seller ? 'Ventes du compte sélectionné.' : 'Toutes les ventes de l’équipe.'}>
      <div className="table-toolbar"><SearchBox value={search} onChange={setSearch} placeholder="Référence ou client..."/><select className="filter-select" aria-label="Filtrer par vendeur" value={seller} onChange={event => setSeller(event.target.value)}><option value="">Tous les vendeurs</option>{sellers.map(account => <option key={account.username || account.name} value={account.username || account.name}>{account.name} ({account.username || 'compte'})</option>)}</select></div>
      <div className="table-scroll"><table><thead><tr><th>Référence</th><th>Client</th><th>Articles</th><th>Vendeur</th><th>Compte</th><th>Date</th><th className="right">Total</th><th className="right">Action</th></tr></thead><tbody>{rows.map(sale => <tr key={sale.id}><td><b>{sale.ref}</b></td><td>{sale.client || 'Comptoir'}</td><td>{sale.lines.map(line => <div className="stacked-line" key={line.id}>{line.product.name} · {num(quantity(line.qtyMilli), 3)} {line.sellUnit === 'BASE' ? line.product.baseUnit : line.product.purchaseUnit}</div>)}</td><td>{sale.createdBy?.name}</td><td className="mono">{sale.createdBy?.username || '—'}</td><td>{dateTime(sale.createdAt)}</td><td className="right"><strong>{da(sale.totalCents)}</strong></td><td className="right"><Button size="small" variant="tertiary" onClick={() => returnSale(sale)}>Retour</Button></td></tr>)}</tbody></table></div>{!rows.length && <Empty title="Aucune vente trouvée"/>}</Panel>
  </>;
}
