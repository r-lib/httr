#' Set maximum request time.
#'
#' @param seconds number of seconds to wait for a response until giving up.
#'   Can not be less than 1 ms.
#' @family config
#' @details This timeout is passed on to [curl::handle_setopt()].
#'   See there and [curl::curl_options()] for more details.
#' @export
#' @examples
#' \dontrun{
#' GET("http://httpbin.org/delay/3", timeout(1))
#' GET("http://httpbin.org/delay/1", timeout(2))
#' }
timeout <- function(seconds) {
  if (seconds < 0.001) {
    stop("Timeout cannot be less than 1 ms", call. = FALSE)
  }

  config(timeout_ms = seconds * 1000)
}
