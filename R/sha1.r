#' HMAC SHA1
#'
#' As described in \url{http://datatracker.ietf.org/doc/rfc2104/}.
#'
#' @param key secret key
#' @param string data to securely hash
#' @keywords internal
#' @export
hmac_sha1 <- function(key, string) {
  if (is.character(string))
    string <- charToRaw(paste(string, collapse = "\n"))
  if (is.character(key))
    key <- charToRaw(paste(key, collapse = "\n"))
  hash <- openssl::sha1(string, key = key)
  openssl::base64_encode(hash)
}

#' RSA SHA1
#'
#' As described in \url{http://tools.ietf.org/html/rfc3447}.
#'
#' @param key private key
#' @param string data to securely hash
#' @keywords internal
#' @export
rsa_sha1 <- function(key, string) {
  if (is.character(string))
    string <- charToRaw(paste(string, collapse = "\n"))
  if (is.character(key))
    key <- charToRaw(paste(key, collapse = "\n"))
  sig <- openssl::signature_create(string, openssl::sha1, key = key)
  openssl::base64_encode(sig)
}
