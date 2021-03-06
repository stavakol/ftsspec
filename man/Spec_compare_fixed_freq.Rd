% Generated by roxygen2 (4.1.1.9000): do not edit by hand
% Please edit documentation in R/functional-spectral-density.R
\name{Spec_compare_fixed_freq}
\alias{Spec_compare_fixed_freq}
\title{Test if two spectral density operators at  some  fixed frequency are equal.}
\usage{
Spec_compare_fixed_freq(spec1, spec2, is.pi.multiple, m, kappa.square,
  autok = 2, K.fixed = NA)
}
\arguments{
\item{spec1,spec2}{The two sample spectral densities (at the same frequency \eqn{\omega}) to be compared.}

\item{is.pi.multiple}{A logical variable, to specify if \eqn{\omega = {0, \pi}} or not.}

\item{m}{The number of Fourier frequencies over which the periodogram
operator was smoothed.}

\item{kappa.square}{the L2-norm of the weight function used to estimate the
spectral density operator}

\item{autok}{A variable used to specify if (and which) pseudo-AIC criterion
is used to select the truncation parameter \eqn{K}.}

\item{K.fixed}{The value of K used if \code{autok=0}.}
}
\description{
A test for the null hypothesis that two spectral density operators (at the
same frequency \eqn{\omega}) are equal, using a pseudo-AIC criterion for the
choice of the truncation parameter. (used in
\code{\link{Spec_compare_localize_freq}})
}
\examples{
ma.scale2=ma.scale1=c(-1.4,2.3,-2)
ma.scale2[3] = ma.scale1[3]+.3
a1=Generate_filterMA(10, 10, MA.len=3, ma.scale=ma.scale1)
a2=Generate_filterMA(10, 10, MA.len=3, ma.scale=ma.scale2)
X=Simulate_new_MA(a1, T.len=512, noise.type='wiener')
Y=Simulate_new_MA(a2, T.len=512, noise.type='wiener')
spec.X = Spec(X)
spec.Y = Spec(Y)
Spec_compare_fixed_freq(spec.X$spec[1,,], spec.Y$spec[1,,],
is.pi.multiple=TRUE, spec.X$m, spec.X$kappa.square)
}
\references{
\cite{Tavakoli, Shahin and Panaretos, Victor M. "Detecting and Localizing Differences in Functional Time Series Dynamics: A Case Study in Molecular Biophysics", 2014, under revision}

\cite{Panaretos, Victor M., David Kraus, and John H. Maddocks.
"Second-order comparison of Gaussian random functions and the geometry of
DNA minicircles." Journal of the American Statistical Association 105.490
(2010): 670-682.}
}
\seealso{
\code{\link{Spec_compare_localize_freq}}
}

