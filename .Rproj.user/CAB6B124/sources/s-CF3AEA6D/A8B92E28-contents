#' Walk the user through the OAuth2 dance without a local webserver.
#'
#' This performs a similar function to \code{\link{oauth_listener}},
#' but without running a local webserver.  This manual process can be useful
#' in situations where the user is remotely accessing the machine outside a
#' browser (say via ssh) or when it's not possible to successfully receive a
#' callback (such as when behind a firewall).
#'
#' This function should generally not be called directly by the user.
#'
#' @param request_url the url to provide to the user
#' @export
#' @keywords internal
oauth_exchanger <- function(request_url) {
  BROWSE(request_url)

  authorization_code <- str_trim(readline("Enter authorization code: "))
  list(code = authorization_code)
}
