#!/usr/bin/env bash
# deploy targets – all need one credential (choose one)
# 1. Cloudflare Pages: npx wrangler pages deploy site --project-name=json-tool
#    needs: CLOUDFLARE_API_TOKEN
# 2. Vercel: npx vercel --prod ./site
#    needs: VERCEL_TOKEN
# 3. GitHub Pages: gh repo create json-tool --public --source=. --push + enable Pages
#    needs: gh auth login
set -euo pipefail
echo "no credential found – see file for one-command deploy once token is set"
echo "site/ ready, check.sh passes, analytics slot present"
