"%||%" <- function(a, b) {
  if (!is.null(a)) a else b
}

timestamp <- function() {
  format(Sys.time(), "%Y-%m-%dT%H:%M:%SZ", tz = "UTC")
}

#' @importFrom digest hmac
hmac_sha1 <- function(key, string) {
  hash <- hmac(key, string, "sha1", raw = TRUE)
  base64(hash)
}

sort_names <- function(x)  x[order(names(x))]

nonce <- function(length = 10) {
  paste(sample(c(letters, LETTERS, 0:9), length, replace = TRUE), 
    collapse = "")
}
