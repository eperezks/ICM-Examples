# Aha conventions

Factory reference. Aha is the system of record for features; Jira tracks the work against them. See [jira-conventions.md](jira-conventions.md) for the other half.

## What Aha holds
- The feature and all its detail. Requirements live in Aha, not here — a feature folder in this workspace links to the Aha feature and never copies its body.
- The required tags (below).
- The completion percentage, fed back from Jira by the integration.

## Feature reference
A feature's Aha reference is its id everywhere in this workspace. Feature folder: `quarters/<YYYY-QN>/features/<AHA-REF>-<slug>/`.

## Required tags
Applied in Aha during `06_delivery-plan`, before the quarter is published.

| Tag | Applies to |
|---|---|
| `DIGITAL_POD` | every feature this team commits to |
| `CURATED` | every feature this team commits to |

**Unconfirmed:** these two arrived as a pair in the planning brief. Confirm in `setup/questionnaire.md` whether both belong on every committed feature, whether either is conditional, and whether there are others.

## The seam — getting Aha data in and out
No agent can reach Aha today. Both directions are manual:

- **In:** a human exports or pastes the quarter's candidate features into `quarters/<YYYY-QN>/inputs/aha-export.md`. Every stage downstream reads that file. A stale export means the quarter is planned against the wrong list, so the file records when it was pulled.
- **Out:** `06_delivery-plan` produces a tag checklist. A person applies the tags in Aha and ticks the boxes.

If an Aha API token or MCP server becomes available, it slots in exactly here: a fetch step writes the same `aha-export.md`, and tagging becomes an API call instead of a checklist. Nothing else in the pipeline changes.
