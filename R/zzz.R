.onLoad <- function(libname, pkgname) {
  check_for_nss()

  op <- options()
  op.dplyr <- list(
    httr_oob_default = FALSE,
    httr_oauth_cache = NA
  )
  toset <- !(names(op.dplyr) %in% names(op))
  if(any(toset)) options(op.dplyr[toset])

  invisible()
}

release_questions <- function() {
  c(
    "Have you run all the OAuth demos?",
    "Is inst/cacert.pem up to date?"
  )
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
