## CDS.R test case for Texas Competitive Electric Holding Co LLC

library(CDS)

## truth1 <- CDS(TDate = "2014-04-15",
##               maturity = "5Y",
##               upfront = 9290681,
##               currency = "USD",
##               couponRate = 500,
##               recoveryRate = 0.40,
##               isPriceClean = FALSE,
##               notional = 1e7)

## save(truth1, file = "CDS.TexasCompElHolding.test.RData")

truth1 <- CDS(TDate = "2014-04-15",
               maturity = "5Y",
               upfront = 9290681,
               currency = "USD",
               couponRate = 500,
               recoveryRate = 0.40,
               isPriceClean = FALSE,
               notional = 1e7)

save(truth1, file = "CDS.TexasCompElHolding.test.RData")



load("CDS.TexasCompElHolding.test.RData")
result1 <- CDS(TDate = "2014-04-15",
               maturity = "5Y",
               upfront = 93.28180695,
               currency = "USD",
               couponRate = 500,
               recoveryRate = 0.40,
               isPriceClean = FALSE,
               notional = 1e7)
stopifnot(all.equal(truth1, result1))