# Capacity method

How the number in `capacity.md` is arrived at. Change the method here, not inside an individual quarter.

## Formula
```
sprints in quarter   = quarter working weeks ÷ sprint length
engineer-sprints     = Σ (each engineer's sprints − their planned time off)
raw capacity         = engineer-sprints × per-engineer velocity
available capacity   = raw capacity × (1 − overhead allowance)
```

## The inputs
- **Sprints in quarter.** From `quarter.md` dates and the sprint length in `team-conventions.md`. Two-week sprints across a 13-week quarter give 6 sprints and a week left over — say what happens to the remainder.
- **Engineers.** By name. Someone joining mid-quarter counts only for the sprints they are there, and counts for less in their first ones.
- **Time off.** Planned vacation, public holidays, known leave. Unknown time off is an open question owned by the Scrum Master, not a zero.
- **Velocity.** What the team actually delivered over recent completed quarters. State the count, the mean, and the range. A team with a wide range does not get to plan against its best quarter.
- **Overhead allowance.** Support rotations, interviews, incidents, meetings — the team's real non-feature load. **Default: 20%, unconfirmed.** Set it in setup from what recent quarters actually looked like.

## Rules
- Capacity is computed before looking at the backlog. Looking first inflates it.
- Report a band. A single number gets treated as a promise.
- If the band's low end does not cover the commitments, the commitments are wrong — not the band. Planning against best-case velocity is the most common way a quarter over-commits.
