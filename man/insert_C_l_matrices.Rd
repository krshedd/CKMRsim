% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/genotypes_and_error.R
\name{insert_C_l_matrices}
\alias{insert_C_l_matrices}
\title{insert the matrix C_l into each element of the list of X_l matrices}
\usage{
insert_C_l_matrices(XL, ...)
}
\arguments{
\item{XL}{a list of the loci like that created using \code{\link{long_markers_to_X_l_list}}.
The key thing that each list component needs is the named vector freqs of the allele frequencies.
The functions that compute genotyping error use the names of the allele to compute the
probabilities of the observed genotype given the true genotype.}

\item{...}{extra arguments (after haps) to be passed to microhaplotype_geno_err_matrix
#' @examples
example(long_markers_to_X_l_list)
mh_cl_example <- insert_C_l_matrices(mh_example)}
}
\description{
After you have gotten the X_l matrices using \code{\link{long_markers_to_X_l_list}}
you can add to the component for each locus the matrix C_l which has, as its (s,t)-th
entry, the probability that the genotype t is observed given that the true genotype
is s. I am going to a add a lot more parameters to this as soon as I figure out how to
pass in genotyping error models and their associated parameters. I would like to do that in
a way that easily let's people define their own functions.  But for now it just
does the microhaplotype error model with default parameters.  This creates and inserts the
C_l_true matrix and also the C_l matrix.  C_l_true is the "true" genotyping error model results
and C_l is what gets applied in the likelihood calculations.
}
