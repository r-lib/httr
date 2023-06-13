#' Set user agent.
#'
#' Override the default RCurl user agent of `NULL`
#'
#' @param agent string giving user agent
#' @export
#' @family config
#' @examples
#' \dontrun{
#' GET("http://httpbin.org/user-agent")
#' GET("http://httpbin.org/user-agent", user_agent("httr"))
#' }
user_agent <- function(agent) {
  stopifnot(is.character(agent), length(agent) == 1)

  config(useragent = agent)
}
