# The Landing Page

Koleksi landing page yang digenerate otomatis **tiap jam 3 pagi** oleh Mase AI —
satu topik bebas per hari, dibangun dengan Astro + optimasi SEO penuh + gambar hasil generate.

## Cara kerja

1. Cron harian (03:00 WIB) memilih topik berikutnya dari `.muse/topics.json`.
2. Copywriting Bahasa Indonesia ditulis (headline, subheadline, fitur, FAQ, CTA).
3. Gambar hero & OG image (1200×630) digenerate.
4. Halaman Astro baru dibuat di `src/pages/<slug>.astro` memakai `BaseLayout`
   (canonical, OG tags, Twitter cards, JSON-LD, meta robots — checklist audit ricko.dev).
5. Entri ditambahkan ke `src/data/pages.json` → muncul otomatis di arsip index.

## Development

```bash
npm install
npm run dev     # http://localhost:4321
npm run build   # output ke dist/
```

## Konfigurasi

- `src/consts.ts` → `SITE_URL` (ganti sesuai domain deploy)
- `.muse/topics.json` → tambah topik ke `pool`; yang sudah dipakai tercatat di `used`

## Deploy

Project Astro statis — cocok di Cloudflare Pages, Vercel, atau Netlify.
