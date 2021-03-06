% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{microhaps}
\alias{microhaps}
\title{100 microhaplotype markers for a quick test data set}
\format{An object of class \code{tbl_df} (inherits from \code{tbl}, \code{data.frame}) with 378 rows and 7 columns.}
\usage{
microhaps
}
\description{
This was made by running some code in scratch/create-data.R.
See \code{\link{long_markers}} for more info about the columns.
Note that Chrom is a character here (since they are unmapped) and
are all the same.  Pos is actually ordered the way I want them to be.
That turns out to be necessary for proper sorting with \code{\link{reindex_markers}}.
}
\keyword{datasets}
