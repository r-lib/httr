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
