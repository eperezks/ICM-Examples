# Setup questionnaire — configure the factory once

Answers get written into `../../_shared/` as reference files. Every future quarter reads them; no quarter should re-ask them.

**Already answered:** Two-week sprints. Ed as Product Owner, Murali as Tech Lead, and only those two approving. All three non-functional gates (DR, PRR, Support/CloudOps artifacts) block GA and nothing earlier.

Still open:

1. **Jira.** Project name, project key, and board name. Does this instance rename any issue types or fields — is an Epic still called an Epic? (fills the placeholders in `_shared/jira-conventions.md`)
2. **Tech context.** Stack, architecture and boundaries, environments and delivery, the non-functional baseline, and which paths hold which code. `02_due-diligence` stops until this exists. (fills `_shared/tech-context.md`)
3. **Aha access.** Is there an API token or MCP server an agent could use to read features and write tags? Today both directions are manual. (updates the seam in `_shared/aha-conventions.md`)
4. **Tags.** Do `DIGITAL_POD` and `CURATED` both go on every committed feature, or is either conditional? Any others? (confirms `_shared/aha-conventions.md`)
5. **Capacity.** What unit does the team size in — points, engineer-weeks, something else? What is the real overhead allowance for support, interviews, and incidents? How many past quarters should velocity average? (confirms `03_capacity/references/capacity-method.md`)
6. **Aha export.** How does the candidate list get out of Aha today — a saved report, a CSV, copy and paste? Name it, so every quarter starts the same way. (updates `_templates/quarter/inputs/aha-export.md`)
7. **Examples.** A past quarter's commitment list and a good delivery plan, if they exist. Link them; do not paste them.

## A note on agents

This workspace names no specific coding agent. Whatever runs it — Claude Code, Devin, Codex, or a person — reads the same files. See the entry-file note in `AGENTS.md` at the repository root.
