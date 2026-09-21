# The commitment bar

Factory reference. Two checklists, each used at one gate in the quarterly pipeline. Stage contracts point here rather than restating them.

## Bar 1 — enough detail to assess
Gate at the end of `01_intake`. Checked by Ed and Murali against the Aha feature.

The test: an engineer reads the Aha feature and can say what building it involves. If any line fails, the feature goes back to product before scoping starts.

- [ ] The problem and the affected users are stated.
- [ ] The ask is specific enough that two engineers would scope it the same way.
- [ ] Acceptance criteria are present and testable.
- [ ] Non-goals are stated.
- [ ] Known dependencies on other teams are named.
- [ ] It is clear whether this is an implementation ask or a spike/architecture ask.

## Bar 2 — ready to commit
Gate at the end of `04_scoping`, carried into `05_commitment`. Checked per feature by Ed and Murali.

- [ ] Bar 1 passed, or its gaps were explicitly accepted and recorded.
- [ ] Due diligence is done: an approach is known, or the feature is deliberately scoped as a spike.
- [ ] The scope fits the quarter at the team's stated capacity, for the release stage being promised.
- [ ] Product has ranked it, and the rank is consistent with what is being committed.
- [ ] Every dependency has a named team, and that team has agreed to the same timeline.
- [ ] The engineers who would build it say they can commit. Not the lead on their behalf.

## The three landings
Every candidate feature ends the quarter's planning in one of three places, and these are the definitions the whole pipeline uses:

- **Commitment** — clears Bar 2 and fits inside capacity.
- **Stretch goal** — clears Bar 2 but sits past the capacity line.
- **Deferred** — anything else. The reason is recorded, so next quarter's intake starts from it.
