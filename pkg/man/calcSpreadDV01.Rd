\name{calcSpreadDV01}
\alias{calcSpreadDV01}
\title{Calculate the spread DV01 from conventional spread}
\usage{
calcSpreadDV01(object = NULL, TDate, baseDate = TDate, currency = "USD",
  types = NULL, rates = NULL, expiries = NULL, mmDCC = "ACT/360",
  fixedSwapFreq = "6M", floatSwapFreq = "3M", fixedSwapDCC = "30/360",
  floatSwapDCC = "ACT/360", badDayConvZC = "M", holidays = "None",
  valueDate = NULL, benchmarkDate = NULL, startDate = NULL,
  endDate = NULL, stepinDate = NULL, maturity = "5Y",
  dccCDS = "ACT/360", freqCDS = "1Q", stubCDS = "F",
  badDayConvCDS = "F", calendar = "None", parSpread, couponRate,
  recoveryRate = 0.4, isPriceClean = FALSE, payAccruedOnDefault = TRUE,
  notional = 1e+07)
}
\arguments{
  \item{object}{is the \code{CDS} class object.}

  \item{TDate}{is the trade date.}

  \item{baseDate}{is the start date for the IR curve.
  Default is TDate. baseDate <- "2011-03-04"}

  \item{currency}{is the currency of the CDS. Default is
  USD.}

  \item{types}{is the types of instruments}

  \item{rates}{is the array of rates of the instruments
  used to build the IR curve}

  \item{payAccruedOnDefault}{is a partial payment of the
  premium made to the protection seller in the event of a
  default. Default is TRUE.}

  \item{expiries}{is an array of characters indicating the
  maturity of each instrument. The number of characters in
  \code{types}, the number of elements in \code{rates}, and
  the number of elements in \code{expiries} must be the
  same.}

  \item{mmDCC}{a character detailing the DCC of the MM
  instruments for the IR curve}

  \item{fixedSwapFreq}{is the frequency of the fixed rate
  of swap being paid.}

  \item{floatSwapFreq}{is the frequency of the floating
  rate of swap being paid.}

  \item{fixedSwapDCC}{is the day count convention of the
  fixed leg.}

  \item{floatSwapDCC}{is the day count convention of the
  floating leg.}

  \item{badDayConvZC}{is a character indicating how bad
  days are adjusted. 'M' stands for 'modified following';
  'F' stands for 'following'.}

  \item{holidays}{is an input for holiday files to adjust
  to in day counting. Default is 'None'.}

  \item{valueDate}{is the date for which the present value
  of the CDS is calculated. aka cash-settle date. The
  default is T + 3 bus days.}

  \item{benchmarkDate}{Accrual begin date.}

  \item{startDate}{is when the CDS nomially starts in terms
  of premium payments, i.e. the number of days in the first
  period (and thus the amount of the first premium payment)
  is counted from this date. aka accrual begin date.}

  \item{endDate}{aka maturity date. This is when the
  contract expires and protection ends. Any default after
  this date does not trigger a payment.}

  \item{stepinDate}{aka protection effective date. It's
  when protection and risk starts in terms of the model.
  Note the legal effective date is T-60 or T-90 for
  standard contract. The default is T + 1 bus day.}

  \item{maturity}{is the maturity of the CDS contract.
  Default is "5Y". It has to be in the format of "NM" or
  "NY" where "N" is a digit, "M" refers to months, and "Y"
  refers to years.}

  \item{dccCDS}{is the dcc of the CDS contract. Default is
  "ACT/360".}

  \item{freqCDS}{is the frequency of the coupon payments
  being made. Default is "1Q", quarterly payments.}

  \item{stubCDS}{is a character indicating the presence of
  a stub payment. Default is F.}

  \item{badDayConvCDS}{refers to the bay day conversion for
  the CDS coupon payments. Default is "F", following.}

  \item{calendar}{refers to any calendar adjustment for the
  CDS contract. Default is "None".}

  \item{parSpread}{in bps. It is the spread that the deal
  was initially struck at.}

  \item{couponRate}{in bps.}

  \item{recoveryRate}{in decimal. Default is 0.4.}

  \item{isPriceClean}{refers to the type of upfront
  calculated. It is boolean. When TRUE, calculate principal
  only. When FALSE, calculate principal + accrual.}

  \item{notional}{is the notional amount. Default 1e7.}
}
\value{
a numeric indicating the change in upfront when there is a
1 bp increase of the trade spread.
}
\description{
Calculate the spread DV01 from conventional spread
}

