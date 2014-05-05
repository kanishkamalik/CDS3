## CDS.R test case for Caesars Entertainment Operating Co Inc

library(CDS)

truth1 <- data.frame(TDate = "2014-04-15",
              maturity = "5Y",
              contract ="SNAC",
              parSpread = 12354.53,
              upfront = 5707438,
              IRDV01 = -271.18,
              price = 42.55,
              principal = 5744938,
              RecRisk01 = -95430.32,
              defaultExpo = 255062,
              spreadDV01 = 21.15,
              currency = "USD",
              ptsUpfront = 0.5745,
              freqCDS = "Q",
              pencouponDate = "2019-03-20",
              backstopDate = "2014-02-14",
              valueDate = "2014-04-15",
              couponRate = 500,
              recoveryRate = 0.40,
              isPriceClean = FALSE,
              defaultProb = 1.000,
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

stopifnot(all.equal(truth1, CDSdf(result1)))