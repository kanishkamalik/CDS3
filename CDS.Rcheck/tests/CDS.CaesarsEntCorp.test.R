## CDS.R test case for Caesars Entertainment Operating Co Inc

library(CDS)

truth1 <- list(TDate = "2014-04-15",
              maturity = "5Y",
              parSpread = 12354.529,
              upfront = 5707438,
              
              currency = "USD",
              couponRate = 500,
              recoveryRate = 0.40,
              isPriceClean = FALSE,
              notional = 1e7)

save(truth1, file = "CDS.CaesarsEntCorp.test.RData")

load("CDS.CaesarsEntCorp.test.RData")
result1 <- CDS(TDate = "2014-04-15",
               maturity = "5Y",
               parSpread = 12354.529,
               currency = "USD",
               couponRate = 500,
               recoveryRate = 0.40,
               isPriceClean = FALSE,
               notional = 1e7)
stopifnot(all.equal(truth1, result1))