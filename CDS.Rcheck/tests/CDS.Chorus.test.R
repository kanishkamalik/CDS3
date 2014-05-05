## CDS.R test case for Chorus Ltd. (Australian company)

library(CDS)

## truth1 <- CDS(TDate = "2014-04-15",
##              maturity = "5Y",
##              parSpread = 243.28,
##              currency = "USD",
##              upfront = 650580,
##              couponRate = 100,
##              recoveryRate = 0.40,
##              isPriceClean = FALSE,
##              notional = 1e7)

## save(truth1, file = "CDS.Chorus.test.RData")

load("CDS.Chorus.test.RData")
result1 <- CDS(TDate = "2014-04-15",
               maturity = "5Y",
               parSpread = 243.28,
               upfront = 650580,
               currency = "USD",
               couponRate = 100,
               recoveryRate = 0.40,
               isPriceClean = FALSE,
               notional = 1e7)
stopifnot(all.equal(truth1, result1))