#' Use http authentication.
#'
#' It's not obvious how to turn authentication off after using it, so
#' I recommend using custom handles with authentication.
#'
#' @param user user name
#' @param password password
#' @param type type of HTTP authentication.  Should be one of the following
#'   types supported by Curl: basic, digest, digest_ie, gssnegotiate,
#'   ntlm, any.  It defaults to "basic", the most common type.
#' @export
#' @family config
#' @examples
#' GET("http://httpbin.org/basic-auth/user/passwd")
#' GET(
#'   "http://httpbin.org/basic-auth/user/passwd",
#'   authenticate("user", "passwd")
#' )
authenticate <- function(user, password, type = "basic") {
  stopifnot(is.character(user), length(user) == 1)
  stopifnot(is.character(password), length(password) == 1)
  stopifnot(is.character(type), length(type) == 1)

  config(httpauth = auth_flags(type), userpwd = paste0(user, ":", password))
}

auth_flags <- function(x = "basic") {
  constants <- c(
    basic = 1,
    digest = 2,
    gssnegotiate = 4,
    ntlm = 8,
    digest_ie = 16,
    any = -17
  )
  x <- match.arg(x, names(constants))

  constants[[x]]
}
