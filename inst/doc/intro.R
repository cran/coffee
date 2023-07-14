## ---- eval=FALSE--------------------------------------------------------------
#  install.packages('coffee')

## -----------------------------------------------------------------------------
library(coffee)

## ---- fig.width=4, fig.asp=1.3------------------------------------------------
sim.rings(age.start=1000, length=400, gaps=20)
mytree <- rings()

## ---- eval=FALSE--------------------------------------------------------------
#  ?rings

## ---- eval=FALSE--------------------------------------------------------------
#  set.seed(123)
#  sim.strat()
#  strat(its=7e5) # note that this run will take long!

## -----------------------------------------------------------------------------
# The run's files will be put in this folder: strats/mystrat
#   |>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>| 100%
# Done running...
# Removed a burn-in of 100
# Thinning the MCMC by storing every 40 iterations
# Mean overlap between calibrated and modelled dates 52.16%, ranging from 2.4% (date 2) to 59.2% (date 3)
# Run took 15.15 minutes

## ---- eval=FALSE, fig.width=4, fig.asp=1.3------------------------------------
#  set.seed(234)
#  sim.strat()
#  strat(burnin=0, thinning=1, internal.thinning=1, its=2000,
#    init.ages=rbind(seq(3000, 4000, length=5), rbind(seq(3010, 4010, length=5))))

## ---- eval=FALSE, fig.width=4, fig.asp=1.3------------------------------------
#  strat("block_example", its=2e6, thinning=20, internal.thinning=20)

## ---- eval=FALSE--------------------------------------------------------------
#  strat("undated_example") # will need a longer run for reliable results (the example below used 4 million iterations)

## ---- fig.width=4, fig.asp=1.3------------------------------------------------
sim.strat(n=5)
strat(its=100, burnin=0, thinning=1, internal.thinning=1) # much too short
undated_1.5 <- ages.undated(1.5) # positioned between positions 1 and 2
summary(undated_1.5)

## ---- eval=FALSE--------------------------------------------------------------
#  strat("gaps_example") # will need a longer run for reliable results (the example below used 1 million iterations)

