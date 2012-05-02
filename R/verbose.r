#' Give verbose output.
#' 
#' A verbose connection provides much more information about the flow of
#' information between the client and server.
#'
#' @family config
#' @export
#' @examples
#' b <- new_bin()
#' GET(b, verbose())
verbose <- function() config(verbose = TRUE)
