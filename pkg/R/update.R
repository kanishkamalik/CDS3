#' update spread or ptsUpfront or upfront based on a new CDS class object.
#'
#' @param object is a CDS class object.
#' @param upfront is the new upfront payment amount.
#' @param ptsUpfront is the new pts upfront. It's in decimal.
#' @param spread is the new spread in bps.
#' @param isPriceClean refers to the type of upfront calculated. It is
#' boolean. When TRUE, calculate principal only. When FALSE, calculate
#' principal + accrual.
#' @return a CDS class object
#'
#' 



setMethod("update",
          signature(object = "CDS"),
          function(object,
                   upfront = NULL,
                   isPriceClean = FALSE,
                   ptsUpfront = NULL,
                   spread = NULL,
                   ...){

              if ((as.numeric(!is.null(upfront)) + 
                   as.numeric(!is.null(ptsUpfront)) + 
                   as.numeric(!is.null(spread))) > 1)
                  stop ("Please only update one option -- upfront, ptsUpfront or spread")
              
              if (!is.null(upfront)){
                  newSpread <- NULL
                  newUpfront <- upfront
                  newPtsUpfront <- NULL
              } else if (!is.null(ptsUpfront)){
                  newSpread <- NULL
                  newUpfront <- NULL
                  newPtsUpfront <- ptsUpfront
              } else if (!is.null(spread)){
                  newSpread <- spread
                  newUpfront <- NULL
                  newPtsUpfront <- NULL
              }
                  newCDS <- CDS(object@contract,
                                object@entityName,
                                object@RED,
                                object@TDate,
                                object@baseDate,
                                object@currency,
                                object@types,
                                object@rates,
                                object@expiries,
                                object@mmDCC, 
                                object@fixedSwapFreq,
                                object@floatSwapFreq,
                                object@fixedSwapDCC,
                                object@floatSwapDCC,
                                object@badDayConvZC,
                                object@holidays,
                                object@valueDate,
                                object@benchmarkDate,
                                object@startDate,
                                object@endDate,
                                object@stepinDate,
                                object@maturity,
                                object@dccCDS,
                                object@freqCDS,
                                object@stubCDS,
                                object@badDayConvCDS,
                                object@calendar,
                                newSpread,
                                object@couponRate,
                                object@recoveryRate,
                                newUpfront,
                                newPtsUpfront, 
                                isPriceClean,
                                object@notional,
                                object@payAccruedOnDefault)
                  
                  return(newCDS)

          }
          )
