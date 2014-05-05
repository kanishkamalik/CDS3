pkgname <- "CDS"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
library('CDS')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
cleanEx()
nameEx("calcUpfront")
### * calcUpfront

flush(stderr()); flush(stdout())

### Name: calcUpfront
### Title: Calculate dirty upfront payments from conventional spread
### Aliases: calcUpfront

### ** Examples

upf <- calcUpfront(baseDate = "2014-01-13", currency = "USD", TDate
= "2014-01-14", maturity = "5Y", dccCDS = "ACT/360", freqCDS = "Q",
stubCDS = "F", badDayConvCDS = "F", calendar = "None", parSpread =
32, couponRate = 100, recoveryRate = 0.4, isPriceClean = FALSE,
notional = 1e7)



### * <FOOTER>
###
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
