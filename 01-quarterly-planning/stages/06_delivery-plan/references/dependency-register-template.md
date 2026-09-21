---
quarter:
stage: 06_delivery-plan
approved: false
approver: Tech Lead
---

# {quarter} — dependency register

Every cross-team dependency behind this quarter's commitments. Dependent teams commit to the same timelines; a dependency nobody on the other team agreed to is not a dependency, it is a hope.

## Register
| # | Aha ref | What we need | From team | Needed by | Their owner | Agreed | Agreed on | Blocks |
|---|---|---|---|---|---|---|---|---|
| 1 |  |  |  |  |  | yes / **NOT COMMITTED** |  | PrPr / PuPr / GA |

## Not committed
Every row above marked `NOT COMMITTED`, restated so it cannot be skimmed past. Each one is a live risk to a commitment in `commitments.md`.

| Aha ref | Dependency | Team | Chased by | Escalate if not agreed by |
|---|---|---|---|---|

## Dependencies we owe others
Other teams planning against us. They belong here because they consume our capacity.

| # | What they need | Team | By when | Committed by us | Counted in capacity? |
|---|---|---|---|---|---|

_If any row says no under "Counted in capacity?", `capacity.md` overstated what this team has available, and the commitment list is built on a number that is too high. Say so rather than leaving it in the table._
