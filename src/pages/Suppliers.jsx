import React, { useState } from 'react';
import { Building2, Pencil, Plus, Trash2 } from 'lucide-react';
import { patch, post, put } from '../api';
import { can } from '../utils';
import { Button, Empty, FormField, Modal, PageHeading, Panel } from '../components/UI';

const initial = { supplierCode:'', name:'', phone:'', email:'', address:'', notes:'' };

function SupplierForm({ current, onClose, changed, toast }) {
  const [form, setForm] = useState(current ? { ...initial, ...current } : initial);
  const [saving, setSaving] = useState(false);
  const set = (key, value) => setForm(previous => ({ ...previous, [key]: value }));
  const submit = async event => {
    event.preventDefault();
    setSaving(true);
    try {
      if (current) await put(`/suppliers/${current.id}`, form);
      else await post('/suppliers', form);
      toast(current ? 'Fournisseur modifié.' : 'Fournisseur ajouté.');
      changed();
      onClose();
    } catch (error) { toast(error.message, 'error'); }
    finally { setSaving(false); }
  };
  return <Modal title={current ? 'Modifier le fournisseur' : 'Nouveau fournisseur'} subtitle="Enregistrez les coordonnées réutilisables dans les demandes d’achat." onClose={onClose} width="650px">
    <form className="form-layout" onSubmit={submit}>
      <div className="form-grid">
        <FormField label="ID fournisseur" required><input required autoFocus maxLength={24} pattern="[A-Za-z0-9_-]+" placeholder="ex. FOU-001" value={form.supplierCode} onChange={event=>set('supplierCode', event.target.value)} /></FormField>
        <FormField label="Nom du fournisseur" required><input required minLength={2} value={form.name} onChange={event=>set('name', event.target.value)} /></FormField>
        <FormField label="Téléphone"><input value={form.phone} onChange={event=>set('phone', event.target.value)} /></FormField>
        <FormField label="E-mail"><input type="email" value={form.email} onChange={event=>set('email', event.target.value)} /></FormField>
      </div>
      <FormField label="Adresse"><input value={form.address} onChange={event=>set('address', event.target.value)} /></FormField>
      <FormField label="Notes"><textarea rows={3} value={form.notes} onChange={event=>set('notes', event.target.value)} /></FormField>
      <div className="modal-actions"><Button type="button" variant="secondary" onClick={onClose}>Annuler</Button><Button type="submit" loading={saving} icon={current ? Pencil : Plus}>{current ? 'Enregistrer' : 'Ajouter'}</Button></div>
    </form>
  </Modal>;
}

export default function Suppliers({ suppliers, changed, toast, user }) {
  const [form, setForm] = useState(null);
  const permitted = can(user, ['MANAGER', 'MAGASIN']);
  const archive = async supplier => {
    if (!window.confirm(`Désactiver « ${supplier.name} » ?`)) return;
    try { await patch(`/suppliers/${supplier.id}/status`, { active:false }); toast('Fournisseur désactivé.'); changed(); }
    catch (error) { toast(error.message, 'error'); }
  };
  return <>
    <PageHeading eyebrow="APPROVISIONNEMENT" title="Fournisseurs" description="Centralisez les coordonnées et réutilisez-les dans vos demandes d’achat." actions={permitted && <Button icon={Plus} onClick={()=>setForm({ type:'new' })}>Nouveau fournisseur</Button>} />
    <Panel title="Répertoire fournisseurs" subtitle="Les fournisseurs désactivés restent conservés dans l’historique des achats.">
      <div className="supplier-grid">{suppliers.map(supplier=><article className="supplier-card" key={supplier.id}><div className="supplier-card-head"><span className="supplier-icon"><Building2 size={20}/></span><div><h3>{supplier.name}</h3><small>{supplier.supplierCode} · {supplier._count?.requests||0} demande(s) d’achat</small></div></div><div className="supplier-details">{supplier.phone&&<span>Tél. : {supplier.phone}</span>}{supplier.email&&<span>{supplier.email}</span>}{supplier.address&&<span>{supplier.address}</span>}</div><div className="cell-actions"><button className="icon-btn" title="Modifier" onClick={()=>setForm({ type:'edit', supplier })}><Pencil size={16}/></button><button className="icon-btn danger" title="Désactiver" onClick={()=>archive(supplier)}><Trash2 size={16}/></button></div></article>)}{!suppliers.length&&<Empty title="Aucun fournisseur" desc="Ajoutez votre premier fournisseur pour le réutiliser dans les demandes d’achat."/>}</div>
    </Panel>
    {form&&<SupplierForm current={form.supplier} onClose={()=>setForm(null)} changed={changed} toast={toast}/>} 
  </>;
}
