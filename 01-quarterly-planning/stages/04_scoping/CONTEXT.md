# 04_scoping — cut it until it fits

One job: run the PO↔lead loop until the scoped work fits the quarter's capacity.

This is a loop, not a step. Each pass clarifies the ask, cuts scope, and re-checks against capacity. The ledger records every pass, because how the quarter got cut matters as much as where it landed.

## Inputs
- Working (this quarter): ../../quarters/<Q>/inputs/priorities.md — product's ranking
- Working (this quarter): ../../quarters/<Q>/capacity.md — must have `approved: true`
- Working (this quarter): ../../quarters/<Q>/features/*/design-note.md — approved ones only
- Reference (every quarter): ../../../_shared/commitment-bar.md — Bar 2 and the three landings
- Reference (every quarter): references/scoping-ledger-template.md

Do NOT load: the codebase, ADRs, `inputs/aha-export.md`. This stage works from sizes and ranks, not from detail. If a size is untrustworthy, send the feature back to `02_due-diligence` rather than re-deriving it here.

## Process
1. Stop if `priorities.md` is unranked or `capacity.md` is unapproved. Say which.
2. Build the ledger: features in priority order with their sizes, a running total, and the point where the total crosses the low end of capacity.
3. Where it does not fit, propose cuts — reduced scope, an earlier release stage, a spike instead of an implementation — and say what each cut costs. Never silently drop a feature.
4. Record each pass as a dated entry: what changed, what Ed and Murali decided, where the total landed.
5. Mark each feature's landing — commitment, stretch, or deferred — using the definitions in `commitment-bar.md`.
6. Re-check Bar 2 per feature after the last pass and list what still fails.
7. Carry forward every dependency named in the design notes. A dependency whose team has not agreed is a reason a feature is a stretch, not a commitment.

## Outputs
- scoping-ledger.md → ../../quarters/<Q>/

## Human check
Ed and Murali stop the loop when the ledger fits capacity and both can live with the cuts. If they cannot, the quarter takes fewer features — it does not pad the capacity number. Both set `approved: true`.
