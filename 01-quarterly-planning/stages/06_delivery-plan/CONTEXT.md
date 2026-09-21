# 06_delivery-plan — plan each delivery and its dependencies

One job: give every committed feature a milestone plan through GA, tag it in Aha, and get dependent teams committed to the same dates.

## Inputs
- Working (this quarter): ../../quarters/<Q>/commitments.md — must have `approved: true`
- Working (this quarter): ../../quarters/<Q>/features/<id>/design-note.md — for dependencies and release-stage requirements
- Reference (every quarter): ../../../_shared/release-stages.md — the three stages and the three NFR gates
- Reference (every quarter): ../../../_shared/aha-conventions.md — the required tags and the seam
- Reference (every quarter): references/delivery-plan-template.md
- Reference (every quarter): references/dependency-register-template.md

Do NOT load: deferred features, or stretch goals unless a stretch is being planned deliberately — say so when it is. Not the codebase: this stage plans dates, not implementation.

## Process
1. Per commitment, write `delivery-plan.md`: a milestone table from inception through GA, carrying Private Preview, Public Preview, and GA, plus all three non-functional gates from `release-stages.md` — DR, Production Readiness Review, and Support/CloudOps training artifacts. All three block GA. Every plan carries all three even when they land in a later quarter than the one being committed. A gate with no date is a gap, not an omission.
2. Give each gate its own date and owner. All three land in the same window before GA, so a plan that lumps them together hides the most common cause of a GA slip.
3. Where a feature depends on another team, add that team's milestones to the same table, marked with the team name, so the dependency is visible in the feature's own plan rather than only in the register.
4. Build `dependency-register.md`: one row per dependency — what we need, from which team, by when, who agreed, and the date they agreed. A dependency nobody on the other team agreed to is marked `NOT COMMITTED`.
5. Fill the dependencies-we-owe section of the register. If it is non-empty and `capacity.md` did not account for that work, say so — it means capacity was overstated.
6. Produce the Aha tag checklist per committed feature: `DIGITAL_POD` and `CURATED`. No agent can write to Aha (see the seam), so this stage produces the list and a person applies the tags.
7. Stop and flag any commitment whose dependencies are not counter-committed. That is a risk to the commitment itself, not a footnote.

## Outputs
- delivery-plan.md → ../../quarters/<Q>/features/<id>/
- dependency-register.md → ../../quarters/<Q>/

## Human check
Murali confirms three things by looking, not by trusting the file: the tags are actually on the Aha features, every dependency row names a real person on the other team who agreed, and no plan is missing a non-functional gate. Set `approved: true`. The quarter is then planned.
