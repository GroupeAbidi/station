import React, { useEffect, useMemo, useRef, useState } from 'react';
import { CheckCheck, CircleAlert, CreditCard, Minus, Plus, ReceiptText, ScanLine, ShoppingBag, ShoppingCart, Trash2 } from 'lucide-react';
import { api, post } from '../api';
import { Button, Empty, FormField, PageHeading, Panel } from '../components/UI';
import { can, da, dateTime, money, num, quantity } from '../utils';

export default function Sales({ products, sales, changed, toast, user }) {
  const [scan, setScan] = useState('');
  const [client, setClient] = useState('');
  const [cart, setCart] = useState([]);
  const [lookup, setLookup] = useState('');
  const [saving, setSaving] = useState(false);
  const [tab, setTab] = useState('POS');
  const [paymentMethod, setPaymentMethod] = useState('CASH');
  const [cashSession, setCashSession] = useState(null);
  const [cashAmount, setCashAmount] = useState('');
  const [cashBusy, setCashBusy] = useState(false);
  const scanRef = useRef(null);
  const scanTimer = useRef(null);
  const scanBusy = useRef(false);
  const permitted = can(user, ['VENTES']);

  const loadCash = () => api('/cash/current').then(setCashSession).catch(() => setCashSession(null));
  useEffect(() => { loadCash(); }, []);
  useEffect(() => {
    if (permitted && tab === 'POS') scanRef.current?.focus();
    return () => clearTimeout(scanTimer.current);
  }, [permitted, tab]);

  const add = (product, unit = 'BASE') => {
    if (!product.active) return;
    const existing = cart.find(line => line.productId === product.id && line.sellUnit === unit);
    if (existing) setCart(lines => lines.map(line => line === existing ? { ...line, quantity: Number(line.quantity) + 1 } : line));
    else setCart(lines => [...lines, { productId: product.id, sellUnit: unit, quantity: 1, price: unit === 'BASE' ? product.salePriceCents / 100 : product.salePriceCents * product.purchaseFactorMilli / 100000 }]);
  };
  const updateLine = (index, changes) => setCart(lines => lines.map((line, lineIndex) => lineIndex === index ? { ...line, ...changes } : line));
  const changeUnit = (index, sellUnit) => {
    const line = cart[index];
    if (cart.some((item, itemIndex) => itemIndex !== index && item.productId === line.productId && item.sellUnit === sellUnit)) return toast('Cette unité est déjà dans le panier.', 'error');
    const product = products.find(item => item.id === line.productId);
    updateLine(index, { sellUnit, price: sellUnit === 'BASE' ? product.salePriceCents / 100 : product.salePriceCents * product.purchaseFactorMilli / 100000 });
  };
  const lookupScan = async value => {
    const code = String(value || '').trim();
    if (!code || scanBusy.current) return;
    scanBusy.current = true;
    try { add(await api('/products/lookup?code=' + encodeURIComponent(code))); }
    catch (error) { toast(error.message, 'error'); }
    finally { scanBusy.current = false; setScan(''); scanRef.current?.focus(); }
  };
  const submitScan = async event => { event.preventDefault(); clearTimeout(scanTimer.current); await lookupScan(scan); };
  const changeScan = event => {
    const value = event.target.value;
    setScan(value);
    clearTimeout(scanTimer.current);
    if (value.trim()) scanTimer.current = setTimeout(() => lookupScan(value), 500);
  };
  const availableFor = line => {
    const product = products.find(item => item.id === line.productId);
    return product ? (line.sellUnit === 'BASE' ? quantity(product.stockMilli) : product.stockMilli / product.purchaseFactorMilli) : 0;
  };
  const cartError = cart.some(line => !Number.isFinite(Number(line.quantity)) || Number(line.quantity) <= 0 || Number(line.quantity) > availableFor(line));
  const totalCents = Math.round(cart.reduce((total, line) => total + (Number(line.price) || 0) * 100 * (Number(line.quantity) || 0), 0));
  const matches = useMemo(() => products.filter(product => product.stockMilli > 0 && (product.name + ' ' + product.internalCode + ' ' + (product.barcode || '')).toLowerCase().includes(lookup.toLowerCase())).slice(0, 8), [products, lookup]);
  const submit = async () => {
    if (!cart.length || (paymentMethod === 'CASH' && !cashSession)) return;
    setSaving(true);
    try {
      await post('/sales', { client, paymentMethod, cashSessionId: cashSession?.id || null, lines: cart.map(line => ({ productId: line.productId, quantity: Number(line.quantity), sellUnit: line.sellUnit, price: Number(line.price) })) });
      toast('Vente validée.');
      setCart([]);
      setClient('');
      changed();
      scanRef.current?.focus();
    } catch (error) { toast(error.message, 'error'); }
    finally { setSaving(false); }
  };
  const openCash = async () => {
    setCashBusy(true);
    try { await post('/cash/open', { openingCents: Math.round(Number(cashAmount || 0) * 100) }); await loadCash(); setCashAmount(''); toast('Votre caisse est ouverte.'); }
    catch (error) { toast(error.message, 'error'); }
    finally { setCashBusy(false); }
  };
  const closeCash = async () => {
    setCashBusy(true);
    try { await post('/cash/close', { closingCents: Math.round(Number(cashAmount || 0) * 100) }); await loadCash(); setCashAmount(''); toast('Votre caisse est cloturee.'); }
    catch (error) { toast(error.message, 'error'); }
    finally { setCashBusy(false); }
  };

  return <>
    <PageHeading eyebrow="POINT DE VENTE" title="Nouvelle vente" description="Scannez un article, ajustez les quantités, puis validez." actions={<div className="segmented"><button className={tab === 'POS' ? 'active' : ''} onClick={() => setTab('POS')}><ShoppingCart size={16}/> Vente</button><button className={tab === 'HISTORY' ? 'active' : ''} onClick={() => setTab('HISTORY')}><ReceiptText size={16}/> Historique</button></div>} />
    {tab === 'POS' ? <>
      <div className="vendor-pos">
      <section className="vendor-catalogue">
        <Panel title="Scanner ou chercher" subtitle="Scannez le code-barres ou recherchez un article.">
          <form className="scan-box vendor-scan" onSubmit={submitScan}><span className="scan-graphic"><ScanLine size={27}/></span><input ref={scanRef} autoFocus={permitted} value={scan} onChange={changeScan} placeholder="Scanner un code-barres ou saisir une référence" disabled={!permitted}/><button disabled={!scan.trim() || !permitted} type="submit" aria-label="Ajouter le code saisi"><Plus size={19}/></button></form>
        </Panel>
      </section>
      <aside className="cart-panel vendor-cart">
        <div className="cart-head"><div className="cart-icon"><ShoppingBag size={22}/></div><div><h3>Panier</h3><small>{cart.length} article{cart.length > 1 ? 's' : ''}</small></div></div>
        <div className="cart-inner">
          <div className="payment-row"><span>Paiement</span><div className="payment-options"><button className={paymentMethod === 'CASH' ? 'active' : ''} onClick={() => setPaymentMethod('CASH')}>Espèces</button><button className={paymentMethod === 'CARD' ? 'active' : ''} onClick={() => setPaymentMethod('CARD')}><CreditCard size={14}/> Carte</button><button className={paymentMethod === 'CREDIT' ? 'active' : ''} onClick={() => setPaymentMethod('CREDIT')}>Crédit</button></div></div>
          {paymentMethod === 'CASH' && !cashSession && <div className="inline-notice"><b>Caisse fermée.</b> Demandez au responsable de l’ouvrir.</div>}
          {paymentMethod === 'CASH' && cashSession && <div className="cash-status">Caisse ouverte</div>}
          {paymentMethod === 'CASH' && !cashSession && <div className="seller-cash-control"><b>Votre caisse est fermee.</b><span>Ouvrez votre propre caisse avant une vente en especes.</span><div><input aria-label="Fond de caisse" type="number" min="0" step="0.01" value={cashAmount} onChange={event => setCashAmount(event.target.value)} placeholder="Fond initial (DA)"/><Button size="small" loading={cashBusy} onClick={openCash}>Ouvrir ma caisse</Button></div></div>}
          {paymentMethod === 'CASH' && cashSession && <div className="seller-cash-control seller-cash-open"><b>Votre caisse est ouverte.</b><span>Entrez le comptage final uniquement a la fermeture.</span><div><input aria-label="Comptage de fermeture" type="number" min="0" step="0.01" value={cashAmount} onChange={event => setCashAmount(event.target.value)} placeholder="Comptage final (DA)"/><Button size="small" variant="secondary" loading={cashBusy} onClick={closeCash}>Cloturer ma caisse</Button></div></div>}
          {cart.length ? <div className="cart-items">{cart.map((line, index) => {
            const product = products.find(item => item.id === line.productId);
            if (!product) return null;
            const available = availableFor(line);
            const step = product.baseUnit === 'PCE' && line.sellUnit === 'BASE' ? 1 : 0.001;
            const over = Number(line.quantity) > available;
            return <div className="cart-item" key={line.productId + '-' + line.sellUnit}><div className="cart-item-top"><div><strong>{product.name}</strong><small>{money(line.price)} · disponible {num(available, 3)} {line.sellUnit === 'BASE' ? product.baseUnit : product.purchaseUnit}</small></div><button className="icon-btn" title="Retirer" onClick={() => setCart(lines => lines.filter((_, lineIndex) => lineIndex !== index))}><Trash2 size={16}/></button></div><div className="sale-line-controls"><select aria-label={'Unité de vente ' + product.name} value={line.sellUnit} onChange={event => changeUnit(index, event.target.value)}><option value="BASE">{product.baseUnit}</option>{product.purchaseFactorMilli !== 1000 && <option value="PURCHASE">{product.purchaseUnit}</option>}</select><div className="quantity-stepper"><button aria-label="Diminuer la quantité" onClick={() => updateLine(index, { quantity: Math.max(step, Number(line.quantity) - step) })}><Minus size={15}/></button><input aria-label="Quantité" type="number" min={step} step={step} value={line.quantity} onChange={event => updateLine(index, { quantity: event.target.value })}/><button aria-label="Augmenter la quantité" onClick={() => updateLine(index, { quantity: Number(line.quantity) + step })}><Plus size={15}/></button></div><strong>{money((Number(line.quantity) || 0) * Number(line.price))}</strong></div>{over && <small className="cart-error"><CircleAlert size={13}/> Stock insuffisant</small>}</div>;
          })}</div> : <div className="empty-cart"><ShoppingCart size={39}/><strong>Panier vide</strong><p>Scannez ou ajoutez un article.</p></div>}
          <details className="client-details"><summary>Ajouter un client ou destinataire</summary><FormField label="Client / destinataire"><input value={client} onChange={event => setClient(event.target.value)} placeholder="Facultatif"/></FormField></details>
        </div>
        <div className="cart-footer"><div className="cart-total"><span>Total</span><strong>{da(totalCents)}</strong></div><Button block loading={saving} disabled={!permitted || !cart.length || cartError || (paymentMethod === 'CASH' && !cashSession)} icon={CheckCheck} onClick={submit}>Valider la vente</Button></div>
      </aside>
      </div>
      <Panel className="vendor-full-catalogue" title="Articles disponibles" subtitle="Sélectionnez un article pour l’ajouter au panier.">
        <div className="quick-search"><input placeholder="Rechercher par nom ou référence" value={lookup} onChange={event => setLookup(event.target.value)} /></div>
        <div className="quick-products vendor-products">{matches.map(product => <div className="quick-product" key={product.id}><span className="product-initial">{product.name[0]?.toUpperCase()}</span><div><b>{product.name}</b><small>{num(quantity(product.stockMilli), 3)} {product.baseUnit} · {money(product.salePriceCents / 100)}</small></div><Button size="small" variant="secondary" icon={Plus} disabled={!permitted} onClick={() => add(product)}>Ajouter</Button></div>)}{!matches.length && <Empty title="Aucun article disponible" desc="Modifiez votre recherche ou vérifiez le stock."/>}</div>
      </Panel>
    </> : <Panel title="Historique des ventes" subtitle="Vos dernières ventes enregistrées."><div className="table-scroll"><table><thead><tr><th>Référence</th><th>Client</th><th>Détails</th><th>Date</th><th className="right">Total</th></tr></thead><tbody>{sales.map(sale => <tr key={sale.id}><td className="mono"><b>{sale.ref}</b></td><td>{sale.client || 'Comptoir'}</td><td>{sale.lines.map(line => <div key={line.id} className="stacked-line"><b>{line.product.name}</b><span>{num(quantity(line.qtyMilli), 3)} {line.sellUnit === 'BASE' ? line.product.baseUnit : line.product.purchaseUnit}</span></div>)}</td><td>{dateTime(sale.createdAt)}</td><td className="right"><b>{da(sale.totalCents)}</b></td></tr>)}</tbody></table></div>{!sales.length && <Empty title="Aucune vente enregistrée"/>}</Panel>}
  </>;
}
