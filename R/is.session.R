#' Verify that the \code{session} object is valid.
#'
#' @param sess A list representing a task fMRI session (see Details)
#' @return True if all checks pass, or an (hopefully useful) error message
#' @export
#'
#' @details A valid "session" object is a list with the following named fields
#' - BOLD: T x V matrix of BOLD responses, rows are time points, columns are voxels
#' - design: T x K matrix containing the K task regressors
#' - nuisance (optional): T x L matrix containing the L nuisance regressors
#'
#'
is.session <- function(sess){

    ## check number of fields
    num_fields <- length(sess)

    ## BOLD, design, nuisance
    if(num_fields == 3){

        ## check identities of fields
        fields = c('BOLD','design','nuisance')
        if(! all.equal(names(sess),fields)){stop(
            paste0('You are missing the following fields',setdiff(names(sess),fields)))}

        ## check each field's type
        if(! (is.numeric(sess$BOLD))){stop('I expected BOLD to be numeric, but it is not')}
        if(! (is.matrix(sess$BOLD))){stop('I expected BOLD to be a matrix, but it is not')}

        if(! (is.matrix(sess$design))){stop('I expected design to be a matrix, but it is not')}
        if(! (is.matrix(sess$design))){stop('I expected design to be a matrix, but it is not')}

        if(! (is.matrix(sess$nuisance))){stop('I expected nuisance to be a matrix, but it is not')}
        if(! (is.matrix(sess$nuisance))){stop('I expected nuisance to be a matrix, but it is not')}

        ## check the dimensions of each field: T
        if(nrow(sess$BOLD) != nrow(sess$design)){stop("BOLD and design don't have the same number of rows (time points)")}
        if(nrow(sess$BOLD) != nrow(sess$nuisance)){stop("BOLD and nuisance don't have the same number of rows (time points)")}
        if(nrow(sess$design) != nrow(sess$nuisance)){stop("design and nuisance don't have the same number of rows (time points)")}

    ## BOLD, design
    } else if (num_fields==2){

        ## check identities of fields
        fields = c('BOLD','design')
        if(! all.equal(names(sess),fields)){stop(
            paste0('You are missing the following fields',setdiff(names(sess),fields)))}

        ## check each field's type
        if(! (is.numeric(sess$BOLD))){stop('I expected BOLD to be numeric, but it is not')}
        if(! (is.matrix(sess$BOLD))){stop('I expected BOLD to be a matrix, but it is not')}

        if(! (is.matrix(sess$design))){stop('I expected design to be a matrix, but it is not')}
        if(! (is.matrix(sess$design))){stop('I expected design to be a matrix, but it is not')}

        ## check the dimensions of each field: T
        if(nrow(sess$BOLD) != nrow(sess$design)){stop("BOLD and design don't have the same number of rows (time points)")}

    } else {
        stop('I expected the session to have 2 or 3 fields, but it does not.')
    }

    return(TRUE)
}
