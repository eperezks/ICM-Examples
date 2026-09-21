# Team conventions

Factory reference: stable across every quarter. Configured through `01-quarterly-planning/setup/questionnaire.md`.

## Method
- Scrum, two-week sprints.
- Planning runs once a quarter and commits a set of features. Sprint-level refinement happens inside the quarter, against features that were already committed.

## Roles and approvals
| Role | Owns | Approves |
|---|---|---|
| Product Owner: Ed | the ask, and product ranking | intake detail reviews, scoping, commitments |
| Tech Lead: Murali | the approach, capacity, delivery plans | due diligence, capacity, scoping, commitments, delivery plans |
| Product team | ranks the candidate features | `inputs/priorities.md` |
| Engineers | estimates, and the commitment itself | they commit; nobody commits on their behalf |
| Scrum Master | cadence, blockers, the vacation calendar | — |

Approval = the approver sets `approved: true` in the output file's frontmatter after reading it. An agent never sets it.

## Working agreements
- A quarter is one folder: `01-quarterly-planning/quarters/<YYYY-QN>/`.
- A feature is one folder inside a quarter, keyed by its Aha reference.
- Aha holds the feature detail. This workspace holds the planning judgment about it. Link, never copy.
- Open questions are written down, with an owner. They are never guessed at.
- Decisions that are hard to reverse get an ADR; everything else lives in the design note.
