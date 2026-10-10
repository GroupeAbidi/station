import React from 'react';
import { Banknote, CheckCircle2, Clock3, Download, XCircle } from 'lucide-react';
import { Button, Empty, FormField, PageHeading, Panel } from '../components/UI';
import { post, put } from '../api';
import { da, dateTime, downloadCSV, num } from '../utils';

export default function Cash({ sessions = [], user, toast, changed }) {
  const [defaultOpening, setDefaultOpening] = React.useState('10000');
  const [saving, setSaving] = React.useState(false);
  React.useEffect(() => { fetch('/api/cash/settings', { headers: { Authorization: `Bearer ${sessionStorage.getItem('magasinpro_token')}` } }).then(response=>response.json()).then(setting=>setDefaultOpening(String(setting.defaultOpeningCents / 100))).catch(()=>{}); }, []);
  const saveDefault = async event => { event.preventDefault(); setSaving(true); try { await put('/cash/settings', { defaultOpeningCents: Math.round(Number(defaultOpening || 0) * 100) }); toast('Montant initial par défaut enregistré.'); } catch (error) { toast(error.message, 'error'); } finally { setSaving(false); } };
  const open = sessions.filter(session => !session.closedAt);
  const closed = sessions.filter(session => session.closedAt);
  const current = open[0];
  const openCash = async () => { try { await post('/cash/open', { openingCents: Math.round(Number(defaultOpening || 0) * 100) }); toast('Caisse ouverte.'); changed(); } catch (error) { toast(error.message, 'error'); } };
  const closeCash = async () => { try { await post('/cash/close', { closingCents: Math.round(Number(defaultOpening || 0) * 100) }); toast('Caisse clôturée.'); changed(); } catch (error) { toast(error.message, 'error'); } };
  const exportRows = () => downloadCSV([
    ['Utilisateur','Ouverture','Fermeture','Fond initial','Ventes espèces','Attendu','Compté','Écart'],
    ...sessions.map(session => [session.user.name, dateTime(session.openedAt), session.closedAt ? dateTime(session.closedAt) : 'Ouverte', da(session.openingCents), da(session.cashSalesCents), da(session.expectedCents), session.closingCents === null ? '' : da(session.closingCents), session.differenceCents === null ? '' : da(session.differenceCents)])
  ], 'journal-caisses.csv');
  return <>
    <PageHeading eyebrow="CONTRÔLE FINANCIER" title="Journal de caisse" description="Suivez les ouvertures, les ventes en espèces et les écarts de chaque caisse." actions={<Button icon={Download} variant="secondary" onClick={exportRows}>Exporter CSV</Button>} />
    {user?.role==='MANAGER'&&<Panel title="Montant initial par défaut" subtitle="Ce montant est proposé lors de l’ouverture d’une caisse par le responsable."><form className="cash-setting-form" onSubmit={saveDefault}><FormField label="Fond de caisse par défaut (DA)"><input type="number" min="0" step="0.01" value={defaultOpening} onChange={event=>setDefaultOpening(event.target.value)}/></FormField><Button type="submit" loading={saving}>Enregistrer</Button></form></Panel>}
    {user?.role==='MANAGER'&&<Panel title="Caisse active" subtitle={current ? 'Une session est ouverte pour les ventes en espèces.' : 'Ouvrez une session avant les ventes en espèces.'}><div className="cash-setting-form"><FormField label={current ? 'Comptage final (DA)' : 'Fond de caisse (DA)'}><input type="number" min="0" step="0.01" value={defaultOpening} onChange={event=>setDefaultOpening(event.target.value)}/></FormField><Button onClick={current ? closeCash : openCash}>{current ? 'Clôturer la caisse' : 'Ouvrir la caisse'}</Button></div></Panel>}
    <div className="workspace-metrics manager-reports"><div><span>Caisses ouvertes</span><strong>{num(open.length, 0)}</strong><small>En cours</small></div><div><span>Caisses clôturées</span><strong>{num(closed.length, 0)}</strong><small>Historique</small></div><div><span>Espèces encaissées</span><strong>{da(sessions.reduce((sum, session) => sum + session.cashSalesCents, 0))}</strong><small>Toutes les sessions</small></div></div>
    <Panel title="Sessions de caisse" subtitle="L’écart compare le comptage final avec le fond initial plus les ventes espèces.">
      <div className="table-scroll"><table><thead><tr><th>Vendeur</th><th>Ouverture</th><th>Statut</th><th>Fond initial</th><th>Ventes espèces</th><th>Attendu</th><th>Compté</th><th>Écart</th></tr></thead><tbody>{sessions.map(session => <tr key={session.id}><td><b>{session.user.name}</b><small className="cell-sub">{session.user.username||'—'}</small></td><td>{dateTime(session.openedAt)}</td><td>{session.closedAt ? <span className="cash-closed"><CheckCircle2 size={15}/> Clôturée</span> : <span className="cash-open"><Clock3 size={15}/> Ouverte</span>}</td><td>{da(session.openingCents)}</td><td>{da(session.cashSalesCents)}</td><td><b>{da(session.expectedCents)}</b></td><td>{session.closingCents === null ? '—' : da(session.closingCents)}</td><td className={session.differenceCents === null ? '' : session.differenceCents === 0 ? 'cash-balanced' : 'cash-difference'}>{session.differenceCents === null ? '—' : <>{session.differenceCents === 0 ? <CheckCircle2 size={15}/> : <XCircle size={15}/>} {da(session.differenceCents)}</>}</td></tr>)}</tbody></table></div>{!sessions.length&&<Empty title="Aucune session de caisse" desc="Les sessions apparaîtront ici après la première ouverture de caisse."/>}
    </Panel>
  </>;
}
