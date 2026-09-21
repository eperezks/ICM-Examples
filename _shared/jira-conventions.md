# Jira conventions

Factory reference. Jira tracks developer progress; Aha is the system of record for the feature — see [aha-conventions.md](aha-conventions.md).

## Mapping
| Aha | Jira | This workspace |
|---|---|---|
| Feature | Epic in `{PROJECT_KEY}` | `quarters/<YYYY-QN>/features/<AHA-REF>-<slug>/` |
| — | Story under the Epic | a slice of the feature |
| — | Sub-task | an implementation step |

- **Not yet configured:** project `{PROJECT_NAME}`, key `{PROJECT_KEY}` (issues then read `{PROJECT_KEY}-123`), board `{BOARD_NAME}`. Set in `01-quarterly-planning/setup/questionnaire.md`.
- Issue types are assumed to use Jira's standard names — Epic, Story, Sub-task. Confirm in setup if this instance renames them.
- Feature folders are keyed by the **Aha** reference, not the Jira key, so nothing in this workspace is renamed when the Jira project is configured.
- **Completion percentage flows Jira → Aha automatically.** As stories close, the Aha feature's percentage moves. Nobody updates it by hand, and this workspace never records a completion percentage — read it in Aha.
- Epics are created *after* commitment, not during planning. Planning produces no Jira issues.
- Record the Epic key in the feature record's `jira:` frontmatter once it exists.

## Stories
- Summary: verb-first and specific.
- Description: "As a {user}, I want {capability}, so that {outcome}."
- Acceptance criteria: taken from the Aha feature.
- Estimate: story points, set by developers at refinement.
- Label every issue with the Aha reference, so one feature's issues can be queried together — and so the integration has a clean join back to Aha.
