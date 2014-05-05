## CDS.R test case for RadioShack Corp

library(CDS)

truth1 <- CDS(TDate = "2014-04-15",
              maturity = "5Y",
              parSpread = 9106.8084,
              currency = "USD",
              upfront = 5612324,
              couponRate = 500,
              recoveryRate = 0.40,
              isPriceClean = FALSE,
              notional = 1e7)

save(truth1, file = "CDS.RadioShack.test.RData")

load("CDS.RadioShack.test.RData")
result1 <- CDS(TDate = "2014-04-15",
               maturity = "5Y",
               parSpread = 9106.8084,
               currency = "USD",
               couponRate = 500,
               recoveryRate = 0.40,
               isPriceClean = FALSE,
               notional = 1e7)
stopifnot(all.equal(truth1, result1))