#' Create an OAuth application.
#'
#' The OAuth framework doesn't match perfectly to use from R. Each user of the
#' package for a particular OAuth enabled site must create their own
#' application. See the demos for instructions on how to do this for
#' linkedin, twitter, vimeo, facebook, github and google.
#'
#' @param appname name of the application.  This is not used for OAuth, but
#'   is used to make it easier to identify different applications and
#'   provide a consistent way of storing secrets in environment variables.
#' @param key consumer key (equivalent to a user name)
#' @param secret consumer secret. This is not equivalent to a password, and
#'   is not really a secret. If you are writing an API wrapper package, it
#'   is fine to include this secret in your package code.
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
