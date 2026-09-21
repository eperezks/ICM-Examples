# 01-quarterly-planning

Turns a quarter's candidate Aha features into a committed feature list with delivery plans, tags applied, and dependencies agreed.

A quarter is a record (`quarters/<YYYY-QN>/`) that six stages write into. Quarter-level artifacts sit at the top of that folder; per-feature judgment sits in `features/<AHA-REF>-<slug>/`.

## Where things live

| Folder | What it holds |
|---|---|
| `stages/` | the pipeline, in execution order |
| `quarters/` | product: one folder per quarter, stamped from the template |
| `_templates/quarter/` | the stamp: a new quarter is a copy of this |
| `_templates/feature/` | the stamp: a new feature record is a copy of this |
| `scripts/status.sh` | read-only status of every quarter, by scanning files |
| `setup/` | one-time factory configuration |
| `../_shared/` | factory: conventions, release stages, the commitment bar |

`CLAUDE.md` beside this file is a one-line pointer here, not a second copy. This pipeline runs the same under any agent.

## Route by what just happened

| If | Go to | Then stop at |
|---|---|---|
| starting a quarter | copy `_templates/quarter/` to `quarters/<YYYY-QN>/`, fill `quarter.md` | a human confirms the dates and where the candidate list came from |
| `inputs/aha-export.md` is filled in | `stages/01_intake/CONTEXT.md` | Ed and Murali approve each `detail-review.md` |
| intake approved | `stages/02_due-diligence/CONTEXT.md` | Murali approves each `design-note.md` |
| due diligence approved | `stages/03_capacity/CONTEXT.md` | Murali approves `capacity.md` |
| capacity approved and `inputs/priorities.md` is ranked | `stages/04_scoping/CONTEXT.md` | Ed and Murali approve `scoping-ledger.md` |
| scoping approved | `stages/05_commitment/CONTEXT.md` | the engineers commit; Ed and Murali approve `commitments.md` |
| commitments approved | `stages/06_delivery-plan/CONTEXT.md` | Murali confirms tags in Aha and every dependency counter-committed |
| asked for status | run `scripts/status.sh` | report it |

## The two rules

An agent never sets `approved: true` — only the named approver does, after reading the output.

An agent never commits on the engineers' behalf. `05_commitment` records a commitment people made out loud; it does not make one.
