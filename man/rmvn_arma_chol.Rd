% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{rmvn_arma_chol}
\alias{rmvn_arma_chol}
\title{A function for sampling from conditional multivariate normal distributions with mean A^{-1}b and covariance matrix A^{-1}.}
\usage{
rmvn_arma_chol(A_chol, b)
}
\arguments{
\item{A_chol}{\code{A} A \eqn{d \times d} \code{matrix} for the Gaussian full conditional distribution precision matrix Cholesky factor.}

\item{b}{\code{b} A \eqn{d} \code{vector} for the Gaussian full conditional distribution mean.}
}
\description{
A function for sampling from conditional multivariate normal distributions with mean A^{-1}b and covariance matrix A^{-1}.
}
\examples{
set.seed(111)
A <- diag(4)
A_chol <- chol(A)
b <- rnorm(4)
sample <- rmvn_arma_chol(A_chol, b)

}
