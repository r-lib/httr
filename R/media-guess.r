#' Guess the media type of a path from its extension.
#'
#' @param x path to file
#' @export
#' @examples
#' guess_media("report.doc")
#' guess_media("owl.png")
guess_media <- function(x) {
  ext <- tools::file_ext(x)

  if (ext %in% names(ext_media)) {
    ext_media[[ext]]
  } else {
    NULL
  }
}

guess_media_url <- function(x) {
  guess_media(parse_url(x)$path)
}

cache_media <- function() {
  url <- "http://svn.apache.org/repos/asf/httpd/httpd/trunk/docs/conf/mime.types"
  tbl <- scan(url, character(1), comment.char = "#", sep = "\n", quiet = TRUE)
  pieces <- strsplit(tbl, "\\s+")

  make_lookup <- function(x) setNames(rep(x[1], length(x) - 1), x[-1])
  ext_media <- unlist(lapply(pieces, make_lookup), recursive = FALSE)
  save(ext_media, file = "R/sysdata.rda")
}
