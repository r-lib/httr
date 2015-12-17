#' Update bundled certificates
#'
#' This function updated the bundled certificates from
#' \url{http://curl.haxx.se/docs/caextract.html}. Around early September 2014,
#' Mozilla removed the trust bits from the certs in their CA bundle that were
#' still using RSA 1024 bit keys. This leads to problems on Windows, so we use
#' an older version.
#'
#' @noRd
updated_bundled_certs <- function() {
  GET("https://github.com/bagder/ca-bundle/raw/e9175fec5d0c4d42de24ed6d84a06d504d5e5a09/ca-bundle.crt",
    write_disk("inst/cacert.pem", overwrite = TRUE))
}
