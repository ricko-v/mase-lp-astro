import { defineConfig } from 'astro/config';

// Ganti SITE_URL di src/consts.ts sesuai domain deploy (mis. Cloudflare Pages / Vercel).
export default defineConfig({
  site: 'https://the-landing-page.ricko.dev',
  trailingSlash: 'always',
});
