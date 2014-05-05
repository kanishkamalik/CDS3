## CDS.R test case for Chorus Ltd. (Australian company)

library(CDS)

truth1 <- data.frame(TDate = as.Date("2014-04-15"),
                     maturity = "5Y",
                     contract ="SNZC",
                     parSpread = 243.28,
                     upfront = 650580,
                     IRDV01 = -169.33,
                     price = 93.42,
                     principal = 658080,
                     RecRisk01 = -1106.34,
                     defaultExpo = 5341920,
                     spreadDV01 = 4318.34,
                     currency = "AUD",
                     ptsUpfront = 0.065808,
                     freqCDS = "Q",
                     pencouponDate = "2019-03-20",
                     backstopDate = "2014-02-14",
                     valueDate = "2014-04-15",
                     couponRate = 100,
                     recoveryRate = 0.40,
                     isPriceClean = FALSE,
                     defaultProb = 0.1915,
                     notional = 1e7)

save(truth1, file = "CDS.Chorus.test.RData")

load("CDS.Chorus.test.RData")
result1 <- CDS(TDate = "2014-04-15",
               maturity = "5Y",
               contract ="SNZC",
               parSpread = 243.28,
               currency = "AUD",
               couponRate = 100,
               recoveryRate = 0.40,
               isPriceClean = FALSE,
               notional = 1e7)
stopifnot(all.equal(truth1, CDSdf(result1)))