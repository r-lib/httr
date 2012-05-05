#' Send PUT to request server.
#'
#' @inheritParams GET
#' @param content Content, if any, to send to server.
#' @export
#' @examples
#' b <- new_bin()
#' PUT(b)
#'
#' POST("http://httpbin.org/put")
#' PUT("http://httpbin.org/put")
#' PUT("http://httpbin.org/put", content = "some body content")
#' PUT("http://httpbin.org/put", content = list(a = 1, b = 2))
PUT <- function(url = NULL, config = list(), content = NULL, ..., handle = NULL) {
  hu <- handle_url(handle, url, ...)
  make_request("put", hu$handle, hu$url, content = content, 
    config = config)
}

put_request <- function(handle, url, content, opts) {
  opts$customrequest <- "PUT"
  
  if (is.null(content)) {
    opts$nobody <- 1L
  } else {
    if (is.list(content)) {
      content <- compose_query(content)
    }
    if (is.character(content)) {
      content <- charToRaw(paste(content, collapse = "\n"))
    }
    opts$readfunction <- content
    opts$upload <- TRUE
    opts$infilesize <- length(content)
  }

  get_request(handle, url, opts)
}
