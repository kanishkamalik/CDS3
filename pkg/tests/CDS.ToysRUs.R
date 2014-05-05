## CDS.R test case for Toys R Us Inc

library(CDS)

truth1 <- data.frame(TDate = "2014-04-15",
                     maturity = "5Y",
                     contract ="SNAC",
                     parSpread = 1737.7289,
                     upfront = 3237500,
                     IRDV01 = -648.12,
                     price = 67.25,
                     principal = 3275000,
                     RecRisk01 = -30848.67,
                     defaultExpo = 2725000,
                     spreadDV01 = 1580.31,
                     currency = "USD",
                     ptsUpfront = 0.3275,
                     freqCDS = "Q",
                     pencouponDate = "2019-03-20",
                     backstopDate = "2014-02-14",
                     valueDate = "2014-04-15",
                     couponRate = 500,
                     recoveryRate = 0.40,
                     isPriceClean = FALSE,
                     defaultProb = 0.7813,
                     notional = 1e7)

save(truth1, file = "CDS.ToysRUs.test.RData")

load("CDS.ToysRUs.test.RData")
result1 <- CDS(TDate = "2014-04-15",
               maturity = "5Y",
               parSpread = 1737.7289,
               currency = "USD",
               couponRate = 500,
               recoveryRate = 0.40,
               isPriceClean = FALSE,
               notional = 1e7)
stopifnot(all.equal(truth1, CDSdf(result1))