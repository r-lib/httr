
callback_env <- new.env(parent = emptyenv())
callback_env$request <- NULL
callback_env$response <- NULL

#' Install or uninstall a callback function
#'
#' Supported callback functions: \describe{
#' \item{\sQuote{request}}{This callback is called before an HTTP request
#'   is performed, with the `request` object as an argument.
#'   If the callback returns a value other than `NULL`, the HTTP
#'   request is not performed at all, and the return value of the callback
#'   is returned. This mechanism can be used to replay previously
#'   recorded HTTP responses.
#' }
#' \item{\sQuote{response}}{This callback is called after an HTTP request
#'   is performed. The callback is called with two arguments: the
#'   `request` object and the `response` object of the HTTP
#'   request. If this callback returns a value other than `NULL`,
#'   then this value is returned by `httr`.}
#' }
#'
#' Note that it is not possible to install multiple callbacks of the same
#' type. The installed callback overwrites the previously intalled one.
#' To uninstall a callback function, set it to `NULL` with
#' `set_callback()`.
#'
#' See the `httrmock` package for a proper example that uses
#' callbacks.
#'
#' @param name Character scalar, name of the callback to query or set.
#' @param new_callback The callback function to install, a function object;
#'   or `NULL` to remove the currently installed callback (if any).
#'
#' @return `get_callback` returns the currently installed
#'   callback, or `NULL` if none is installed.
#'
#'   `set_callback` returns the previously installed callback,
#'   or `NULL` if none was installed.
#'
#' @export
#' @examples
#' \dontrun{
#' ## Log all HTTP requests to the screeen
#' req_logger <- function(req) {
#'   cat("HTTP request to", sQuote(req$url), "\n")
#' }
#' 
#' old <- set_callback("request", req_logger)
#' g1 <- GET("https://httpbin.org")
#' g2 <- GET("https://httpbin.org/ip")
#' set_callback("request", old)
#' 
#' ## Log all HTTP requests and response status codes as well
#' req_logger2 <- function(req) {
#'   cat("HTTP request to", sQuote(req$url), "... ")
#' }
#' res_logger <- function(req, res) {
#'   cat(res$status_code, "\n")
#' }
#' 
#' old_req <- set_callback("request", req_logger2)
#' old_res <- set_callback("response", res_logger)
#' g3 <- GET("https://httpbin.org")
#' g4 <- GET("https://httpbin.org/ip")
#' set_callback("request", old_req)
#' set_callback("response", old_res)
#' 
#' ## Return a recorded response, without performing the HTTP request
#' replay <- function(req) {
#'   if (req$url == "https://httpbin.org") g3
#' }
#' old_req <- set_callback("request", replay)
#' grec <- GET("https://httpbin.org")
#' grec$date == g3$date
#' set_callback("request", old_req)
#' }
#' 
get_callback <- function(name) {
  stopifnot(is.character(name), length(name) == 1, !is.na(name))
  if (!name %in% ls(callback_env)) stop("Unknown httr callback: ", name)
  callback_env[[name]]
}

#' @export
#' @rdname get_callback

set_callback <- function(name, new_callback = NULL) {
  stopifnot(is.character(name), length(name) == 1, !is.na(name))
  if (!name %in% ls(callback_env)) stop("Unknown httr callback: ", name)

  old <- callback_env[[name]]
  stopifnot(is.null(new_callback) || is.function(new_callback))
  callback_env[[name]] <- new_callback
  invisible(old)
}

perform_callback <- function(name, ...) {
  if (!is.null(callback <- get_callback(name))) {
    callback(...)
  }
}
