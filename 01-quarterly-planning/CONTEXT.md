# 01-quarterly-planning — the pipeline

The flow in one line: see what product is asking for, work out what it takes, work out what we have, cut it until it fits, commit, then plan the delivery.

| Stage | Job | Input | Output | Human check |
|---|---|---|---|---|
| `01_intake` | is there enough detail to assess? | `inputs/aha-export.md` | `features/<id>/detail-review.md` | Ed and Murali agree each feature clears Bar 1 |
| `02_due-diligence` | what would it take to build? | approved detail reviews | `features/<id>/design-note.md` (+ `adr-*.md`) | Murali confirms the approach, or that it is a spike |
| `03_capacity` | what can this team actually do? | headcount, vacations, velocity | `capacity.md` | Murali checks the roster against the real vacation calendar |
| `04_scoping` | cut it until it fits | `inputs/priorities.md`, capacity, design notes | `scoping-ledger.md` | Ed and Murali stop when the ledger fits capacity |
| `05_commitment` | who is committing to what | approved ledger | `commitments.md` | the engineers commit; Ed and Murali approve |
| `06_delivery-plan` | plan each delivery and its dependencies | `commitments.md` | `features/<id>/delivery-plan.md`, `dependency-register.md` | Murali confirms tags in Aha and counter-commitments |

Factory (stable, every quarter): `../_shared/` and each stage's `references/`
Product (new each quarter): `quarters/<YYYY-QN>/`

## Two things that are not stages

**Product ranking** arrives from outside as `inputs/priorities.md`. The product team fills it; no stage produces it. `04_scoping` stops if it is unranked.

**Stage 04 is a loop, not a step.** Ed and Murali go back and forth — clarifying the ask, cutting scope, re-checking against capacity — and the ledger records each pass. The loop ends when the work fits, not after one iteration.

## Quarter shape

```
quarters/<YYYY-QN>/
├─ quarter.md                  dates, who is planning, where candidates came from
├─ inputs/
│  ├─ aha-export.md            the Aha seam — pasted or exported candidates
│  └─ priorities.md            product's ranking
├─ capacity.md                 03
├─ scoping-ledger.md           04
├─ commitments.md              05
├─ dependency-register.md      06
└─ features/<AHA-REF>-<slug>/
   ├─ feature.md               the record card
   ├─ detail-review.md         01
   ├─ design-note.md (+ adr-*) 02
   └─ delivery-plan.md         06
```

New quarter = copy `_templates/quarter/`. New feature record = copy `_templates/feature/`, stamped by `01_intake`.

Status is whatever exists. An output is DRAFT when the file exists with `approved: false`, APPROVED with `approved: true`. `scripts/status.sh` prints this for every quarter and every feature in it.
