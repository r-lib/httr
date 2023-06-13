#' Compute caching information for a response.
#'
#' `cache_info()` gives details of cacheability of a response,
#' `rerequest()` re-performs the original request doing as little work
#' as possible (if not expired, returns response as is, or performs
#' revalidation if Etag or Last-Modified headers are present).
#'
#' @param r A response
#' @export
#' @examples
#' # Never cached, always causes redownload
#' r1 <- GET("https://www.google.com")
#' cache_info(r1)
#' r1$date
#' rerequest(r1)$date
#'
#' # Expires in a year
#' r2 <- GET("https://www.google.com/images/srpr/logo11w.png")
#' cache_info(r2)
#' r2$date
#' rerequest(r2)$date
#'
#' \dontrun{
#' # Has last-modified and etag, so does revalidation
#' r3 <- GET("http://httpbin.org/cache")
#' cache_info(r3)
#' r3$date
#' rerequest(r3)$date
#'
#' # Expires after 5 seconds
#' r4 <- GET("http://httpbin.org/cache/5")
#' cache_info(r4)
#' r4$date
#' rerequest(r4)$date
#' Sys.sleep(5)
#' cache_info(r4)
#' rerequest(r4)$date
#' }
cache_info <- function(r) {
  stopifnot(is.response(r))

  # If parsing fails using -Inf; If missing use NA
  expires <- parse_http_date(r$headers$expires, Inf) %||% NULL

  # Parse cache control
  control <- parse_cache_control(r$headers$`cache-control`)
  max_age <- as.integer(control$`max-age`) %||% NULL

  # Compute expiry
  if (!is.null(max_age)) {
    expires <- r$date + max_age
  } else if (!is.null(r$headers$expires)) {
    expires <- parse_http_date(r$headers$expires, -Inf)
  } else {
    expires <- NULL
  }

  # Is this cacheable?
  cacheable <- r$request$method %in% c("GET", "HEAD") &&
    status_code(r) %in% c(200L, 203L, 300L, 301L, 410L) &&
    (!is.null(expires) || !is.null(r$headers$etag) ||
      !is.null(r$headers$`last-modified`)) &&
    !any(c("no-store", "no-cache") %in% control$flags)
  # What impact should any(c("public", "private") %in% control$flags) have?

  structure(
    list(
      method = r$method,
      url = r$url,

      cacheable = cacheable,
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
  cat("  Cacheable:     ", x$cacheable, "\n", sep = "")
  if (!is.null(x$expires)) {
    cat("  Expires:       ", http_date(x$expires), sep = "")
    if (x$expires < Sys.time()) cat(" <expired>")
    cat("\n")
  }
  cat("  Last-Modified: ", http_date(x$modified), "\n", sep = "")
  cat("  Etag:          ", x$etag, "\n", sep = "")
  invisible(x)
}

parse_cache_control <- function(x) {
  if (is.null(x)) return(list())

  pieces <- strsplit(x, ",")[[1]]
  pieces <- gsub("^\\s+|\\s+$", "", pieces)
  pieces <- tolower(pieces)

  is_value <- grepl("=", pieces)
  flags <- pieces[!is_value]

  keyvalues <- strsplit(pieces[is_value], "\\s*=\\s*")
  keys <- c(rep("flags", length(flags)), lapply(keyvalues, "[[", 1))
  values <- c(flags, lapply(keyvalues, "[[", 2))

  stats::setNames(values, keys)
}

#' @rdname cache_info
#' @export
rerequest <- function(r) {
  x <- cache_info(r)
  if (!x$cacheable) {
    return(reperform(r))
  }

  # Cacheable, and hasn't expired
  if (!is.null(x$expires) && x$expires >= Sys.time()) {
    return(r)
  }

  # Requires validation
  req <- c(
    r$request,
    request(headers = c(
      `If-Modified-Since` = http_date(x$modified),
      `If-None-Match` = x$etag
    ))
  )
  validated <- request_perform(req, r$handle)

  if (status_code(validated) == 304L) {
    r
  } else {
    validated
  }
}

reperform <- function(resp) {
  request_perform(resp$request, resp$handle)
}
