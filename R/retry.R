#' Retry a request until it succeeds.
#'
#' Safely retry a request until it succeeds, as defined by the `terminate_on`
#' parameter, which by default means a response for which [http_error()]
#' is `FALSE`. Will also retry on error conditions raised by the underlying curl code,
#' but if the last retry still raises one, `RETRY` will raise it again with
#' [stop()].
#' It is designed to be kind to the server: after each failure
#' randomly waits up to twice as long. (Technically it uses exponential
#' backoff with jitter, using the approach outlined in
#' <https://www.awsarchitectureblog.com/2015/03/backoff.html>.)
#' If the server returns status code 429 and specifies a `retry-after` value, that
#' value will be used instead, unless it's smaller than `pause_min`.
#'
#' @inheritParams VERB
#' @inherit GET params return
#' @inheritParams POST
#' @param times Maximum number of requests to attempt.
#' @param pause_base,pause_cap This method uses exponential back-off with
#'   full jitter - this means that each request will randomly wait between 0
#'   and `pause_base * 2 ^ attempt` seconds, up to a maximum of
#'   `pause_cap` seconds.
#' @param pause_min Minimum time to wait in the backoff; generally
#'   only necessary if you need pauses less than one second (which may
#'   not be kind to the server, use with caution!).
#' @param quiet If `FALSE`, will print a message displaying how long
#'   until the next request.
#' @param terminate_on Optional vector of numeric HTTP status codes that if found
#'   on the response will terminate the retry process. If `NULL`, will keep
#'   retrying while [http_error()] is `TRUE` for the response.
#' @param terminate_on_success If `TRUE`, the default, this will
#'   automatically terminate when the request is successful, regardless of the
#'   value of `terminate_on`.
#' @param failure_threshold If requests continue to fail even when retried up to
#'   this number of times, impose a timeout on all subsequent requests to this
#'   host/port combination (or `handle`, if given). This timeout will persist
#'   across subsequent calls to this function, and is intended to detect failing
#'   servers without needing to wait each time (a "circuit-breaker" pattern).
#' @param failure_timeout Time to wait, in seconds, before retrying a request
#'   that has exceeded the failure threshold.
#' @return The last response. Note that if the request doesn't succeed after
#'   `times` times this will be a failed request, i.e. you still need
#'   to use [stop_for_status()].
#' @export
#' @examples
#' # Succeeds straight away
#' RETRY("GET", "http://httpbin.org/status/200")
#' # Never succeeds
#' RETRY("GET", "http://httpbin.org/status/500")
#' \dontrun{
#' # Invalid hostname generates curl error condition and is retried but eventually
#' # raises an error condition.
#' RETRY("GET", "http://invalidhostname/")
#' }
RETRY <- function(verb, url = NULL, config = list(), ...,
                  body = NULL, encode = c("multipart", "form", "json", "raw"),
                  times = 3, pause_base = 1, pause_cap = 60, pause_min = 1,
                  handle = NULL, quiet = FALSE,
                  terminate_on = NULL,
                  terminate_on_success = TRUE,
                  failure_threshold = Inf, failure_timeout = 30) {
  stopifnot(is.numeric(times), length(times) == 1L)
  stopifnot(is.numeric(pause_base), length(pause_base) == 1L)
  stopifnot(is.numeric(pause_cap), length(pause_cap) == 1L)
  stopifnot(is.numeric(terminate_on) || is.null(terminate_on))
  stopifnot(is.logical(terminate_on_success), length(terminate_on_success) == 1)
  stopifnot(is.numeric(failure_threshold), length(failure_threshold) == 1L)
  stopifnot(is.numeric(failure_timeout), length(failure_timeout) == 1L)

  hu <- handle_url(handle, url, ...)
  failures <- failures_for_handle(hu$handle, failure_timeout)
  if (failures >= failure_threshold) {
    stop("Too many request failures. Retry after the timeout has elapsed.")
  }
  times <- min(times, failure_threshold - failures)
  req <- request_build(verb, hu$url, body_config(body, match.arg(encode)), config, ...)
  resp <- tryCatch(request_perform(req, hu$handle$handle), error = function(e) e)
  if (inherits(resp, "error") || resp$status_code == 408L || resp$status_code >= 500L) {
    failures <- failures + 1
  } else {
    # Reset counter on any successful request.
    failures <- 0
  }

  i <- 1
  while (!retry_should_terminate(i, times, resp, terminate_on, terminate_on_success)) {
    backoff_full_jitter(i, resp, pause_base, pause_cap, pause_min, quiet = quiet)

    i <- i + 1
    resp <- tryCatch(request_perform(req, hu$handle$handle), error = function(e) e)
    if (inherits(resp, "error") || resp$status_code == 408L || resp$status_code >= 500L) {
      failures <- failures + 1
    } else {
      failures <- 0
    }
  }
  # Track failures on the handle object.
  hu$handle$failures <- failures
  hu$handle$last_failure <- Sys.time()

  if (inherits(resp, "error")) {
    stop(resp)
  }

  resp
}

retry_should_terminate <- function(i, times, resp, terminate_on, terminate_on_success) {
  if (i >= times) {
    TRUE
  } else if (inherits(resp, "error")) {
    FALSE
  } else if (terminate_on_success && !http_error(resp)) {
    TRUE
  } else if (!is.null(terminate_on)) {
    status_code(resp) %in% terminate_on
  } else {
    !http_error(resp)
  }
}

backoff_full_jitter <- function(i, resp, pause_base = 1, pause_cap = 60,
                                pause_min = 1, quiet = FALSE) {
  length <- max(pause_min, stats::runif(1, max = min(pause_cap, pause_base * (2^i))))
  if (!quiet) {
    if (inherits(resp, "error")) {
      error_description <- gsub("[\n\r]*$", "\n", as.character(resp))
      status <- "ERROR"
    } else {
      error_description <- ""
      status <- status_code(resp)
    }
    if (status == 429) {
      retry_after <- resp$headers[["retry-after"]]
      if (!is.null(retry_after)) {
        length <- max(pause_min, as.numeric(retry_after))
      }
    }
    message(error_description, "Request failed [", status, "]. Retrying in ", round(length, 1), " seconds...")
  }
  Sys.sleep(length)
}

failures_for_handle <- function(handle, timeout) {
  failures <- handle$failures %||% 0
  if (failures > 0 && timeout <= difftime(Sys.time(), handle$last_failure, units = "secs")) {
    failures <- 0
  }
  failures
}
