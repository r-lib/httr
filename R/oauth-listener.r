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
#' @param is_interactive Is an interactive environment available?
#' @export
#' @keywords internal
oauth_listener <- function(request_url, is_interactive = interactive()) {
  if (!is_installed("httpuv")) {
    stop("httpuv package required to capture OAuth credentials.")
  }

  if (!is_interactive) {
    stop("oauth_listener() needs an interactive environment.", call. = FALSE)
  }

  info <- NULL
  listen <- function(env) {
    if (!identical(env$PATH_INFO, "/")) {
      return(list(
        status = 404L,
        headers = list("Content-type" = "text/plain"),
        body = "Not found")
      )
    }

    query <- env$QUERY_STRING
    if (!is.character(query) || identical(query, "")) {
      info <<- NA
    } else {
      info <<- parse_query(gsub("^\\?", "", query))
    }

    list(
      status = 200L,
      headers = list("Content-type" = "text/plain"),
      body = "Authentication complete. Please close this page and return to R."
    )
  }

  server <- httpuv::startServer("127.0.0.1", 1410, list(call = listen))
  on.exit(httpuv::stopServer(server))

  message("Waiting for authentication in browser...")
  message("Press Esc/Ctrl + C to abort")
  BROWSE(request_url)
  while(is.null(info)) {
    httpuv::service()
    Sys.sleep(0.001)
  }
  httpuv::service() # to send text back to browser

  if (identical(info, NA)) {
    stop("Authentication failed.", call. = FALSE)
  }

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
