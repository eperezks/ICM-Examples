# Definition of ready

Factory reference. Each list is the checklist a human uses at one planning gate. Edit the lists to match the team's bar; stage contracts point here rather than restating them.

## Ready for design
Gate after `01_discovery`. Checked by the Product Owner against `requirements.md`.
- [ ] The problem is stated without prescribing a solution.
- [ ] At least one named user or persona is affected.
- [ ] Acceptance criteria are testable (a tester could pass or fail each one).
- [ ] Non-goals are stated.
- [ ] A success measure is stated, or "none" is stated explicitly.
- [ ] Every open question is answered, or deferred with an owner and a date.

## Ready for breakdown
Gate after `02_design`. Checked by the Tech Lead against `design.md`.
- [ ] One approach is chosen, and the alternatives that were rejected are recorded with reasons.
- [ ] Risks and dependencies (teams, services, data, vendors) are listed.
- [ ] The test approach is stated.
- [ ] Rollout, migration, and rollback are addressed, or marked not applicable.
- [ ] Every hard-to-reverse decision has an ADR.
- [ ] Unknowns that block estimation are spiked or tracked as open questions with an owner.
