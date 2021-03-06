% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{pairwise_geno_id}
\alias{pairwise_geno_id}
\title{Return every pair of individuals that mismatch at no more than max_miss loci}
\usage{
pairwise_geno_id(S, max_miss)
}
\arguments{
\item{S}{"source", a matrix whose rows are integers, with NumInd-source rows and NumLoci columns, with each
entry being a a base-0 representation of the genotype of the c-th locus at the r-th individual.
These are the individuals you can think of as parents if there is directionality to the
comparisons.  Missing data is denoted by -1 (or any integer < 0).}

\item{max_miss}{maximum allowable number of mismatching genotypes betwen the pairs.}
}
\value{
a data frame with columns:
\describe{
  \item{ind1}{the base-1 index in S of the first individual of the pair}
  \item{ind2}{the base-1 index in S of the second individual of the pair}
  \item{num_mismatch}{the number of loci at which the pair have mismatching genotypes}
  \item{num_loc}{the total number of loci missing in neither individual}
}
}
\description{
This is used for identifying duplicate individuals/genotypes in large
data sets. I've specified this in terms of the max number of missing loci because
I think everyone should already have tossed out individuals with a lot of
missing data, and then it makes it easy to toss out pairs without even
looking at all the loci, so it is faster for all the comparisons.
}
