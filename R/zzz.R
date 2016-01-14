.onLoad <- function(libname, pkgname) {
  op <- options()
  op.dplyr <- list(
    httr_oob_default = FALSE,
    httr_oauth_cache = NA
  )
  toset <- !(names(op.dplyr) %in% names(op))
  if(any(toset)) options(op.dplyr[toset])

  versions <- c(
    libcurl = curl::curl_version()$version,
    `r-curl` = as.character(packageVersion("curl")),
    httr = as.character(packageVersion("httr")))
  default_ua <<- paste0(names(versions), "/", versions, collapse = " ")

  invisible()
}

release_questions <- function() {
  c(
    "Have you run all the OAuth demos?",
    "Is inst/cacert.pem up to date?"
  )
}
