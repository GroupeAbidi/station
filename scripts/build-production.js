import { cp, mkdir, readFile, rm, writeFile } from 'node:fs/promises';
import { build } from 'esbuild';

await rm('dist', { recursive: true, force: true });
await mkdir('dist', { recursive: true });
await build({ entryPoints: ['src/main.jsx'], bundle: true, format: 'esm', target: 'es2020', outdir: 'dist', entryNames: 'main', loader: { '.jsx': 'jsx' } });
const html = await readFile('index.html', 'utf8');
await writeFile('dist/index.html', html.replace('/src/main.jsx', '/main.js'));
await cp('public', 'dist', { recursive: true, force: true }).catch(error => { if (error.code !== 'ENOENT') throw error; });
