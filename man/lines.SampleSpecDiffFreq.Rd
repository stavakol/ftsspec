% Generated by roxygen2 (4.1.1.9000): do not edit by hand
% Please edit documentation in R/functional-spectral-density.R
\name{lines.SampleSpecDiffFreq}
\alias{lines.SampleSpecDiffFreq}
\title{Plotting function for \code{SampleSpecDiffFreq} class}
\usage{
\method{lines}{SampleSpecDiffFreq}(x, method = NA, Kmax = 4, pch = 20,
  ...)
}
\arguments{
\item{x}{object of the class \code{SampleSpecDiffFreq}}

\item{method}{method used to adjust p-values}

\item{Kmax}{maximum number of levels K for which the pvalues are plotted
(used only if autok==0)}

\item{pch}{the plot character to be used}

\item{...}{additional parameters to be passed to plot()}
}
\description{
Plotting function for \code{SampleSpecDiffFreq} class
}
\seealso{
\code{\link{Spec_compare_localize_freq}}
}

