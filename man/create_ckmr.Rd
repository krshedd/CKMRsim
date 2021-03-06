% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/create_ckmr.R
\name{create_ckmr}
\alias{create_ckmr}
\title{prepare to simulate pairwise relationships from locus data}
\usage{
create_ckmr(D, kappa_matrix = kappas[c("MZ", "PO", "FS", "HS", "U"), ])
}
\arguments{
\item{D}{a data frame in the format of \code{\link{long_markers}}.  Monomorphic loci should have
been removed and the whole thing run through \code{\link{reindex_markers}} before passing it
to this function.}

\item{kappa_matrix}{A matrix like that in the supplied data \code{\link{kappas}}.  It should have
three columns, and rownames giving the abbreviated name of the pairwise relationship.  Each row
is a three-vector which are the Cotterman coefficients for the relationship. The first element is the
probability that the pair shares 0 gene copies IBD, the second is the prob that they share 1 gene
copy IBD, and the third is the prob that they share 2 gene copies IBD, all assuming no inbreeding.
By default, this just uses the "MZ", "PO", "FS", "HS", and "U" rows from \code{\link{kappas}}.}
}
\description{
Starting from a data frame of marker information like that
in \code{\link{microhaps}} or \code{\link{long_markers}}. This
function takes care of all the calculations necessary to simulate
log-likelihood ratios of genotypes given different pairwise relationships.
}
\section{TODO  GOTTA INCORPORATE SPECIFICATION OF THE TRUE AND THE ASSUMED GTYP ERROR MODEL}{
NA
}

