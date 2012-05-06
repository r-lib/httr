#' Set maximum request time.
#'
#' @param seconds number of seconds to wait for a response until giving up.
#' @family config
#' @export
#' @examples
#' \dontrun{
#' GET("http://httpbin.org/delay/3", timeout(1))
#' GET("http://httpbin.org/delay/1", timeout(2))
#' }
timeout <- function(seconds) {
  config(timeout.ms = seconds * 1000)
}