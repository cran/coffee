## ----eval=FALSE---------------------------------------------------------------
# install.packages('coffee')

## -----------------------------------------------------------------------------
library(coffee)

## ----fig.width=4, fig.asp=1.3-------------------------------------------------
sim.rings(age.start=1000, length=400, gaps=20)
mytree <- rings()

## ----eval=FALSE---------------------------------------------------------------
# ?rings

## ----eval=FALSE---------------------------------------------------------------
# MCMCrings(its=5e4) # note that this run will take around half a minute

## -----------------------------------------------------------------------------
# The run's files will be put in this folder: trees/Ulandryk
#   |>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>| 100%
# Done running...
# Removed a burn-in of 1000
# Thinning the MCMC by storing every 55 iterations
# Age estimate: 2629.2 - 2619.2 cal BP (93.4%)
# deltaR: -2.5 - 19.5 (94.7%)

## ----eval=FALSE---------------------------------------------------------------
# set.seed(123)
# sim.strat()
# strat(its=2e5) # note that this run will take a few minutes

## -----------------------------------------------------------------------------
# The run's files will be put in this folder: strats/mystrat
#   |>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>| 100%
# Done running...
# Removed a burn-in of 100
# Thinning the MCMC by storing every 8 iterations
# 79.71% of the model's ages fit within the 95% hpd ranges of the dates,
# with worst-fitting date 2 (51.38%) and best-fitting date 4 (93.89%)
# Run took 3.17 minutes

## ----eval=FALSE, fig.width=4, fig.asp=1.3-------------------------------------
# set.seed(234)
# sim.strat()
# strat(burnin=0, thinning=1, internal.thinning=1, its=2000,
#   init.ages=rbind(seq(3000, 4000, length=5), rbind(seq(3010, 4010, length=5))))

## ----eval=FALSE, fig.width=4, fig.asp=1.3-------------------------------------
# strat("block_example", its=2e6, thinning=20, internal.thinning=20) # takes long to run

## ----eval=FALSE---------------------------------------------------------------
# strat("undated_example") # will need a longer run for reliable results (the example below used 600,000 iterations)

## ----fig.width=4, fig.asp=1.3-------------------------------------------------
set.seed(123)
sim.strat(n=5)
strat(its=1000, burnin=0, thinning=1, internal.thinning=1, show.progress=FALSE) # much too short
layout(1) # new plot
if(length(info$output) > 0) { # to avoid runs that produced no remaining iterations
  undated_1.5 <- ages.undated(1.5) # ages between positions 1 and 2
  summary(undated_1.5)
}

## ----eval=FALSE---------------------------------------------------------------
# strat("gaps_example") # will need a longer run for reliable results (the example below used 1 million iterations, followed by thinning using the thinner() function)

