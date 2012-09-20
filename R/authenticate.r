#' Use http authentication.
#'
#' It's not obvious how to turn authentication off after using it, so
#' I recommend using custom handles with authentication.
#'
#' @param user user name
#' @param password password
#' @param type type of HTTP authentication.  Should be one of the following
#'   types supported by Curl: basic, digest, digest_ie, gssnegotiate,
#'   ntlm, ntlm_vn, any.  It defaults to any.
#' @export
#' @family config
#' @examples
#' GET("http://httpbin.org/basic-auth/user/passwd")
#' GET("http://httpbin.org/basic-auth/user/passwd",
#'   authenticate("user", "passwd"))
authenticate <- function(user, password, type = "any") {
  stopifnot(is.character(user), length(user) == 1)
  stopifnot(is.character(password), length(password) == 1)
  stopifnot(is.character(type), length(type) == 1)

  constants <- c(basic = 1, digest = 2, gssnegotiate = 4, ntlm = 8,
    digest_ie = 16, any = -17)
  type <- match.arg(type, names(constants))

  config(httpauth = constants[type], userpwd = str_c(user, ":", password))
}
