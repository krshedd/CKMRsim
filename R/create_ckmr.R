
#' prepare to simulate pairwise relationships from locus data
#'
#' Starting from a data frame of marker information like that
#' in \code{\link{microhaps}} or \code{\link{long_markers}}. This
#' function takes care of all the calculations necessary to simulate
#' log-likelihood ratios of genotypes given different pairwise relationships.
#' @param  D a data frame in the format of \code{\link{long_markers}}.  Monomorphic loci should have
#' been removed and the whole thing run through \code{\link{reindex_markers}} before passing it
#' to this function.
#' @param kappa_matrix  A matrix like that in the supplied data \code{\link{kappas}}.  It should have
#' three columns, and rownames giving the abbreviated name of the pairwise relationship.  Each row
#' is a three-vector which are the Cotterman coefficients for the relationship. The first element is the
#' probability that the pair shares 0 gene copies IBD, the second is the prob that they share 1 gene
#' copy IBD, and the third is the prob that they share 2 gene copies IBD, all assuming no inbreeding.
#' By default, this just uses the "MZ", "PO", "FS", "HS", and "U" rows from \code{\link{kappas}}.
#' @export
#' @section TODO  GOTTA INCORPORATE SPECIFICATION OF THE TRUE AND THE ASSUMED GTYP ERROR MODEL
create_ckmr <- function(D, kappa_matrix = kappas[c("MZ", "PO", "FS", "HS", "U"), ]) {
  # read in the "linked mhaps" but treat them as unlinked
  mhlist <- long_markers_to_X_l_list(D = D,
                                     kappa_matrix = kappa_matrix)

  # add the matrices that account for genotyping error
  mhlist2 <- insert_C_l_matrices(mhlist,
                                 snp_err_rates = 0.005,
                                 scale_by_num_snps = TRUE)

  # do the matrix multiplication that gives the Y_l matrices
  mhlist3 <- insert_Y_l_matrices(mhlist2)

  # put the original data back on there
  ret <- list(orig_data = D, loci = mhlist3)

  ckmr_class(ret)

}
