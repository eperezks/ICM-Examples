# Software Team Workspace

The working context for a Scrum software development team. Planning is built; later pipelines (build, review, release) slot in beside it.

Built on ICM: folders carry sequencing, hierarchy carries context, files carry state. The structure is the documentation — if something needs explaining, the explanation goes in that folder's CONTEXT.md, not in your head.

## Where things live

| Folder | What it holds |
|---|---|
| `01-planning/` | pipeline: feature request → approved requirements → approved technical design |
| `_shared/` | factory shared by every pipeline: team conventions, definition of ready, Jira conventions, tech context |

## Route by task

| If | Go to |
|---|---|
| planning a feature (new or in progress) | `01-planning/CLAUDE.md` |
| asked for planning status | run `01-planning/scripts/status.sh` and report it |
| first-time setup for this team | `01-planning/setup/questionnaire.md` |
| adding a new pipeline (build, review, release…) | copy the shape of `01-planning/`: numbered sibling folder, own `CLAUDE.md`, one row added to the table above |

## The one rule

Nothing moves to the next stage until a person has read the last one's output and approved it.
