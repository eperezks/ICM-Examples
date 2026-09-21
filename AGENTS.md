# Software Team Workspace

The working context for a software development team's quarterly planning. Quarterly planning is built; later pipelines (build, review, release) slot in beside it.

Built on ICM: folders carry sequencing, hierarchy carries context, files carry state. The structure is the documentation — if something needs explaining, the explanation goes in that folder's CONTEXT.md, not in your head.

## Where things live

| Folder | What it holds |
|---|---|
| `01-quarterly-planning/` | pipeline: Aha feature candidates → a committed quarter with delivery plans |
| `_shared/` | factory shared by every pipeline: team conventions, Aha and Jira conventions, release stages, the commitment bar, tech context |

## Route by task

| If | Go to |
|---|---|
| planning a quarter (new or in progress) | `01-quarterly-planning/AGENTS.md` |
| asked for planning status | run `01-quarterly-planning/scripts/status.sh` |
| first-time setup for this team | `01-quarterly-planning/setup/questionnaire.md` |
| adding a new pipeline (build, review, release…) | copy the shape of `01-quarterly-planning/`: numbered sibling folder, own `AGENTS.md`, one row added to the table above |

## The systems of record

Aha holds features and tags. Jira holds the work, and its completion percentage flows back to Aha through the integration. This workspace holds the planning judgment — what we assessed, what we can fit, what we committed to. It never duplicates what Aha or Jira already knows.

## Entry files

`AGENTS.md` is the entry file at the root and in every pipeline folder, and it is the only one maintained by hand. `CLAUDE.md` beside it is a one-line pointer, there because Claude Code looks for that name. Never edit the pointer or let a second copy grow in it.

This workspace assumes no particular agent. Whatever reads it — Claude Code, Devin, Codex, or a person — gets the same contracts, because every instruction here is about which files to read and write.

## The one rule

Nothing moves to the next stage until a person has read the last one's output and approved it.
