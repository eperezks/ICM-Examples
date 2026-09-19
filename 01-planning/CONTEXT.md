# 01-planning — the pipeline

The flow in one line: capture the ask, pin down what to build, decide how to build it.

| Stage | Job | Input | Output | Human check |
|---|---|---|---|---|
| `01_discovery` | requirements from a request | `features/<id>/request.md` | `features/<id>/01_discovery/requirements.md` | Product Owner reads Problem and Acceptance criteria, answers open questions, sets `approved: true` |
| `02_design` | technical design from requirements | approved `requirements.md` | `features/<id>/02_design/design.md` (+ `adr-*.md`) | Tech Lead reads Decision and Risks, sets `approved: true` |

Factory (stable, every feature): `../_shared/` and each stage's `references/`
Product (new each feature): `features/<id>/`

New feature = copy `_templates/feature/` to `features/FEAT-NNN-slug/`. The next number is one above the highest in `features/`.

Status is whatever exists. A stage is DRAFT when its output file exists with `approved: false`, and APPROVED when it has `approved: true`. `scripts/status.sh` prints this for every feature.
