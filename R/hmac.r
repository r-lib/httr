#' HMAC SHA1
#'
#' As described in \url{http://datatracker.ietf.org/doc/rfc2104/}.
#'
#' @param key secret key
#' @param string data to securely hash
#' @keywords internal
#' @export
hmac_sha1 <- function(key, string) {
  hash <- digest::hmac(key, string, "sha1", raw = TRUE)
  RCurl::base64(hash)
}

