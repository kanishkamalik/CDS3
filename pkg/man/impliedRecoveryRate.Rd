\name{impliedRecoveryRate}
\alias{impliedRecoveryRate}
\title{Function that uses the ISDA model to calculate the implied recovery rate
for cases in which we have a spread and a probability of default (pd).
This could take a dataframe of inputs and return a vector of the same
length. If we have a data frame like: id,spread,pd which we pass into a
function, this then returns a vector of implied default rates. Typical
size for this dataframe is 500 rows.}
\usage{
impliedRecoveryRate(data, col.spread, col.pd, col.id, time = 5)
}
\arguments{
  \item{data}{dataframe containing the 1. probability of
  default (pd) over a a certain time period, 2. id and 3.
  spread}

  \item{col.spread}{column number of spread}

  \item{col.pd}{column number of probability of defaults
  (pd)}

  \item{time}{is the period over which the pd is
  calculated. By default, it is 5 yrs}

  \item{col.id}{is the column for the id of the CDS}
}
\value{
implied recovery rate in percentage based on the general
approximation for a probability of default in the Bloomberg
manual. The actual calculation uses a complicated
bootstrapping process, so the results may be marginally
different.
}
\description{
Function that uses the ISDA model to calculate the implied
recovery rate for cases in which we have a spread and a
probability of default (pd). This could take a dataframe of
inputs and return a vector of the same length. If we have a
data frame like: id,spread,pd which we pass into a
function, this then returns a vector of implied default
rates. Typical size for this dataframe is 500 rows.
}

