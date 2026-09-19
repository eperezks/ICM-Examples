# 02_design — technical design from requirements

One job: propose how to build what the approved requirements describe.

## Inputs
- Working (this feature): ../../features/<id>/01_discovery/requirements.md — must have `approved: true`
- Reference (every feature): ../../../_shared/tech-context.md
- Reference (every feature): ../../../_shared/definition-of-ready.md — the "Ready for breakdown" list only
- Reference (every feature): references/design-doc-template.md
- Reference (every feature): references/adr-template.md — only if a decision is hard to reverse

Do NOT load: `request.md`, other features' folders, the whole codebase. Read only the code areas named in requirements' Affected areas or in `tech-context.md` Code areas, and cite them as `path:line`.

## Process
1. Stop if `requirements.md` is not approved, or if `tech-context.md` is still unconfigured. Say which, and do nothing else.
2. For each significant decision, give at least two options with trade-offs, recommend one, and say why.
3. Write `design.md` in the shape of `design-doc-template.md`, with `approved: false`.
4. Write an `adr-NNN-slug.md` for each hard-to-reverse decision. Skip the rest.
5. Check the draft against "Ready for breakdown" and list, under Open questions, anything that would fail it.

## Outputs
- design.md → ../../features/<id>/02_design/
- adr-NNN-slug.md (only when needed) → ../../features/<id>/02_design/

## Human check
The Tech Lead reads Decision and Risks, and confirms the rejected options were rejected for real reasons. Edit in place, then set `approved: true`. Approved design is the input to breakdown into Jira stories.
