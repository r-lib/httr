#' Compute caching information for a response.
#'
#' @param x A response
#' @export
#' @examples
#' r <- GET("https://www.google.com")
#' cache_info(r)
#'
#' r <- GET("https://www.google.com/images/srpr/logo11w.png")
#' cache_info(r)
cache_info <- function(x) {
  stopifnot(is.response(r))

  list(
    # If date missing, use request date
    date = parse_http_date(r$headers$date) %||% r$date,
    # If parsing fails using -Inf; If missing use NA
    expires = parse_http_date(r$headers$expires, -Inf) %||% NA,
    `cache-control` = r$headers$`cache-control`,
    etag = r$headers$etag %||% NA,
    `last-modified` = r$headers$`last-modified` %||% NA
  )

}
