# 05_commitment — who is committing to what

One job: record the commitment the team makes. An agent does not make it.

## Inputs
- Working (this quarter): ../../quarters/<Q>/scoping-ledger.md — must have `approved: true`
- Reference (every quarter): ../../../_shared/commitment-bar.md — Bar 2 and the three landings
- Reference (every quarter): ../../../_shared/jira-conventions.md
- Reference (every quarter): ../../../_shared/release-stages.md
- Reference (every quarter): references/commitments-template.md

Do NOT load: design notes, the codebase, `inputs/aha-export.md`. The judgment is already made; this stage records it.

## Process
1. Draft `commitments.md` from the approved ledger: commitments, stretch goals, and deferred features in three sections, each with its Aha reference and a one-line scope.
2. Leave the "engineers committing" field blank on every row. A person fills it in. Do not infer it from the ledger or from who did the diligence.
3. State the release stage each commitment covers — PrPr, PuPr, or GA. Committing to Public Preview is not committing to GA.
4. For each deferred feature, record what it is waiting on, so next quarter's intake starts from it.
5. Update each `feature.md` frontmatter with its `commitment:` value and `release_stage_committed:`.
6. Do not create Jira Epics. Epics come after this gate, per `jira-conventions.md`.
7. Carry the risks forward: accepted Bar 1 gaps, un-agreed dependencies, a wide velocity band. They go in the file, not in someone's memory.

## Outputs
- commitments.md → ../../quarters/<Q>/

## Human check
The engineers say out loud what they are committing to, and their names go in the file. Ed and Murali then set `approved: true`. A commitment nobody said out loud is a forecast, and this file does not hold forecasts.
