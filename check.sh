#!/usr/bin/env bash
# check: build validation for views-acquisition baseline
# expected: exit 0 and prints BUILD_OK
set -euo pipefail
test -f site/index.html || { echo "missing site/index.html"; exit 1; }
test -f content/plan.md || { echo "missing content/plan.md"; exit 1; }
grep -q "<title>.*</title>" site/index.html || { echo "missing <title>"; exit 1; }
grep -q "abacus.jasoncameron.dev" site/index.html || { echo "missing analytics hook (abacus)"; exit 1; }
echo "BUILD_OK"
