## CDS.R test case for Norske Skogindustrier ASA (European company)

library(CDS)
## truth1 <- CDS(TDate = "2014-04-15",
##              maturity = "5Y",
##              parSpread = 2785.8889,
##              upfront = 4412500
##              currency = "EUR",
##              couponRate = 500,
##              recoveryRate = 0.40,
##              isPriceClean = FALSE,
##              notional = 1e7)

## save(truth1, file = "CDS.NorskeSkogindustrier.test.RData")

load("CDS.NorskeSkogindustrier.test.RData")
result1 <- CDS(TDate = "2014-04-15",
               maturity = "5Y",
               parSpread = 2785.8889,
               currency = "EUR",
               couponRate = 500,
               recoveryRate = 0.40,
               isPriceClean = FALSE,
               notional = 1e7)
stopifnot(all.equal(truth1, result1))