---
aha_ref:
stage: 06_delivery-plan
quarter:
approved: false
approver: Tech Lead
---

# {aha_ref} — delivery plan

Committed through: **{PrPr | PuPr | GA}**

## Milestones
Inception through GA. Every plan carries all three release stages and all three non-functional gates, even where a gate lands beyond this quarter — the commitment is to a path, and a gate with no date is a gap.

| # | Milestone | Type | Owner | Target | Status | Notes |
|---|---|---|---|---|---|---|
| 1 | Inception | start |  |  |  |  |
| 2 | Design complete | build |  |  |  |  |
| 3 | Implementation complete | build |  |  |  |  |
| 4 | **Private Preview** | release stage |  |  |  |  |
| 5 | **Public Preview** | release stage |  |  |  |  |
| 6 | DR | NFR gate |  |  |  | blocks GA |
| 7 | Production Readiness Review | NFR gate |  |  |  | blocks GA |
| 8 | Support / CloudOps training artifacts | NFR gate |  |  |  | blocks GA |
| 9 | **GA** | release stage |  |  |  |  |

Status is one of: `not started` · `in progress` · `done` · `at risk` · `slipped`.

All three NFR gates block GA and nothing earlier — see `_shared/release-stages.md`. They therefore stack up in the same window before GA, which is where GA dates usually slip. Give each one its own date and owner rather than one shared "before GA".

## Dependent team milestones
Work another team owes us, on the same timeline. Their dates belong in this table so the critical path is visible in one place.

| # | Milestone | Team | Owner there | Target | Agreed? | Blocks |
|---|---|---|---|---|---|---|
|  |  |  |  |  | yes / **NOT COMMITTED** |  |

## Aha tags
Applied by hand in Aha — see the seam in `_shared/aha-conventions.md`. Tick a box only after looking at the Aha feature, then set `tags_applied: true` in `feature.md`.

| Tag | Applied |
|---|---|
| `DIGITAL_POD` | [ ] |
| `CURATED` | [ ] |

## Assumptions
_What these dates assume. The first one to break is usually a dependency._
