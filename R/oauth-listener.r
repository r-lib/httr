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
#' @importFrom httpuv startServer service
oauth_listener <- function(request_url) {
  if (!require("Rook") || !require("httpuv")) {
    stop("Rook and httpuv packages required to capture OAuth credentials")
  }

  info <- NULL
  listen <- function(env) {
    req <- Request$new(env)
    info <<- req$params()
    first_name <- names(info)[1]
    if (substr(first_name, 1, 1) == "?") {
      first_name <- substr(first_name, 2, nchar(first_name))
      names(info)[1] <<- first_name
    }

    res <- Response$new()
    res$header("Content-type", "text/plain")
    res$write("Authentication complete - you can now close this page and ")
    res$write("return to R.")
    res$finish()
  }

  server <- startServer("127.0.0.1", 1410, list(call = listen))
  on.exit(stopServer(server))

  message("Waiting for authentication in browser...")
  BROWSE(request_url)
  while(is.null(info)) {
    service()
    Sys.sleep(0.001)
  }
  service() # to send text back to browser

  message("Authentication complete.")
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
  "http://localhost:1410/"
}
