#' Retry a request until it succeeds.
#'
#' Safely retry a request until it succeeds (returns an HTTP status code
#' below 400). It is designed to be kind to the server: after each failure
#' randomly waits up to twice as long. (Technically it uses exponential
#' backoff with jitter, using the approach outlined in
#' \url{https://www.awsarchitectureblog.com/2015/03/backoff.html}.)
#'
#' @inheritParams VERB
#' @inheritParams GET
#' @inheritParams POST
#' @param times Maximum number of requests to attempt.
#' @param pause_base,pause_cap This method uses exponential back-off with
#'   full jitter - this means that each request will randomly wait between 0
#'   and \code{pause_base * 2 ^ attempt} seconds, up to a maximum of
#'   \code{pause_cap} seconds.
#' @param quiet If \code{FALSE}, will print a message displaying how long
#'   until the next request.
#' @param use_try If \code{TRUE}, will wrap the request execution in a call to
#'   \code{\link[base]{try}()} in order to catch lower level errors in the
#'   request.
#' @param safe_statuses Integer vector of status codes that should be considered
#'   safe and not cause a retry.
#' @return The last response or, if \code{use_try} was \code{TRUE}, an invisible
#'   object of class \code{"try-error"}. Note that if the request doesn't succeed after
#'   \code{times} times this will be a failed request, i.e. you still need
#'   to use \code{\link{stop_for_status}()}.
#' @export
#' @examples
#' # Succeeds straight away
#' RETRY("GET", "http://httpbin.org/status/200")
#' # Never succeeds
#' RETRY("GET", "http://httpbin.org/status/500")
#' # Returns immediately with a 404 response
#' RETRY("GET", "http://httpbin.org/status/404", safe_statuses = 400L)
RETRY <- function(verb, url = NULL, config = list(), ...,
                  body = NULL, encode = c("multipart", "form", "json", "raw"),
                  times = 3, pause_base = 1, pause_cap = 60,
                  handle = NULL, quiet = FALSE, use_try = FALSE, safe_statuses = integer()) {
  stopifnot(is.numeric(times), length(times) == 1L)
  stopifnot(is.numeric(pause_base), length(pause_base) == 1L)
  stopifnot(is.numeric(pause_cap), length(pause_cap) == 1L)
  stopifnot(is.logical(use_try), length(use_try) == 1L, !is.na(use_try))
  stopifnot(is.integer(safe_statuses))

  hu <- handle_url(handle, url, ...)
  req <- request_build(verb, hu$url, body_config(body, match.arg(encode)), config, ...)
  resp <- if (use_try) {
    try(request_perform(req, hu$handle$handle))
  } else {
    request_perform(req, hu$handle$handle)
  }

  i <- 1
  while (i < times && should_retry(resp, safe_statuses)) {
    status = if ("try-error" %in% class(resp)) {
      attr(resp, "condition")$message
    } else {
      status_code(resp)
    }
    backoff_full_jitter(i, status, pause_base, pause_cap, quiet = quiet)

    i <- i + 1
    resp <- if (use_try) {
      try(request_perform(req, hu$handle$handle))
    } else {
      request_perform(req, hu$handle$handle)
    }
  }

  resp
}

should_retry <- function(resp, safe_statuses) {
  "try-error" %in% class(resp) || (!status_code(resp) %in% safe_statuses && http_error(resp))
}

backoff_full_jitter <- function(i, status, pause_base = 1, pause_cap = 60, quiet = FALSE) {
  length <- ceiling(stats::runif(1, max = min(pause_cap, pause_base * (2 ^ i))))
  if (!quiet) {
    message("Request failed [", status, "]. Retrying in ", length, " seconds...")
  }
  Sys.sleep(length)
}
