# Release stages and non-functional gates

Factory reference. Every feature this team delivers travels the same three stages. Delivery plans in `06_delivery-plan` are built from this file.

## Stages
| # | Stage | Short | What it means |
|---|---|---|---|
| 1 | Private Preview | PrPr | named customers only |
| 2 | Public Preview | PuPr | open to any customer, not yet under GA commitments |
| 3 | General Availability | GA | fully supported |

A quarter can commit to reaching any one of these. Committing to Public Preview is not committing to GA, and a delivery plan states which stage the commitment covers.

## Non-functional gates
All three block GA. None of them blocks Private or Public Preview — a feature can reach either preview stage with all three outstanding.

| Gate | Blocks | Owner |
|---|---|---|
| DR (disaster recovery) | GA | Tech Lead |
| Production Readiness Review (PRR) | GA | Tech Lead |
| Support / CloudOps training artifacts | GA | Tech Lead |

Every feature carries all three, and every delivery plan shows all three with dates — even where a gate lands in a later quarter than the one being committed. A plan missing a gate is incomplete; a gate with no date is a gap, not an omission.

Because all three land together just before GA, they are the usual place a GA date slips. A feature committed through GA with three undated gates is not really committed through GA.
