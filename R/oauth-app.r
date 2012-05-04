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
#'   if \code{secret} is \code{NULL}, we'll look in the environment variable
#'   \code{APPNAME_CONSUMER_SECRET}
#' @export
#' @family OAuth
#' @examples
#' \dontrun{
#' linkedin_app <- oauth_app("linkedin", key = "outmkw3859gy")
#' github_app <- oauth_app("github", "56b637a5baffac62cad9")
#' }
oauth_app <- function(appname, key, secret = NULL) {
  if (is.null(secret)) {
    env_name <- str_c(toupper(appname), "_CONSUMER_SECRET")
    secret <- Sys.getenv(env_name)
    if (secret == "") {
      stop("Couldn't find secret in environment variable ", env_name, 
        call. = FALSE)
    }
    message("Using secret stored in environment variable ", env_name)
  }
  list(secret = secret, key = key)
}