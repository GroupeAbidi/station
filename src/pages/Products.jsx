import React, { useEffect, useRef, useState } from 'react';
import { Barcode, Box, Download, FileDown, FileUp, Layers3, MoreHorizontal, PackagePlus, Pencil, Plus, Printer, RefreshCcw, Search, Tag, Trash2, X } from 'lucide-react';
import JsBarcode from 'jsbarcode';
import readXlsxFile from 'read-excel-file';
import Papa from 'papaparse';
import { api, post, put, patch } from '../api';
import { quantity, num, da, purchaseEquivalent, stockStatus, downloadCSV, can } from '../utils';
import { Badge, Button, Empty, FormField, Modal, PageHeading, Panel, SearchBox } from '../components/UI';
const init = { name:'', internalCode:'', barcode:'', category:'Divers', baseUnit:'PCE', purchaseUnit:'PCE', purchaseFactor:1, minStock:0, purchasePrice:0, salePrice:0 };
function ProductForm({ current, onClose, changed, toast }) {
  const [form,setForm] = useState(current ? { ...current, purchaseFactor: quantity(current.purchaseFactorMilli), minStock: quantity(current.minStockMilli), purchasePrice: current.purchasePriceCents / 100, salePrice: current.salePriceCents / 100 } : {...init});
  const [advanced,setAdvanced] = useState(!!current);
  const [saving,setSaving] = useState(false);
  const set=(k,v)=>setForm(prev=>({...prev,[k]:v}));
  const submit=async e=>{
    e.preventDefault();setSaving(true);
    try{
      if(current) await put(`/products/${current.id}`,form); else await post('/products',form);
      toast(current?'Article modifié.':'Article ajouté au catalogue.');changed();onClose();
    } catch(error){toast(error.message,'error');} finally{setSaving(false);}
  };
  return <Modal title={current?'Modifier l’article':'Ajouter un article'} subtitle="Remplissez les champs essentiels. Les autres réglages sont facultatifs." onClose={onClose} width="660px">
    <form className="form-layout" onSubmit={submit}>
      <div className="form-grid">
        <FormField label="Nom du produit" required><input required minLength={2} autoFocus value={form.name} onChange={e=>set('name',e.target.value)} placeholder="Ex. Huile végétale"/></FormField>
        <FormField label="Code-barres (facultatif)" hint="Vous pourrez l’ajouter ou le générer plus tard."><input value={form.barcode||''} onChange={e=>set('barcode',e.target.value)} placeholder="Scanner ou saisir un code"/></FormField>
      </div>
      <div className="simple-form-caption"><Layers3 size={18}/> Comment le produit est-il acheté et vendu ?</div>
      <div className="form-grid">
        <FormField label="Unité de stock et de vente" required hint="L'unité réellement suivie en stock et vendue. Example : Litre."><select value={form.baseUnit} onChange={e=>setForm(p=>({...p,baseUnit:e.target.value,purchaseUnit:p.purchaseUnit===p.baseUnit?e.target.value:p.purchaseUnit}))}><option value="PCE">Pièce (PCE)</option><option value="L">Litre (L)</option><option value="KG">Kilogramme (KG)</option><option value="M">Mètre (M)</option></select></FormField>
        <FormField label="Unité d'achat / conditionnement" required hint="Le format reçu du fournisseur. Example : Citerne 1 000 L."><input required value={form.purchaseUnit} onChange={e=>set('purchaseUnit',e.target.value)} placeholder="Citerne 1 000 L"/></FormField>
        <FormField label={`Contenu de 1 ${form.purchaseUnit||'conditionnement'} (${form.baseUnit})`} required hint={`Indiquez combien de ${form.baseUnit} contient un conditionnement. Example : 1000.`}><input type="number" required min="0.001" step="0.001" value={form.purchaseFactor} onChange={e=>set('purchaseFactor',e.target.value)}/></FormField>
        <FormField label={`Prix de vente par ${form.baseUnit} (DA)`} required><input required type="number" min="0" step="0.01" value={form.salePrice} onChange={e=>set('salePrice',e.target.value)}/></FormField>
        <FormField label={`Prix d'achat par ${form.purchaseUnit||'conditionnement'} (DA)`} hint="Le prix payé au fournisseur pour 1 conditionnement."><input type="number" min="0" step="0.01" value={form.purchasePrice} onChange={e=>set('purchasePrice',e.target.value)}/></FormField>
      </div>
      <div className="conversion-example"><strong>Règle de conversion :</strong> 1 {form.purchaseUnit||'conditionnement'} = {num(Number(form.purchaseFactor)||0,3)} {form.baseUnit}. Réceptionnez en {form.purchaseUnit||'conditionnement'}, vendez en {form.baseUnit}.</div>
      <button type="button" className="advanced-toggle" aria-expanded={advanced} onClick={()=>setAdvanced(!advanced)}><Tag size={18}/>{advanced?'Masquer les options supplémentaires':'Afficher plus d’options (référence, seuil, prix d’achat)'}<span>{advanced?'−':'+'}</span></button>
      {advanced&&<div className="advanced-fields form-grid">
        <FormField label="ID / référence interne" hint="Unique. Vide = généré automatiquement."><input value={form.internalCode||''} onChange={e=>set('internalCode',e.target.value)} placeholder="ART-0001"/></FormField>
        <FormField label="Catégorie"><input value={form.category} onChange={e=>set('category',e.target.value)}/></FormField>
        <FormField label={`Seuil d’alerte (${form.baseUnit})`}><input type="number" min="0" step={form.baseUnit==='PCE'?'1':'0.001'} value={form.minStock} onChange={e=>set('minStock',e.target.value)}/></FormField>
      </div>}
      <div className="inline-notice">La création d’un article ne modifie pas le stock. Les quantités entrent par réception approuvée ou correction d’inventaire justifiée.</div>
      <div className="modal-actions"><Button variant="secondary" type="button" onClick={onClose}>Annuler</Button><Button loading={saving} type="submit" icon={current?Pencil:Plus}>{current?'Enregistrer':'Ajouter l’article'}</Button></div>
    </form>
  </Modal>;
}
function BarcodeModal({ product, onClose }) {
  const svgRef = useRef(null);
  useEffect(() => { if (product.barcode && svgRef.current) { try { JsBarcode(svgRef.current, product.barcode, { format: 'CODE128', width: 1.7, height: 75, displayValue:true, fontSize:14, margin: 6, lineColor:'#101c28' }); } catch(e) { console.error(e); } } }, [product]);
  return <Modal title="Étiquette code-barres" subtitle="Format CODE128 — compatible avec les lecteurs USB en mode clavier." onClose={onClose} width="460px"><div className="barcode-label" id="print-label"><span className="barcode-brand">STATION MAGAZINE</span><strong>{product.name}</strong><svg ref={svgRef} aria-label={`Code-barres ${product.barcode}`}/><small>Réf. {product.internalCode}</small></div><div className="modal-actions"><Button variant="secondary" onClick={onClose}>Fermer</Button><Button icon={Printer} onClick={()=>window.print()}>Imprimer l’étiquette</Button></div></Modal>;
}
export function Products({ products, changed, toast, user }) {
  const [query,setQuery]=useState(''); const [cat,setCat]=useState('Tout'); const [form,setForm]=useState(null); const [label,setLabel]=useState(null); const [busy,setBusy]=useState('');
  const permitted = can(user,['MANAGER','MAGASIN']);
  const categories = ['Tout',...new Set(products.map(p=>p.category))];
  const rows = products.filter(p => (cat==='Tout'||p.category===cat) && `${p.name} ${p.internalCode} ${p.barcode || ''} ${p.category}`.toLowerCase().includes(query.toLowerCase()));
  const generate = async p => {setBusy(p.id);try{const result=await post(`/products/${p.id}/generate-barcode`,{});toast(`Code-barres attribué : ${result.barcode}`);changed();setLabel(result);}catch(e){toast(e.message,'error')}finally{setBusy('')}};
  const remove = async p => { if (!window.confirm(`Supprimer « ${p.name} » du catalogue actif ?`)) return; setBusy(p.id); try { await patch(`/products/${p.id}/status`,{active:false}); toast('Article supprimé du catalogue.'); changed(); } catch(e) { toast(e.message,'error'); } finally { setBusy(''); } };
  const exportRows = () => downloadCSV([['Code interne','Nom','Code-barres','Catégorie','Unité stock','Unité achat','Facteur','Stock','Seuil','Prix achat DA','Prix vente DA'],...rows.map(p=>[p.internalCode,p.name,p.barcode,p.category,p.baseUnit,p.purchaseUnit,quantity(p.purchaseFactorMilli),quantity(p.stockMilli),quantity(p.minStockMilli),p.purchasePriceCents/100,p.salePriceCents/100])], 'catalogue-articles.csv');
  return <><PageHeading eyebrow="RÉFÉRENTIEL" title="Catalogue articles" description="Une base article fiable, sans doublons, avec les unités et codes-barres centralisés." actions={<><Button variant="secondary" icon={FileDown} onClick={exportRows}>Exporter CSV</Button>{permitted&&<Button icon={PackagePlus} onClick={()=>setForm({type:'new'})}>Nouvel article</Button>}</>}/>
    <div className="mini-metrics"><div><Box size={18}/><span><b>{products.length}</b> articles actifs</span></div><div><Barcode size={18}/><span><b>{products.filter(p=>p.barcode).length}</b> avec code-barres</span></div><div><Layers3 size={18}/><span><b>{categories.length-1}</b> catégories</span></div></div>
    <Panel title="Répertoire produits" subtitle="Recherchez par désignation, référence ou code-barres." action={<span className="table-count">{rows.length} résultats</span>}><div className="table-toolbar"><SearchBox value={query} onChange={setQuery} placeholder="Chercher nom, ID, code-barres…"/><select className="filter-select" value={cat} onChange={e=>setCat(e.target.value)}>{categories.map(c=><option key={c}>{c}</option>)}</select></div>
      <div className="table-scroll"><table className="product-table"><thead><tr><th>Article</th><th>Référence</th><th>Code-barres</th><th>Unité / Achat</th><th>Stock actuel</th><th>Statut</th><th className="right">Actions</th></tr></thead><tbody>{rows.map(p=><tr key={p.id}><td><div className="table-product"><span className="product-initial">{p.name[0]?.toUpperCase()}</span><div><b>{p.name}</b><small>{p.category}</small></div></div></td><td className="mono" data-label="Référence">{p.internalCode}</td><td data-label="Code-barres">{p.barcode?<span className="barcode-chip"><Barcode size={14}/>{p.barcode}</span>:<span className="faded">Non attribué</span>}</td><td data-label="Unité / Achat"><b>{p.baseUnit}</b><small className="cell-sub">1 {p.purchaseUnit} = {num(quantity(p.purchaseFactorMilli),3)} {p.baseUnit}</small></td><td data-label="Stock actuel"><b>{num(quantity(p.stockMilli),3)} {p.baseUnit}</b>{purchaseEquivalent(p)&&<small className="cell-sub">{purchaseEquivalent(p)}</small>}</td><td data-label="Statut"><Badge status={stockStatus(p)}>{p.stockMilli===0?'Rupture':p.stockMilli<=p.minStockMilli?'Seuil bas':'Disponible'}</Badge></td><td className="right" data-label="Actions"><div className="cell-actions">{permitted&&<button className="icon-btn" title="Modifier" onClick={()=>setForm({type:'edit',product:p})}><Pencil size={16}/></button>}{p.barcode?<button className="icon-btn" title="Imprimer code-barres" onClick={()=>setLabel(p)}><Printer size={16}/></button>:permitted&&<button className="btn-text tiny" disabled={busy===p.id} onClick={()=>generate(p)}><Barcode size={14}/> Générer</button>}{permitted&&<button className="icon-btn danger" title="Supprimer l’article" aria-label={`Supprimer ${p.name}`} disabled={busy===p.id} onClick={()=>remove(p)}><Trash2 size={16}/></button>}</div></td></tr>)}</tbody></table></div>
      {!rows.length&&<Empty title="Aucun article trouvé" desc="Modifiez vos filtres ou créez un article."/>}</Panel>
    {form&&<ProductForm current={form.product} toast={toast} changed={changed} onClose={()=>setForm(null)}/>}{label&&<BarcodeModal product={label} onClose={()=>setLabel(null)}/>}
  </>;
}

const headerAlias = {
  name: ['nom','designation','désignation','article','produit','libelle','libellé','name','product','product name','اسم','اسم المنتج'],
  internalCode: ['id','id article','code','code interne','reference','référence','ref','sku','code article','product id'],
  barcode: ['code barre','code barres','code-barres','codebarres','barcode','ean','gtin','upc','الباركود'],
  category: ['categorie','catégorie','famille','category'],
  baseUnit: ['unite','unité','unite stock','unité stock','base unit','unit','uom'],
  purchaseUnit: ['unite achat','unité achat','conditionnement','packaging','achat'],
  purchaseFactor: ['facteur','coefficient','coefficient achat','quantite par colis','quantité par colis','contenance','conversion'],
  minStock: ['seuil','stock min','stock minimum','minimum'],
  purchasePrice: ['prix achat','prix d achat','purchase price','pa'],
  salePrice: ['prix vente','prix de vente','selling price','pv'],
};
const normalizeHeader = s => String(s??'').normalize('NFD').replace(/[\u0300-\u036f\uFEFF]/g,'').toLowerCase().replace(/[_\-]/g,' ').replace(/\s+/g,' ').trim();
const fromValue = x => { if(typeof x === 'number') return x; const s=String(x??'').trim().replace(/\s/g,'').replace(',','.'); const n=Number(s);return s&&Number.isFinite(n)?n:undefined; };
const unit = x => { const v=normalizeHeader(x).toUpperCase(); return ['L','LITRE','LITRES'].includes(v)?'L':['KG','KILO','KILOGRAMME','KILOGRAMMES'].includes(v)?'KG':['M','METRE','METRES'].includes(v)?'M':'PCE'; };
export function ImportProducts({ changed, toast }) {
  const [rows,setRows]=useState([]);const [results,setResults]=useState(null);const [busy,setBusy]=useState(false);const [fileName,setFileName]=useState('');const [warn,setWarn]=useState('');
  const sample=()=>downloadCSV([['Nom','Code interne','Code-barres','Catégorie','Unité','Unité achat','Facteur','Stock minimum','Prix achat','Prix vente'],['Huile olive 1 L','HUI-001','','Huiles','L','Carton 12 L',12,24,1350,145]],'modele-import-produits.csv');
  const parseFile=async file=>{ if(!file)return;setResults(null);setWarn('');setFileName(file.name);try{
    let table;
    if(file.name.toLowerCase().endsWith('.xlsx')) table=await readXlsxFile(file);
    else if(file.name.toLowerCase().endsWith('.csv')) {const text=await file.text(); const delimiter=(text.split('\n')[0].match(/;/g)||[]).length>(text.split('\n')[0].match(/,/g)||[]).length?';':','; table=Papa.parse(text,{skipEmptyLines:true,delimiter}).data;}
    else throw new Error('Utilisez un fichier .xlsx ou .csv.');
    if(table.length<2)throw new Error('Fichier sans données exploitables.');
    const cols=table[0].map(normalizeHeader);
    const find=(key)=>cols.findIndex(h=>headerAlias[key].some(a=>normalizeHeader(a)===h));
    const idx=Object.fromEntries(Object.keys(headerAlias).map(k=>[k,find(k)]));
    if(idx.name<0)throw new Error('Colonne nom/désignation introuvable. Utilisez le modèle CSV proposé.');
    const parsed=table.slice(1).filter(row=>row.some(v=>v!==null&&String(v??'').trim())).map((row,i)=>{
      const get=k=>idx[k]>=0?row[idx[k]]:undefined;
      const baseUnit=unit(get('baseUnit'));return {row:i+2,name:String(get('name')??'').trim(),internalCode:String(get('internalCode')??'').trim(),barcode:String(get('barcode')??'').trim(),category:String(get('category')||'Divers').trim(),baseUnit,purchaseUnit:String(get('purchaseUnit')||baseUnit).trim(),purchaseFactor:fromValue(get('purchaseFactor'))??1,minStock:fromValue(get('minStock'))??0,purchasePrice:fromValue(get('purchasePrice'))??0,salePrice:fromValue(get('salePrice'))??0};
    });
    setRows(parsed);setWarn(parsed.length>500?'L’import est limité à 500 articles par lot. Découpez votre fichier.':'');
  }catch(e){setRows([]);setWarn(e.message);} };
  const importAll=async()=>{if(!rows.length)return;setBusy(true);try{const outcome=await post('/products/import',{rows});setResults(outcome);toast(`${outcome.created} articles importés, ${outcome.rejected} rejetés.`,outcome.rejected?'warning':'success');changed();}catch(e){toast(e.message,'error');}finally{setBusy(false);}};
  return <><PageHeading eyebrow="IMPORTATION" title="Importer votre fichier produits" description="Rassemblez vos références existantes, même si certaines n’ont pas encore de code-barres." actions={<Button variant="secondary" icon={Download} onClick={sample}>Télécharger le modèle</Button>}/>
    <div className="import-grid"><Panel title="Import intelligent" subtitle="Formats acceptés : Excel .xlsx ou CSV .csv"><label className="drop-zone"><div className="drop-symbol"><FileUp size={32}/></div><strong>{fileName||'Choisir un fichier Excel / CSV'}</strong><span>Cliquer pour sélectionner · 500 articles maximum</span><input type="file" accept=".xlsx,.csv" onChange={e=>parseFile(e.target.files[0])}/></label><div className="hint-list"><div><span className="step-bullet">01</span><div><b>Préparez le fichier</b><small>Nom requis ; référence et code-barres facultatifs.</small></div></div><div><span className="step-bullet">02</span><div><b>Vérifiez l’aperçu</b><small>Les unités, prix et conditionnements sont lus automatiquement.</small></div></div><div><span className="step-bullet">03</span><div><b>Importez sans doublons</b><small>Les articles existants sont rejetés, jamais écrasés.</small></div></div></div></Panel>
      <div className="import-tip"><Barcode size={31}/><h3>Vous n’avez pas encore de codes-barres ?</h3><p>Pas de problème. Importez les articles avec leur nom et, si possible, leur référence interne. Le système générera un ID en cas d’absence. Vous pourrez attribuer et imprimer des codes CODE128 plus tard.</p><div className="small-divide"/><b>Stock initial</b><p>L’import du catalogue ne crée aucun mouvement de stock. Les quantités sont ajoutées lors d’une réception approuvée ou d’un inventaire autorisé.</p></div></div>
    {warn&&<div className="notice error-notice">{warn}</div>}
    {!!rows.length&&<Panel title={`Aperçu · ${rows.length} articles`} subtitle="Contrôlez les colonnes avant d'enregistrer." action={!results&&<Button loading={busy} disabled={rows.length>500} icon={FileUp} onClick={importAll}>Importer {rows.length} article(s)</Button>}><div className="table-scroll"><table><thead><tr><th>Ligne</th><th>Nom</th><th>Référence</th><th>Code-barres</th><th>Unité de stock</th><th>Conditionnement</th></tr></thead><tbody>{rows.slice(0,30).map((r,i)=><tr key={i}><td>{r.row}</td><td><b>{r.name||<span className="red-text">Nom manquant</span>}</b></td><td>{r.internalCode||<span className="faded">Automatique</span>}</td><td>{r.barcode||<span className="faded">À générer</span>}</td><td>{r.baseUnit}</td><td>1 {r.purchaseUnit} = {r.purchaseFactor} {r.baseUnit}</td></tr>)}</tbody></table></div>{rows.length>30&&<p className="table-footer">Aperçu limité à 30 lignes. Toutes les lignes seront traitées à l'import.</p>}</Panel>}
    {results&&<Panel title="Résultat de l’import" subtitle={`${results.created} créés · ${results.rejected} rejets`}><div className="table-scroll"><table><thead><tr><th>Ligne</th><th>Article</th><th>Résultat</th><th>Détail</th></tr></thead><tbody>{results.results.map((r,i)=><tr key={i}><td>{r.line}</td><td>{r.name}</td><td><Badge status={r.ok?'APPROVED':'REJECTED'}>{r.ok?'Créé':'Rejeté'}</Badge></td><td>{r.error||r.code}</td></tr>)}</tbody></table></div></Panel>}
  </>;
}
