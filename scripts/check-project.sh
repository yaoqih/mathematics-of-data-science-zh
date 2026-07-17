#!/usr/bin/env bash
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$root"

required=(
  "site/_quarto.yml"
  "site/index.qmd"
  "site/references.bib"
  "glossary/terms.yml"
  "upstream/en-latex/BandeiraSingerStrohmer-MDS-1.0.tex"
)

for path in "${required[@]}"; do
  [[ -e "$path" ]] || { echo "Missing required path: $path" >&2; exit 1; }
done

chapter_count="$(find site/chapters -maxdepth 1 -name '*.qmd' | wc -l | tr -d ' ')"
[[ "$chapter_count" == "16" ]] || {
  echo "Expected 16 chapter files, found $chapter_count" >&2
  exit 1
}

if command -v quarto >/dev/null 2>&1; then
  quarto render site
else
  echo "Quarto is not installed; structural checks passed, render skipped."
fi

