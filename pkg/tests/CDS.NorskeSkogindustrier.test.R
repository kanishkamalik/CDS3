## CDS.R test case for Norske Skogindustrier ASA (European company)

library(CDS)

truth1 <- data.frame(TDate = "2014-04-15",
                     maturity = "5Y",
                     contract ="STEC",
                     parSpread = 2785.8889,
                     upfront = 4412500,
                     IRDV01 = -727.47,
                     price = 55.5,
                     principal = 4450000,
                     RecRisk01 = -56413.77,
                     defaultExpo = 1550000,
                     spreadDV01 = 731.48,
                     currency = "EUR",
                     ptsUpfront = 0.445,
                     freqCDS = "Q",
                     pencouponDate = "2019-03-20",
                     backstopDate = "2014-02-14",
                     valueDate = "2014-04-15",
                     couponRate = 500,
                     recoveryRate = 0.40,
                     isPriceClean = FALSE,
                     defaultProb = 0.9128,
                     notional = 1e7)

save(truth1, file = "CDS.NorskeSkogindustrier.test.RData")

load("CDS.NorskeSkogindustrier.test.RData")
result1 <- CDS(TDate = "2014-04-15",
               maturity = "5Y",
               contract ="STEC",
               parSpread = 2785.8889,
               currency = "EUR",
               couponRate = 500,
               recoveryRate = 0.40,
               isPriceClean = FALSE,
               notional = 1e7)
stopifnot(all.equal(truth1, CDSdf(result1))