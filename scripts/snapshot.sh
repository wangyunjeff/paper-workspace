#!/usr/bin/env bash
# Usage: scripts/snapshot.sh <who> <what> [journal-folder]   (default journal: draft)
set -euo pipefail
who=${1:?who}; what=${2:?what}; j=${3:-draft}
root=$(cd "$(dirname "$0")/.." && pwd)
name="$(date +%F)_${who}_${what}"
out="$root/submissions/$name"
[ -e "$out" ] && { echo "exists: $out (snapshots are never edited)"; exit 1; }
(cd "$root/journals/$j" && latexmk main.tex)
mkdir -p "$out/source"
cp "$root/journals/$j/main.pdf" "$out/manuscript.pdf"
# flat source: bundle every input into one folder
cp "$root/journals/$j/"*.tex "$root/journals/$j/"*.cls "$root/journals/$j/"*.sty "$out/source/" 2>/dev/null || true
cp "$root"/paper/sections/* "$root"/paper/figures/* "$root"/paper/tables/* "$root/paper/refs.bib" "$out/source/" 2>/dev/null || true
cat > "$out/NOTE.md" <<NOTE
# $name
- Who: $who
- What: $what
- Journal layout: $j
- Commit: $(git -C "$root" rev-parse --short HEAD)
NOTE
echo "Created $out"
