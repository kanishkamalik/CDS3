#' Function that uses the ISDA model to calculate the implied recovery rate 
#' for cases in which we have a spread and a probability of default (pd). 
#' This could take a dataframe of inputs and return a vector of the same 
#' length. If we have a data frame like: id,spread,pd which we pass into a 
#' function, this then returns a vector of implied default rates. Typical 
#' size for this dataframe is 500 rows.
#' 
#'
#' @param data dataframe containing the 1. probability of default (pd) over a 
#' a certain time period, 2. id and 3. spread
#' @param col.spread column number of spread
#' @param col.pd column number of probability of defaults (pd)
#' @param time is the period over which the pd is calculated. 
#' By default, it is 5 yrs
#' 
#' @return implied recovery rate in percentage based on the general approximation 
#' for a probability of default in the Bloomberg manual. The actual calculation uses 
#' a complicated bootstrapping process, so the results may be marginally different.
#' 

impliedRecoveryRate <- function(data, col.spread, col.pd, time = 5){
  spread <- data[, col.spread]
  pd <- data[, col.pd]
  impRecoveryRate = NULL
  ?lappl
  for (i in 1:nrow(data)){
    impRecoveryRate <- c(impRecoveryRate, 100+((spread[i]*time/1e2)*(1/log(1-pd[i]))))
  }
  return(impRecoveryRate)
}
