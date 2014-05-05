## CDS.R test case for Electrolux AB corporation

library(CDS)

##truth1 <- CDS(TDate = "2014-04-22",
##              maturity = "5Y",
##              parSpread = 99,
##              upfront = -14368,
##              couponRate = 100,
##              recoveryRate = 0.4,
##              isPriceClean = FALSE,
##              notional = 1e7)

## save(truth1, file = "CDS.ElectroluxAB.test.RData")

load("CDS.ElectroluxAB.test.RData")
result1 <- CDS(TDate = "2014-04-22",
               maturity = "5Y", 
               parSpread = 99,
               couponRate = 100,
               recoveryRate = 0.4,
               isPriceClean = FALSE,
               notional = 1e7)
stopifnot(all.equal(truth1, result1))