# How to Format Large JSON Without Uploading
Problem: pasting PII/secrets into random formatters leaks data.
Solution: client-side only (this site) + local CLI.

Steps:
1. Keep file local.
2. Browser: open tool, paste, Format (nothing leaves machine).
3. CLI: `jq . data.json`, or `python3 -m json.tool data.json`.
4. Validate: `jq empty data.json && echo OK`.

Metric to track: tool pageviews, copy clicks, Power Pack CTR.
