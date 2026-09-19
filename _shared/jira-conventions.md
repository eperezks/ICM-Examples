# Jira conventions

Factory reference. Values in `{braces}` and marked **default** are replaced by `01-planning/setup/questionnaire.md`.

## Mapping
| Workspace | Jira |
|---|---|
| Feature folder `FEAT-NNN-slug` | Epic |
| Story in a later breakdown | Story under the Epic |
| Implementation step | Sub-task under a Story |

- Project key: `{PROJECT_KEY}`. Board: `{BOARD_NAME}`.
- Epic summary: `FEAT-NNN {title}`, so the Jira and repo names match.
- Create the Epic when `requirements.md` is approved. Record its key in the feature's `request.md` frontmatter (`jira:`).
- The Epic description links to the feature folder. It does not copy the requirements — one home per fact.

## Stories (used once a breakdown stage exists)
- Summary: verb-first and specific.
- Description: "As a {user}, I want {capability}, so that {outcome}."
- Acceptance criteria: taken from `requirements.md`, one story covering one or more criteria.
- Estimate: story points (**default**), set by developers at refinement.
- Labels: `FEAT-NNN` on every issue, so a feature's issues can be queried together.
