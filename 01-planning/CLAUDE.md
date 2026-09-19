# 01-planning

Turns a feature request into approved requirements and an approved technical design, ready for breakdown into Jira stories.

Each feature is a record (`features/FEAT-NNN-slug/`) that two stages write into. The stage contracts live in `stages/`; the shared rules live in `../_shared/`.

## Where things live

| Folder | What it holds |
|---|---|
| `stages/` | the pipeline, in execution order |
| `features/` | product: one folder per feature, stamped from the template |
| `_templates/feature/` | the stamp: a new feature is a copy of this |
| `scripts/status.sh` | read-only status of every feature, by scanning files |
| `setup/` | one-time factory configuration |
| `../_shared/` | factory: conventions, definition of ready, Jira, tech context |

## Route by what just happened

| If | Go to | Then stop at |
|---|---|---|
| new feature request | copy `_templates/feature/` to `features/FEAT-NNN-slug/`, fill in `request.md` | human confirms the ask is captured |
| `request.md` is filled in | `stages/01_discovery/CONTEXT.md` | Product Owner approves `requirements.md` |
| `requirements.md` has `approved: true` | `stages/02_design/CONTEXT.md` | Tech Lead approves `design.md` |
| `design.md` has `approved: true` | planning is complete for that feature | — |
| asked for status | run `scripts/status.sh` | report it |
| `_shared/tech-context.md` is unconfigured | `setup/questionnaire.md` | answers written to `_shared/` |

## The one rule

An agent never sets `approved: true`. Only the named approver does, after reading the output.
