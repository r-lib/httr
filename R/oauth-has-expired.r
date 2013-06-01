#' Check if an OAuth 2.0 access token has past its use by.
#'
#' @param access_token the access token to check use_by of
#' @param margin the number of seconds before use_by to use as the expiration threshold (default of 5 seconds)
#' @family OAuth
#' @export
oauth2.0_has_expired <- function(access_token, margin = 30) {
  stopifnot(
    length(access_token$use_by) == 1
  )
  (access_token$use_by - margin) < Sys.time()
}
