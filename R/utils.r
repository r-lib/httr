"%||%" <- function(a, b) {
  if (!is.null(a)) a else b
}

timestamp <- function() {
  format(Sys.time(), "%Y-%m-%dT%H:%M:%SZ", tz = "UTC")
}

hmac_sha1 <- function(key, string) {
  hash <- hmac(key, string, "sha1", raw = TRUE)
  base64(hash)
}
