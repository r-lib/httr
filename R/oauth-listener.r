#' Create a webserver to listen for OAuth callback.
#'
#' This opens a web browser pointing to \code{request_url}, and opens a
#' webserver on port 1410 to listen to the reponse.  The redirect url for
#' should be either set previously (during the OAuth authentication) dance
#' or supplied as a parameter to the url.  See \code{\link{oauth1.0_token}}
#' and \code{\link{oauth2.0_token}} for examples of both techniques.
#'
#' This function should not normally be called directly by the user.
#'
#' @param request_url the url to send the browser to
#' @export
#' @keywords internal
oauth_listener <- function(request_url) {
  if (!require("Rook")) {
    stop("Rook package required to capture OAuth credentials")
  }

  info <- NULL
  listen <- function(env) {
    req <- Request$new(env)
    info <<- req$params()

    res <- Response$new()
    res$header("Content-type", "text/plain")
    res$write("Authentication complete - you can now close this page and ")
    res$write("return to R.")
    res$finish()
  }

  server <- Rhttpd$new()
  port <- tools:::httpdPort
  server_on <- port != 0

  server <- Rhttpd$new()
  server$add(listen, name = "OAuth")
  if (!server_on) {
    port <- 1410
    server$start(port = port, quiet = TRUE)
  }

  message("Waiting for authentication in browser...")
  Sys.sleep(1)
  BROWSE(request_url)

  # wait until we get a response
  while(is.null(info)) {
    Sys.sleep(1)
  }
  message("Authentication complete.")

  server$remove("OAuth")
  server$stop()

  info
}

#' The oauth callback url.
#'
#' The url that \code{\link{oauth_listener}} expects that the client be
#' referred to.
#'
#' @keywords internal
#' @export
oauth_callback <- function() {
  port <- tools:::httpdPort
  if (port == 0) port <- 1410
  str_c("http://localhost:", port, "/custom/OAuth/cred")
}
