#' Use http authentication.
#'
#' @param user user name
#' @param password password
#' @param type type of HTTP authentication.  Should be one of the following
#'   types supported by Curl: basic, digest, digest_ie, gssnegotiate,
#'   ntlm, ntlm_vn, any, anysafe.  It defaults to anysafe, which will use 
#'   authentication method that does not send the password in cleartext
#'   (i.e. everything except http basic authetication).
#' @export
#' @family config
authenticate <- function(user, password, type = "anysafe") {
  stopifnot(is.character(user), length(user) == 1)
  stopifnot(is.character(password), length(password) == 1)
  stopifnot(is.character(type), length(type) == 1)
  
  type <- match.arg(type, c("basic", "digest", "digest_ie", "gssnegotiate",
    "ntlm", "ntlm_vn", "any", "anysafe"))
  
  config(httpauth = type, userpwd = str_c(user, ":", password))
}
# with_auth(username, password, {})


# Also need to make it easy to authenticate with OAuth