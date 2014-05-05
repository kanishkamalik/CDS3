## CDS.R test case for Xerox corporation

library(CDS)

truth1 <- data.frame(TDate = "2014-04-22",
                     maturity = "5Y",
                     contract ="SNAC",
                     parSpread = 105.8,
                     upfront = 18624,
                     IRDV01 = -7.36,
                     price = 99.72,
                     principal = 28068,
                     RecRisk01 = -20.85,
                     defaultExpo = 5971932,
                     spreadDV01 = 4825.49,
                     currency = "USD",
                     ptsUpfront = 0.0028,
                     freqCDS = "Q",
                     pencouponDate = "2019-03-20",
                     backstopDate = "2014-02-21",
                     valueDate = "2014-04-22",
                     couponRate = 100,
                     recoveryRate = 0.40,
                     isPriceClean = FALSE,
                     defaultProb = 0.0880,
                     notional = 1e7)

save(truth1, file = "CDS.Xerox.test.RData")

load("CDS.Xerox.test.RData")
result1 <- CDS(TDate = "2014-04-22",
               maturity = "5Y", 
               parSpread = 105.8,
               couponRate = 100,
               recoveryRate = 0.4,
               isPriceClean = FALSE,
               notional = 1e7)
stopifnot(all.equal(truth1, result1))