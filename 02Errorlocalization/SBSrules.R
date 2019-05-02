
# range restrictions
staff       >= 0
turnover    >= 0
other.rev   >= 0
total.rev >= 0
staff.costs >= 0
total.costs >= 0


# balance restrictions
turnover + other.rev == total.rev
total.rev - total.costs == profit


# sensibility checks
staff.costs <= 0.9*total.costs
profit      <= 0.6*other.rev
