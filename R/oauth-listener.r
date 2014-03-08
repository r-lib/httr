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
  if (!require("httpuv")) {
    stop("httpuv package required to capture OAuth credentials")
  }

  if (!interactive()) {
    stop("oauth_listener() needs an interactive environment.", call. = FALSE)
  }

  info <- NULL
  listen <- function(env) {
    oauth_return_is_valid <- function(oauth_response) {
      # info starts as NULL and then gets populated. In some situations the polling
      # routine returns an invalid info object - a length 1 list with an empty string
      # in the one element. Check if either of these is TRUE
      !(is.list(oauth_response) && (length(oauth_response) == 1) && (oauth_response[[1]] == ""))
    }
    
    oauth_response <- parse_query(gsub("^\\?", "", env$QUERY_STRING))
    if (oauth_return_is_valid(oauth_response)) {
      info <<- oauth_response
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
  BROWSE(request_url)
  while(is.null(info)) {
    httpuv::service()
    Sys.sleep(0.001)
  }
  httpuv::service() # to send text back to browser

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
