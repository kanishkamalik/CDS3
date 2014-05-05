## CDS.R test case for RadioShack Corp

library(CDS)

truth1 <- data.frame(TDate = "2014-04-15",
                     maturity = "5Y",
                     contract ="SNAC",
                     parSpread = 9106.8084,
                     upfront = 5612324,
                     IRDV01 = -361.62,
                     price = 43.5,
                     principal = 5649824,
                     RecRisk01 = -93430.52,
                     defaultExpo = 350176,
                     spreadDV01 = 40.86,
                     currency = "USD",
                     ptsUpfront = 0.5649,
                     freqCDS = "Q",
                     pencouponDate = "2019-03-20",
                     backstopDate = "2014-02-14",
                     valueDate = "2014-04-15",
                     couponRate = 500,
                     recoveryRate = 0.40,
                     isPriceClean = FALSE,
                     defaultProb = 0.9997,
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
stopifnot(all.equal(truth1, CDSdf(result1))