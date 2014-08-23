#' Compute caching information for a response.
#'
#' @param r A response
#' @export
#' @examples
#' r1 <- GET("https://www.google.com")
#' cache_info(r1)
#'
#' r2 <- GET("https://www.google.com/images/srpr/logo11w.png")
#' cache_info(r2)
cache_info <- function(r) {
  stopifnot(is.response(r))

  # If parsing fails using -Inf; If missing use NA
  expires <- parse_http_date(r$headers$expires, Inf) %||% NULL

  # Parse cache control
  control <- parse_cache_control(r$headers$`cache-control`)
  max_age <- as.integer(control$`max-age`) %||% NA
  if (any(c("no-store", "no-cache") %in% control)) {
    override <- FALSE
  } else if (any(c("public", "private") %in% control)) {
    override <- TRUE
  } else {
    override <- NA
  }

  # Compute expiry
  if (!is.null(max_age)) {
    # If date missing, use request date
    date <- parse_http_date(r$headers$date) %||% r$date
    expires <- date + max_age
  } else if (!is.null(r$headers$expires)) {
    expires <- parse_http_date(r$headers$expires, -Inf)
  } else {
    expires <- NULL
  }

  structure(
    list(
      method = r$method,
      url = r$url,
      status = r$status_code,

      override = override,
      expires = expires,
      etag = r$headers$etag %||% NULL,
      modified = parse_http_date(r$headers$`last-modified`, NULL)
    ),
    class = "cache_info"
  )
}

is.cache_info <- function(x) inherits(x, "cache_info")


#' @export
print.cache_info <- function(x, ...) {
  cat("<cache_info> ", x$method, " ", x$url, "\n", sep = "")
  if (!is.null(x$expires)) {
    cat("  Expires:       ", http_date(x$expires), sep = "")
    if (x$expires < Sys.time()) cat(" <expired>")
    cat("\n")
  }
  cat("  Last-Modified: ", http_date(x$modified), "\n", sep = "")
  cat("  Etag:          ", x$etag, "\n", sep = "")
  cat("  Force caching: ", x$override, "\n", sep = "")
}

parse_cache_control <- function(x) {
  pieces <- strsplit(x, ",")[[1]]
  pieces <- gsub("^\\s+|\\s+$", "", pieces)
  pieces <- tolower(pieces)

  is_value <- grepl("=", pieces)
  flags <- pieces[!is_value]

  keyvalues <- strsplit(pieces[is_value], "\\s*=\\s*")
  keys <- c("flags", lapply(keyvalues, "[[", 1))
  values <- c(flags, lapply(keyvalues, "[[", 2))

  setNames(values, keys)
}
