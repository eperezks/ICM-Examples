#!/usr/bin/env bash
# Read-only planning status for every feature, derived from the files on disk.
# "-" = no output yet, "draft" = written but approved: false, "approved" = approved: true.
set -euo pipefail

features="$(cd "$(dirname "$0")/.." && pwd)/features"

state() {
  if [ ! -f "$1" ]; then echo "-"
  elif grep -qE '^approved: *true' "$1"; then echo "approved"
  else echo "draft"
  fi
}

printf '%-36s %-11s %-11s\n' FEATURE DISCOVERY DESIGN
found=0
for dir in "$features"/FEAT-*/; do
  [ -d "$dir" ] || continue
  found=1
  printf '%-36s %-11s %-11s\n' "$(basename "$dir")" \
    "$(state "$dir/01_discovery/requirements.md")" \
    "$(state "$dir/02_design/design.md")"
done
[ "$found" -eq 1 ] || echo "(no features yet)"
