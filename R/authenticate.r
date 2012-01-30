authenticate <- function(user, password, type = "anysafe") {
  stopifnot(is.character(user), length(user) == 1)
  stopifnot(is.character(password), length(password) == 1)
  stopifnot(is.character(type), length(type) == 1)
  
  type <- match.arg(type, c("basic", "digest", "digest_ie", "gssnegotiate",
    "ntlm", "ntlm_vn", "any", "anysafe"))
  
  config(httpauth = type, userpwd = str_c(user, ":", password))
}
# with_auth(username, password, {})
