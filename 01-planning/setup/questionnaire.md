# Setup questionnaire — configure the factory once

Answers get written into `_shared/` as reference files. Every future run reads them; no run should ever re-ask them.

1. Jira: project key, board name, and any issue types or fields your instance renames. (updates `_shared/jira-conventions.md`)
2. Cadence and roles: sprint length, who is Product Owner, who is Tech Lead, who else may approve. (updates `_shared/team-conventions.md`)
3. Tech: stack, architecture and boundaries, environments and delivery, non-functional baseline, and which paths hold which code. (fills `_shared/tech-context.md`)
4. Your bar for "ready": what must be true before design starts, and before breakdown starts. (edits `_shared/definition-of-ready.md`)
5. Examples: one requirements doc and one design doc from past work that were good. Link them, do not paste them. (linked from each stage's `references/`)
