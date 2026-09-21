# 02_due-diligence — what would it take to build?

One job: for each feature that cleared intake, establish the approach — or establish that the quarter's deliverable is a spike.

## Inputs
- Working (this quarter): ../../quarters/<Q>/features/<id>/detail-review.md — must have `approved: true`
- Working (this quarter): ../../quarters/<Q>/features/<id>/feature.md
- Reference (every quarter): ../../../_shared/tech-context.md
- Reference (every quarter): ../../../_shared/release-stages.md
- Reference (every quarter): references/design-note-template.md
- Reference (every quarter): references/adr-template.md — only when a decision is hard to reverse

Do NOT load: the whole codebase — read only the areas the feature names or `tech-context.md` lists under Code areas, and cite them as `path:line`. Not `capacity.md` or `inputs/priorities.md`: this stage sizes the work, it does not decide whether it fits.

## Process
1. Skip any feature whose `detail-review.md` is not approved, and say which you skipped.
2. If `tech-context.md` is still unconfigured, stop and say so. Do not assume a stack.
3. Make the spike-or-build call explicitly. A feature whose quarter deliverable is architecture or a prototype is scoped as a spike, with the question it answers and the artifact it produces both stated.
4. For each significant decision, give at least two options with trade-offs, recommend one, and say why.
5. Write `design-note.md`: approach, rough size, unknowns, and what each release stage (PrPr/PuPr/GA) would require. Quarter-level diligence — enough to size and commit, not a full design doc.
6. Write an `adr-NNN-slug.md` for each hard-to-reverse decision. Skip the rest.
7. Name every cross-team dependency found. `06_delivery-plan` chases the counter-commitments; this is where they are first spotted, and a dependency missed here becomes a surprise in week 9.

## Outputs
- design-note.md, adr-NNN-slug.md → ../../quarters/<Q>/features/<id>/

## Human check
Murali reads the approach and the rough size with the engineers who would build it, and confirms the rejected options were rejected for real reasons. Sizes here are inputs to scoping, not promises. Set `approved: true`.
