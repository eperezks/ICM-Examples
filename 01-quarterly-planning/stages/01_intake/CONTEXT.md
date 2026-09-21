# 01_intake — is there enough detail to assess?

One job: stamp a record for each candidate feature and judge whether its Aha detail is sufficient for an engineer to commit.

## Inputs
- Working (this quarter): ../../quarters/<Q>/inputs/aha-export.md
- Reference (every quarter): ../../../_shared/commitment-bar.md — Bar 1 only
- Reference (every quarter): ../../../_shared/aha-conventions.md
- Reference (every quarter): references/detail-review-template.md

Do NOT load: other quarters; `tech-context.md` or the codebase (that is `02_due-diligence`); `inputs/priorities.md` — a thinly specified feature fails Bar 1 whatever its rank, and reading the ranking here biases the judgment.

## Process
1. Read `inputs/aha-export.md`. If it is empty or still the placeholder, stop and say so — no agent can reach Aha (see the seam in `aha-conventions.md`).
2. Per candidate, copy `../../_templates/feature/` to `../../quarters/<Q>/features/<AHA-REF>-<slug>/` and fill `feature.md` frontmatter from the export.
3. Write one `detail-review.md` per feature: each Bar 1 line marked pass or fail, and for each fail, the specific question product must answer.
4. Record whether the ask is implementation or spike/architecture — as the feature states it. If the feature does not say, that is a Bar 1 failure, not a call to make here.
5. Never fill a gap with a guess. A missing acceptance criterion is a fail, not something to draft.

## Outputs
- feature.md, detail-review.md → ../../quarters/<Q>/features/<AHA-REF>-<slug>/

## Human check
Ed and Murali read the failures together and decide per feature: send it back to product, or accept it with the gap recorded and carried into scoping as risk. Set `approved: true` on each review. A feature left failing does not go to due diligence.
