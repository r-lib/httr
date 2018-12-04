#' SHA1 hash
#'
#' Creates a SHA1 hash of data using either HMAC or RSA.
#'
#' @param key The key to create the hash with
#' @param string data to securely hash
#' @param method The method to use, either HMAC-SHA1 or RSA-SHA1
#' @keywords internal
#' @export
sha1_hash <- function(key, string, method = "HMAC-SHA1") {
  if (is.character(string)) {
    string <- charToRaw(paste(string, collapse = "\n"))
  }
  if (is.character(key)) {
    key <- charToRaw(paste(key, collapse = "\n"))
  }

  if (!method %in% c("HMAC-SHA1", "RSA-SHA1")) {
    stop(paste0("Unsupported hashing method: ", method), call. = FALSE)
  }

  if (method == "HMAC-SHA1") {
    hash <- openssl::sha1(string, key = key)
  } else {
    hash <- openssl::signature_create(string, openssl::sha1, key = key)
  }

  openssl::base64_encode(hash)
}

#' HMAC SHA1
#'
#' As described in <http://datatracker.ietf.org/doc/rfc2104/>.
#'
#' @param key secret key
#' @param string data to securely hash
#' @keywords internal
#' @export
hmac_sha1 <- function(key, string) {
  sha1_hash(key, string, "HMAC-SHA1")
}
