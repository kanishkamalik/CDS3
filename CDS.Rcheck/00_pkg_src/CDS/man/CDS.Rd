\name{CDS}
\alias{CDS}
\title{Build a CDS class object to include relevant info about a CDS contract}
\usage{
CDS(contract = "SNAC", entityName = NULL, RED = NULL,
  TDate = Sys.Date(), baseDate = TDate, currency = "USD", types = NULL,
  rates = NULL, expiries = NULL, mmDCC = "ACT/360",
  fixedSwapFreq = "6M", floatSwapFreq = "3M", fixedSwapDCC = "30/360",
  floatSwapDCC = "ACT/360", badDayConvZC = "M", holidays = "None",
  valueDate = NULL, benchmarkDate = NULL, startDate = NULL,
  endDate = NULL, stepinDate = NULL, maturity = "5Y",
  dccCDS = "ACT/360", freqCDS = "Q", stubCDS = "F", badDayConvCDS = "F",
  calendar = "None", parSpread = NULL, couponRate, recoveryRate = 0.4,
  upfront = NULL, ptsUpfront = NULL, isPriceClean = FALSE,
  notional = 1e+07, payAccruedOnDefault = TRUE)
}
\arguments{
  \item{contract}{is the contract type, default SNAC}

  \item{TDate}{is when the trade is executed, denoted as T.
  Default is today.}

  \item{entityName}{is the name of the reference entity.
  Optional.}

  \item{parSpread}{CDS par spread in bps}

  \item{badDayConvZC}{is a character indicating how bad
  days are}

  \item{notional}{is the notional amount, default is 1e7.}

  \item{couponRate}{in bps}

  \item{badDayConvCDS}{refers to the bay day conversion for
  the CDS coupon payments. Default is "F", following.}

  \item{RED}{alphanumeric code assigned to the reference
  entity}

  \item{dccCDS}{day count convention of the CDS. The
  default is ACT/360.}

  \item{freqCDS}{date interval of the CDS contract}

  \item{maturity}{maturity of the CDS contract}

  \item{payAccruedOnDefault}{is a partial payment of the
  premium made to the protection seller in the event of a
  default. Default is TRUE.}

  \item{recoveryRate}{in decimal. Default is 0.4.}

  \item{baseDate}{is the start date for the IR curve.
  Default is TDate. baseDate <- "2011-03-04"}

  \item{currency}{in which CDS is denominated}

  \item{types}{is a string indicating the names of the
  instruments used for the yield curve. 'M' means money
  market rate; 'S' is swap rate.}

  \item{expiries}{is an array of characters indicating the
  maturity of each instrument.}

  \item{rates}{is an array of numeric values indicating the
  rate of each instrument.}

  \item{mmDCC}{is the day count convention of the
  instruments.}

  \item{fixedSwapFreq}{is the frequency of the fixed rate
  of swap being paid.}

  \item{floatSwapFreq}{is the frequency of the floating
  rate of swap being paid.}

  \item{fixedSwapDCC}{is the day count convention of the
  fixed leg.}

  \item{floatSwapDCC}{is the day count convention of the
  floating leg.}

  \item{holidays}{is an input for holiday files to adjust
  to in day}

  \item{stubCDS}{is a character indicating the presence of
  a stub}

  \item{calendar}{refers to any calendar adjustment for the
  CDS}

  \item{upfront}{upfront payment}

  \item{ptsUpfront}{basis points upfront}

  \item{valueDate}{is the date for which the present value
  of the CDS is calculated. aka cash-settle date. The
  default is T + 3.}

  \item{benchmarkDate}{Accrual begin date.}

  \item{startDate}{is when the CDS nomially starts in terms
  of premium payments, i.e. the number of days in the first
  period (and thus the amount of the first premium payment)
  is counted from this date. aka accrual begin date.}

  \item{endDate}{aka maturity date. This is when the
  contract expires and protection ends. Any default after
  this date does not trigger a payment.}

  \item{isPriceClean}{refers to the type of upfront
  calculated. It is boolean. When TRUE, calculate principal
  only. When FALSE, calculate principal + accrual.}

  \item{stepinDate}{default is T + 1.}
}
\description{
Build a CDS class object to include relevant info about a
CDS contract
}

