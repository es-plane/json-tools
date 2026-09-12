# JQ vs Browser Formatter Cheatsheet
Target keyword: format json without uploading. Audience: devs handling secrets.

- Small (<1MB): use this page (client-side, `JSON.parse` + `JSON.stringify(_,null,2)`).
- Large (>5MB): use `jq . input.json > out.json`, or `python3 -m json.tool`.
- Never paste secrets into server-side formatters.
- CTA: try the free tool at `/`, join list for Power Pack.
