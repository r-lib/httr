#' Diagnose common configuration problems
#'
#' Currently one check: that curl uses nss.
#'
#' @export
brew_dr <- function() {
  check_for_nss()
}

check_for_nss <- function() {
  if (!grepl("^NSS", RCurl::curlVersion()$ssl_version)) return()

  warning('
  ------------------------------------------------------------------------
  Your installed RCurl is linked to the NSS library (`libcurl4-nss-dev`)
  which is likely to cause issues.

  To resolve the problem:

  1. Quit R.

  2. Install OpenSSL (`apt-get install libcurl4-openssl-dev`) or
     GnuTLS (`apt-get install libcurl4-gnutls-dev`) variants of libCurl.

  3. Restart R.

  4. Reinstall RCurl: `install.packages("RCurl")`.
  ------------------------------------------------------------------------
  ', call. = FALSE)
}
