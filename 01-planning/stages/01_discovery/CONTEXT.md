# 01_discovery — requirements from a request

One job: turn a feature request into testable requirements, without inventing answers.

## Inputs
- Working (this feature): ../../features/<id>/request.md
- Reference (every feature): ../../../_shared/definition-of-ready.md — the "Ready for design" list only
- Reference (every feature): references/requirements-template.md
- Reference (every feature): references/discovery-questions.md

Do NOT load: other features' folders, `_shared/tech-context.md` and `_shared/jira-conventions.md` (they belong to later steps), the codebase.

## Process
1. Read `request.md`.
2. Work through `discovery-questions.md`. Answer each from the request; where the request is silent, write it as an open question with a proposed owner. Never fill a gap with a guess.
3. Write `requirements.md` in the shape of `requirements-template.md`, with `approved: false`.
4. Check the draft against "Ready for design" and list, under Open questions, anything that would fail it.

## Outputs
- requirements.md → ../../features/<id>/01_discovery/

## Human check
The Product Owner reads Problem and Acceptance criteria aloud to someone who has not seen the request, and confirms it still means the same thing. Answer or strike every open question, edit in place, then set `approved: true`. The next stage reads whatever is here.
