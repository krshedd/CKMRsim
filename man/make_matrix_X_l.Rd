% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{make_matrix_X_l}
\alias{make_matrix_X_l}
\title{compute the matrix X_l given allele frequencies and kappa}
\usage{
make_matrix_X_l(p, kappa)
}
\arguments{
\item{p}{vector of allele frequencies}

\item{kappa}{a 3-vector of the Cotterman coefficients}
}
\description{
Ha! I did this initially using R straight up and even tried to make
it reasonably vectorized, but the damn thing took forever and was
incredible space-inefficient. Ergo, we are going after it using
Rcpp.  The genotypes are ordered in rows and columns in the way
as described in the paper.
}
