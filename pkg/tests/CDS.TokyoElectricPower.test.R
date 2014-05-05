## CDS.R test case for Tokyo Electric Power Co. Inc.

library(CDS)

truth1 <- data.frame(TDate = "2014-04-15",
                     maturity = "5Y",
                     contract ="STEC",
                     parSpread = 250.00,
                     upfront = 701502,
                     IRDV01 = -184.69,
                     price = 92.9,
                     principal = 709002,
                     RecRisk01 = -1061.74,
                     defaultExpo = 5790998,
                     spreadDV01 = 4448.92,
                     currency = "JPY",
                     ptsUpfront = 0.0709,
                     freqCDS = "Q",
                     pencouponDate = "2019-03-20",
                     backstopDate = "2014-02-14",
                     valueDate = "2014-04-15",
                     couponRate = 100,
                     recoveryRate = 0.35,
                     isPriceClean = FALSE,
                     defaultProb = 0.1830,
                     notional = 1e7)

save(truth1, file = "CDS.TokyoElectricPower.test.RData")

load("CDS.TokyoElectricPower.test.RData")
result1 <- CDS(TDate = "2014-04-15",
               maturity = "5Y",
               contract ="STEC",
               parSpread = 250,
               currency = "JPY",
               couponRate = 100,
               recoveryRate = 0.35,
               isPriceClean = FALSE,
               notional = 1e7)
stopifnot(all.equal(truth1, CDSdf(result1))