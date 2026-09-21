#!/usr/bin/env bash
# Read-only quarterly planning status, derived from the files on disk.
# Stage outputs: "-" = no file, "draft" = approved: false, "approved" = approved: true.
set -euo pipefail

quarters="$(cd "$(dirname "$0")/.." && pwd)/quarters"

state() {
  if [ ! -f "$1" ]; then echo "-"
  elif grep -qE '^approved: *true' "$1"; then echo "approved"
  else echo "draft"
  fi
}

field() {  # field <file> <frontmatter-key>
  [ -f "$1" ] || { echo "-"; return; }
  local v
  v="$(grep -m1 -E "^$2: *" "$1" | sed "s/^$2: *//; s/#.*//; s/[[:space:]]*\$//")" || true
  [ -n "$v" ] && echo "$v" || echo "-"
}

found=0
for q in "$quarters"/*/; do
  [ -d "$q" ] || continue
  found=1
  printf '\n%s\n' "$(basename "$q")"
  printf '  %-14s %-10s %s\n' priorities   "$(state "$q/inputs/priorities.md")"  '(from product)'
  printf '  %-14s %-10s %s\n' capacity     "$(state "$q/capacity.md")"           '03'
  printf '  %-14s %-10s %s\n' scoping      "$(state "$q/scoping-ledger.md")"     '04'
  printf '  %-14s %-10s %s\n' commitments  "$(state "$q/commitments.md")"        '05'
  printf '  %-14s %-10s %s\n' dependencies "$(state "$q/dependency-register.md")" '06'

  printf '\n  %-26s %-10s %-10s %-10s %-12s %s\n' FEATURE INTAKE DILIGENCE PLAN COMMITMENT TAGGED
  nf=0
  for f in "$q"features/*/; do
    [ -d "$f" ] || continue
    nf=1
    printf '  %-26s %-10s %-10s %-10s %-12s %s\n' "$(basename "$f")" \
      "$(state "$f/detail-review.md")" \
      "$(state "$f/design-note.md")" \
      "$(state "$f/delivery-plan.md")" \
      "$(field "$f/feature.md" commitment)" \
      "$(field "$f/feature.md" tags_applied)"
  done
  [ "$nf" -eq 1 ] || printf '  (no features yet)\n'
done
[ "$found" -eq 1 ] || echo "(no quarters yet)"
