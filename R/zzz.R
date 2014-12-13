.onLoad <- function(libname, pkgname) {
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
