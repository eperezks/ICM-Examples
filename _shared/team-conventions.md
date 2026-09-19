# Team conventions

Factory reference: stable across every feature and every pipeline. Values marked **default** are starting points — `01-planning/setup/questionnaire.md` replaces them with the team's real ones.

## Method
- Scrum, two-week sprints (**default**).
- Refinement happens before sprint planning. Planning artifacts (requirements, design) are finished and approved *before* a story is pulled into a sprint.

## Roles and approvals
| Role | Owns | Approves |
|---|---|---|
| Product Owner | the "what" and "why" | `01_discovery/requirements.md` |
| Tech Lead | the "how" | `02_design/design.md` |
| Developers | estimates and delivery | — |
| Scrum Master | cadence and blockers | — |

Approval = the approver sets `approved: true` in the output file's frontmatter after reading it. An agent never sets it.

## Working agreements
- A feature is one folder: `01-planning/features/FEAT-NNN-slug/`. One feature maps to one Jira Epic (see [jira-conventions.md](jira-conventions.md)).
- Open questions are written down, with an owner. They are never guessed at.
- Decisions that are hard to reverse get an ADR; everything else lives in the design doc.
