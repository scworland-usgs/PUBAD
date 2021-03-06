% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getFlowStats.R
\name{getFlowStats}
\alias{getFlowStats}
\title{Collect the estiamted and observed streamflow statistics.}
\usage{
getFlowStats(modelOutput, zero.val = 0.001, cens.level = 0.005,
  min.obs = 0.01)
}
\arguments{
\item{modelOutput}{A list of model results, in the format returned by
\code{\link{estDAR}} or \code{\link{estQPPQ}}.}

\item{zero.val}{(optional) The censoring value used to indicate a
censored streamflow value.  The default is \code{0.001}.}

\item{cens.level}{(optional) The value below which a streamflow value is
considered censored.  (Rounded down rather than up.)  The default is
\code{0.005}.}

\item{min.obs}{(optional) The minimum non-censored value of streamflow.
The default is \code{0.01}.}
}
\value{
A list of two elements:
\item{Obs}{A data frame of streamflow statistics derived from observed
time series.}
\item{Est}{A data frame of streamflow statistics derived from estimated
time series.}
}
\description{
The function \code{getFlowStats} collects a wide array of streamflow
statistics for observed and modeled streamflow time series.
}
\details{
See \code{\link{calcFlowStats}} for a list of statistics calculated.
}
