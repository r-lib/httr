#' Give verbose output.
#'
#' A verbose connection provides much more information about the flow of
#' information between the client and server.
#'
#' @section Prefixes:
#'
#' \code{verbose()} uses the following prefixes to distinguish between
#' different components of the http messages:
#'
#' \itemize{
#'   \item \code{*} informative curl messages
#'
#'   \item \code{->} headers sent (out)
#'   \item \code{>>} data sent (out)
#'   \item \code{*>} ssl data sent (out)
#'
#'   \item \code{<-} headers received (in)
#'   \item \code{<<} data received (in)
#'   \item \code{<*} ssl data received (in)
#' }
#'
#' @family config
#' @param data_out Show data sent to the server.
#' @param info Show informational text from curl. This is mainly useful
#'   for debugging https and auth problems, so is disabled by default.
#' @param data_in Show data recieved from the server.
#' @param ssl Show even data sent/recieved over SSL connections?
#' @seealso \code{\link{with_verbose}()} makes it easier to use verbose mode
#'  even when the requests are buried inside another function call.
#' @export
#' @examples
#' GET("http://httpbin.org", verbose())
#' GET("http://httpbin.org", verbose(info = TRUE))
#'
#' f <- function() {
#'   GET("http://httpbin.org")
#' }
#' with_verbose(f())
#' with_verbose(f(), info = TRUE)
#'
#' # verbose() makes it easy to see exactly what POST requests send
#' POST_verbose <- function(body, ...) {
#'   POST("https://httpbin.org/post", body = body, verbose(), ...)
#'   invisible()
#' }
#' POST_verbose(list(x = "a", y = "b"))
#' POST_verbose(list(x = "a", y = "b"), encode = "form")
#' POST_verbose(FALSE)
#' POST_verbose(NULL)
#' POST_verbose("")
#' POST_verbose("xyz")
verbose <- function(data_out = TRUE, data_in = FALSE, info = FALSE, ssl = FALSE) {
  debug <- function(msg, type, curl)  {
    switch(type + 1,
      text =       if (info) prefix_message("*  ", msg),
      headerIn =   prefix_message("<- ", msg),
      headerOut =  prefix_message("-> ", msg),
      dataIn =     if (data_in) prefix_message("<<  ", msg, TRUE),
      dataOut =    if (data_out) prefix_message(">> ", msg, TRUE),
      sslDataIn =  if (data_in && ssl) prefix_message("*< ", msg, TRUE),
      sslDataOut = if (data_out && ssl) prefix_message("*> ", msg, TRUE),
    )
    0
  }
  config(debugfunction = safe_callback(debug), verbose = TRUE)
}

prefix_message <- function(prefix, x, blank_line = FALSE) {
  lines <- unlist(strsplit(x, "\n", fixed = TRUE, useBytes = TRUE))
  out <- paste0(prefix, lines, collapse = "\n")
  message(out)
  if (blank_line) cat("\n")
}
