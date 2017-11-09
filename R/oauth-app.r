#' Create an OAuth application.
#'
#' See the demos for instructions on how to create an OAuth app for linkedin,
#' twitter, vimeo, facebook, github and google. When wrapping an API from a
#' package, the author may want to include a default app to facilitate early
#' and casual use and then provide a method for heavy or advanced users to
#' supply their own app or key and secret.
#'
#' @param appname name of the application.  This is not used for OAuth, but is
#'   used to make it easier to identify different applications and provide a
#'   consistent way of storing secrets in environment variables.
#' @param key consumer key, also sometimes called the client ID
#' @param secret consumer secret, also sometimes called the client secret.
#'   Despite its name, this does not necessarily function like a password, i.e.
#'   the user still has to authenticate themselves and grant the app permission
#'   to use access resource on their behalf. For example, see Google's docs for
#'   \href{https://developers.google.com/identity/protocols/OAuth2#installed}{OAuth2
#'    for installed applications})
#'
#'   Use \code{NULL} to not store a secret: this is useful if you're relying on
#'   cached OAuth tokens.
#' @param redirect_uri The URL that user will be redirected to after
#'   authorisation is complete. You should generally leave this as the default
#'   unless you're using a non-standard auth flow (like with shiny).
#' @export
#' @family OAuth
#' @examples
#' \dontrun{
#' # These work on my computer because I have the right envvars set up
#' linkedin_app <- oauth_app("linkedin", key = "outmkw3859gy")
#' github_app <- oauth_app("github", "56b637a5baffac62cad9")
#' }
#'
#' # If you're relying on caching, supply an explicit NULL to
#' # suppress the warning message
#' oauth_app("my_app", "mykey")
#' oauth_app("my_app", "mykey", NULL)
oauth_app <- function(appname,
                      key,
                      secret = NULL,
                      redirect_uri = oauth_callback()) {
  if (missing(secret)) {
    env_name <- paste0(toupper(appname), "_CONSUMER_SECRET")
    secret <- Sys.getenv(env_name)
    if (secret == "") {
      warning("Couldn't find secret in environment variable ", env_name,
        call. = FALSE)
      secret <- NULL
    } else {
      message("Using secret stored in environment variable ", env_name)
    }
  }
  structure(
    list(
      appname = appname,
      secret = secret,
      key = key,
      redirect_uri = redirect_uri
    ),
    class = "oauth_app"
  )
}

is.oauth_app <- function(x) inherits(x, "oauth_app")

#' @export
print.oauth_app <- function(x, ...) {
  cat("<oauth_app> ", x$appname, "\n", sep = "")
  cat("  key:    ", x$key, "\n", sep = "")
  secret <- if (is.null(x$secret)) "<not supplied>" else "<hidden>"
  cat("  secret: ", secret, "\n", sep = "")
  invisible(x)
}
