#' function to convert relevant slots in object of class CDS into a data frame
#'
#'@param object object of class CDS
#'@return returns data frame with relevant data from the CDS function

CDSdf <- function(object){
  CDSdf <- data.frame(TDate = object@TDate,
                      maturity = object@maturity,
                      contract = object@contract,
                      parSpread = object@parSpread,
                      upfront = object@upfront,
                      IRDV01 = object@IRDV01,
                      price = object@price,
                      principal = object@principal,
                      RecRisk01 = object@RecRisk01,
                      defaultExpo = object@defaultExpo,
                      spreadDV01 = object@spreadDV01,
                      currency = object@currency,
                      ptsUpfront = object@ptsUpfront,
                      freqCDS = object@freqCDS,
                      pencouponDate = object@pencouponDate,
                      backstopDate = object@backstopDate,
                      valueDate = object@valueDate,
                      couponRate = object@couponRate,
                      recoveryRate = object@recoveryRate,
                      isPriceClean = object@isPriceClean,
                      defaultProb = object@defaultProb,
                      notional = object@notional)
return(CDSdf)
}