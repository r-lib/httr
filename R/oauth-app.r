#' Create an OAuth application.
#'
#' The OAuth framework doesn't match perfectly to this usage scenario.
#' Effectively, each use of the package is it's own application - this means
#' that for every web site you want to access, you need to create your own
#' application on the webiste. See the demos for examples of using OAuth with
#' github, twitter and vimeo
#'
#' If the application needs a callback url, supply the value of 
#' \code{\link{oauth_callback}}
#'
#' @param appname name of the application
#' @param key consumer key 
#' @param secret consumer secret.  This should not be stored in publicly
#'   visible code, so as a convenient shortcut, if this value is \code{NULL},
#'   we'll look in the environment variable \code{APPNAME_CONSUMER_SECRET}
#' @export
#' @family OAuth
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