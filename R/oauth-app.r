#' Create an OAuth application.
#'
#' The OAuth framework doesn't match perfectly to use from R. Each user of the
#' package for a particular OAuth enabled site must create their own
#' application. See the demos for instructions on how to do this for
#' linkedin, twitter, vimeo, facebook, github and google.
#'
#' @param appname name of the application.  This is not used for OAuth, but
#'   is used to make it easier to identifier different applications and
#'   provide a consistent ways of storing secrets in environmental variables.
#' @param key consumer key (equivalent to a user name)
#' @param secret consumer secret.  This is equivalent to a password and
#'   should not be stored in publicly visible code.  As a convenient shortcut,
#'   if \code{secret} is missing, we'll look in the environment variable
#'   \code{APPNAME_CONSUMER_SECRET}. Use \code{NULL} to not store a secret:
#'   this is useful if you're relying on cached OAuth tokens.
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
oauth_app <- function(appname, key, secret = NULL) {
  if (missing(secret)) {
    env_name <- str_c(toupper(appname), "_CONSUMER_SECRET")
    secret <- Sys.getenv(env_name)
    if (secret == "") {
      warning("Couldn't find secret in environment variable ", env_name,
        call. = FALSE)
      secret <- NULL
    } else {
      message("Using secret stored in environment variable ", env_name)  
    }
  }
  structure(list(appname = appname, secret = secret, key = key), 
    class = "oauth_app")
}

is.oauth_app <- function(x) inherits(x, "oauth_app")

#' @export
print.oauth_app <- function(x, ...) {
  cat("<ouath_app> ", x$appname, "\n", sep = "")
  cat("  key:    ", x$key, "\n", sep = "")
  secret <- if (is.null(x$secret)) "<not supplied>" else "<hidden>"
  cat("  secret: ", secret, "\n", sep = "")
}
