import React, { useEffect } from 'react';
import { X, Search, CircleAlert, CheckCircle2, Info, AlertTriangle, LoaderCircle, PackageOpen } from 'lucide-react';
import { statusLabel } from '../utils';

export function Button({ children, icon: Icon, variant = 'primary', loading, className = '', block = false, size = 'normal', ...props }) {
  return <button className={`btn btn-${variant} ${block ? 'block' : ''} ${size === 'small' ? 'btn-small' : ''} ${className}`} disabled={loading || props.disabled} {...props}>
    {loading ? <LoaderCircle size={16} className="spin" /> : Icon ? <Icon size={16} strokeWidth={2.25} /> : null}{children}
  </button>;
}
export function Badge({ status, children }) {
  const name = status === 'PENDING' ? 'warning' : status === 'REJECTED' || status === 'out' ? 'danger' : status === 'PARTIAL' || status === 'low' ? 'orange' : status === 'RECEPTION' ? 'blue' : 'success';
  return <span className={`badge badge-${name}`}><span className="badge-dot"/>{children || statusLabel[status] || status}</span>;
}
export function Modal({ title, subtitle, onClose, children, width = '580px' }) {
  useEffect(() => { const key = e => e.key === 'Escape' && onClose(); window.addEventListener('keydown', key); return () => window.removeEventListener('keydown', key); }, [onClose]);
  return <div className="overlay" role="presentation" onMouseDown={e => e.target === e.currentTarget && onClose()}>
    <section className="modal" style={{ maxWidth: width }} role="dialog" aria-modal="true" aria-label={title}>
      <div className="modal-head"><div><h2>{title}</h2>{subtitle && <p className="muted">{subtitle}</p>}</div><button className="icon-btn" onClick={onClose} aria-label="Fermer"><X size={20}/></button></div>
      <div className="modal-body">{children}</div>
    </section>
  </div>;
}
export function FormField({ label, hint, children, required }) {
  return <label className="form-field"><span className="field-label">{label}{required && <span className="required"> *</span>}</span>{children}{hint && <small>{hint}</small>}</label>;
}
export function Empty({ title = 'Aucune donnée', desc = 'Aucune ligne à afficher pour le moment.', action }) {
  return <div className="empty"><div className="empty-icon"><PackageOpen size={30}/></div><h3>{title}</h3><p>{desc}</p>{action}</div>;
}
export function Panel({ title, subtitle, action, children, className = '' }) {
  return <section className={`panel ${className}`}><div className="panel-head"><div><h3>{title}</h3>{subtitle && <p>{subtitle}</p>}</div>{action}</div>{children}</section>;
}
export function PageHeading({ eyebrow, title, description, actions }) {
  return <div className="page-heading"><div><div className="eyebrow">{eyebrow}</div><h1>{title}</h1><p>{description}</p></div>{actions && <div className="heading-actions">{actions}</div>}</div>;
}
export function SearchBox({ value, onChange, placeholder = 'Rechercher...' }) {
  return <div className="searchbox"><Search size={17}/><input aria-label="Rechercher" placeholder={placeholder} value={value} onChange={e => onChange(e.target.value)}/>{value && <button className="clear" onClick={() => onChange('')} aria-label="Effacer"><X size={14}/></button>}</div>;
}
export function Toast({ toast, onClose }) {
  useEffect(() => { if (!toast) return; const timer = setTimeout(onClose, 5200); return () => clearTimeout(timer); }, [toast, onClose]);
  if (!toast) return null;
  const Icon = toast.type === 'error' ? CircleAlert : toast.type === 'warning' ? AlertTriangle : toast.type === 'info' ? Info : CheckCircle2;
  return <div className={`toast toast-${toast.type || 'success'}`} role="status"><Icon size={20}/><span>{toast.message}</span><button onClick={onClose} aria-label="Fermer"><X size={16}/></button></div>;
}
export function Spinner() { return <div className="loading-screen"><LoaderCircle className="spin" size={30}/><span>Chargement des données…</span></div>; }
export function ProductSelect({ value, onChange, products, exclude = [], label = 'Choisir un article' }) {
  return <select value={value} onChange={e => onChange(e.target.value)}><option value="">{label}</option>{products.filter(p => p.active && (p.id === value || !exclude.includes(p.id))).map(p => <option key={p.id} value={p.id}>{p.name} · {p.internalCode}</option>)}</select>;
}
