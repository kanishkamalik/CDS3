## CDS.R test case for Electrolux AB corporation

library(CDS)

truth1 <- data.frame(TDate = "2014-04-22",
                     maturity = "5Y",
                     contract ="STEC",
                     parSpread = 99,
                     upfront = -14368,
                     IRDV01 = 1.29,
                     price = 100,
                     principal = -4924,
                     RecRisk01 = 3.46,
                     defaultExpo = 6004924,
                     spreadDV01 = 4923.93,
                     currency = "EUR",
                     ptsUpfront = -0.00049239,
                     freqCDS = "Q",
                     pencouponDate = "2019-03-19",
                     backstopDate = "2014-02-21",
                     valueDate = "2014-04-22",
                     couponRate = 100,
                     recoveryRate = 0.40,
                     isPriceClean = FALSE,
                     defaultProb = 0.0827,
                     notional = 1e7)

save(truth1, file = "CDS.ElectroluxAB.test.RData")

load("CDS.ElectroluxAB.test.RData")
result1 <- CDS(TDate = "2014-04-22",
               maturity = "5Y", 
               parSpread = 99,
               contract ="STEC",
               couponRate = 100,
               recoveryRate = 0.4,
               isPriceClean = FALSE,
               notional = 1e7)
stopifnot(all.equal(truth1, CDSdf(result1)))