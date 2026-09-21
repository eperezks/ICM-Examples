# 03_capacity — what can this team actually do?

One job: turn headcount, vacations, and historical velocity into the number the quarter is scoped against.

## Inputs
- Working (this quarter): ../../quarters/<Q>/quarter.md — the quarter's dates
- Reference (every quarter): ../../../_shared/team-conventions.md — sprint length
- Reference (every quarter): references/capacity-method.md
- Reference (every quarter): references/capacity-template.md

Do NOT load: feature folders, design notes, `inputs/priorities.md`. Capacity is what the team has, not what the team wants to do. Computing it while looking at the backlog is how it gets inflated.

## Process
1. Count the sprints in the quarter from `quarter.md` dates and the sprint length. Say what happens to any remainder rather than rounding silently.
2. List every engineer by name, with their planned time off. Unknown vacation data is an open question owned by the Scrum Master — never a zero.
3. Take historical velocity per `capacity-method.md`. State how many quarters it averages, the mean, and the range — not just the mean.
4. Compute available capacity, showing the arithmetic.
5. Report a band, not a single number, and state the assumptions that would break it.

## Outputs
- capacity.md → ../../quarters/<Q>/

## Human check
Murali checks the roster and the time off against the real vacation calendar, and sanity-checks the velocity figure against what last quarter actually delivered. Set `approved: true`. Scoping reads this number; if it is wrong, everything downstream is wrong.
