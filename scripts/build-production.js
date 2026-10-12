import { cp, mkdir, readFile, readdir, rm, writeFile } from 'node:fs/promises';
import { build } from 'esbuild';

await rm('dist', { recursive: true, force: true });
await mkdir('dist', { recursive: true });
await build({ entryPoints: ['src/main.jsx'], bundle: true, format: 'esm', target: 'es2020', outdir: 'dist', entryNames: 'main-[hash]', loader: { '.jsx': 'jsx' } });
const assets = await readdir('dist');
const script = assets.find(file => /^main-[A-Z0-9]+\.js$/i.test(file));
const stylesheet = assets.find(file => /^main-[A-Z0-9]+\.css$/i.test(file));
if (!script || !stylesheet) throw new Error('Production assets were not generated.');
const html = await readFile('index.html', 'utf8');
await writeFile('dist/index.html', html.replace('/src/main.jsx', `/${script}`).replace('</head>', `<link rel="stylesheet" href="/${stylesheet}"/></head>`));
await cp('public', 'dist', { recursive: true, force: true }).catch(error => { if (error.code !== 'ENOENT') throw error; });
