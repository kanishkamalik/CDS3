#' \code{Date-class} predefined in R
#' @name Date, Date-class
#' @aliases Date, Date-class
#' @docType class
#' @rdname Date
#' @export
#' 
setOldClass("Date", S4Class = "Date")



#' Class definition for the \code{CDS-Class}
#'
#' @slot contract type of contract
#' @slot TDate is when the trade is executed, denoted as T. Default is today.
#' @slot entityName is the name of the reference entity. Optional. 
#' @slot parSpread CDS par spread in bps 
#' @slot badDayConvZC is a character indicating how bad days are 
#' @slot notional is the notional amount, default is 1e7. 
#' @slot couponRate in bps 
#' @slot badDayConvCDS refers to the bay day conversion for the CDS
#'coupon payments. Default is "F", following. 
#' @slot RED alphanumeric code assigned to the reference entity 
#' @slot dccCDS day count convention of the CDS. The default is ACT/360. 
#' @slot freqCDS date interval of the CDS contract 
#' @slot maturity of the CDS contract 
#' @slot payAccruedOnDefault is a partial payment of the premium made to
#'the protection seller in the event of a default. Default is TRUE. 
#' @slot recoveryRate in decimal. Default is 0.4. 
#' @slot baseDate is the start date for the IR curve. Default is TDate. baseDate <-
#'"2011-03-04" 
#' @slot currency in which CDS is denominated 
#' @slot types is a string indicating the names of the instruments
#'used for the yield curve. 'M' means money market rate; 'S' is swap
#'rate. 
#' @slot expiries is an array of characters indicating the maturity
#'of each instrument. 
#' @slot rates is an array of numeric values indicating the rate of
#'each instrument. 
#' @slot mmDCC is the day count convention of the instruments. 
#' @slot fixedSwapFreq is the frequency of the fixed rate of swap
#'being paid. 
#' @slot floatSwapFreq is the frequency of the floating rate of swap
#'being paid. 
#' @slot fixedSwapDCC is the day count convention of the fixed leg. 
#' @slot floatSwapDCC is the day count convention of the floating leg. 
#' @slot holidays is an input for holiday files to adjust to in day 
#' @slot stubCDS is a character indicating the presence of a stub 
#' @slot calendar refers to any calendar adjustment for the CDS 
#' @slot upfront upfront payment 
#' @slot ptsUpfront basis points upfront 
#' @slot valueDate is the date for which the present value of the CDS
#'is calculated. aka cash-settle date. The default is T + 3. 
#' @slot benchmarkDate Accrual begin date. 
#' @slot startDate is when the CDS nomially starts in terms of
#'premium payments, i.e. the number of days in the first period (and
#'thus the amount of the first premium payment) is counted from this
#'date. aka accrual begin date. 
#' @slot endDate aka maturity date. This is when the contract expires
#'and protection ends. Any default after this date does not trigger a
#'payment. 
#' @slot isPriceClean refers to the type of upfront calculated. It is
#'boolean. When TRUE, calculate principal only. When FALSE, calculate
#'principal + accrual. 
#' @slot stepinDate default is T + 1. 
#' 
#' 
#' @name CDS, CDS-class
#' @aliases CDS, CDS-class
#' @docType class
#' @rdname CDS-class
#' @export
#' 




setClass("CDS",
    representation = representation(
    contract = "character",
    entityName = "character",
    RED = "character",
    TDate = "Date",
    baseDate = "Date",
    currency = "character",
    types = "character",
    rates = "numeric",
    expiries = "character",
    mmDCC = "character",
    fixedSwapFreq = "character",
    floatSwapFreq = "character",
    fixedSwapDCC = "character",
    floatSwapDCC = "character",
    badDayConvZC = "character",
    holidays = "character",
    valueDate = "Date",
    benchmarkDate = "Date",
    startDate = "Date",
    endDate = "Date",
    stepinDate = "Date",
    backstopDate = "Date",
    firstcouponDate = "Date",
    pencouponDate = "Date",
    maturity = "character",
    dccCDS = "character",
    freqCDS ="character",
    stubCDS ="character",
    badDayConvCDS ="character",
    calendar = "character", 
    parSpread = "numeric",
    couponRate = "numeric",
    recoveryRate = "numeric",
    isPriceClean = "logical",
    notional = "numeric",
    payAccruedOnDefault = "logical",
    principal = "numeric",
    accrual = "numeric",
    upfront = "numeric",
    ptsUpfront = "numeric",
    spreadDV01 = "numeric",
    IRDV01 = "numeric",
 RecRisk01 = "numeric",
 defaultProb = "numeric",
 defaultExpo = "numeric",
 price = "numeric"
 ),
 prototype = prototype(
 contract = character(),
 entityName = character(),
 RED = character(),
 TDate = character(),
 baseDate = character(),
 currency = character(),
 types = character(),
 rates = numeric(),
 expiries = character(),
 mmDCC = character(),
 fixedSwapFreq = character(),
 floatSwapFreq = character(),
 fixedSwapDCC = character(),
 floatSwapDCC = character(),
 badDayConvZC = character(),
 holidays = character(),
 valueDate = character(),
 benchmarkDate = character(),
 startDate = character(),
 endDate = character(),
 stepinDate = character(),
 backstopDate = character(),
 firstcouponDate = character(),
 pencouponDate = character(),
 maturity = character(),
 dccCDS = character(),
 freqCDS =character(),
 stubCDS =character(),
 badDayConvCDS =character(),
 calendar = character(),
 parSpread = numeric(),
 couponRate = numeric(),
 recoveryRate = numeric(),
 isPriceClean = logical(),
 notional = numeric(),
 payAccruedOnDefault = logical(),
 principal = numeric(),
 accrual = numeric(),
 upfront = numeric(),
 ptsUpfront = numeric(),
 spreadDV01 = numeric(),
 IRDV01 = numeric(),
 RecRisk01 = numeric(),
 defaultProb = numeric(),
 defaultExpo = numeric(),
 price = numeric()
 )
 )

