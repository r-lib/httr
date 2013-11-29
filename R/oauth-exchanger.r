#' Walk the user through the OAuth2 dance without a local webserver.
#'
#' This performs a similar function to \code{\link{oauth_listener}},
#' but without trying do open a browser or start a local webserver.
#' This manual process can be useful in situations where the user is
#' remotely accessing the machine outside a browser (say via ssh) or
#' when it's not possible to successfully receive a callback (such as
#' when behind a firewall).
#'
#' This function should generally not be called directly by the user.
#'
#' @param request_url the url to provide to the user
#' @export
#' @keywords internal
oauth_exchanger <- function(request_url) {
  message("Please point your browser to the following url: ")
  message("")
  message("  ", request_url)
  message("")
  authorization_code <- str_trim(readline("Enter authorization code: "))
  info <- list(code = authorization_code)
  info
}
