#' Post file to a server.
#'
#' @inheritParams GET
#' @param body Use \code{NULL} for an empty body, a length-one character or 
#    raw vector, or a named of list of elements to go in the body of the post 
#'   file. Each component should either be a character value or the object
#'   returned by \code{\link[RCurl]{fileUpload}} (if you want to upload a
#'   file).  If \code{multipart} is \code{FALSE} elements will be escaped
#'   automatically - if the values have already been escaped, then use
#'   `I` to prevent double-escaping.
#' @param multipart Should the form be send as multipart/form-data 
#'   (\code{TRUE}), or application/x-www-form-urlencoded (\code{FALSE}).
#'   Files can not be uploaded when \code{FALSE}.
#' @export
#' @examples
#' b <- new_bin()
#' POST(b)
#' POST(b, body = "A simple text string")
#' POST(b, body = list(a = 1, b = 2, c = 3))
#' POST(b, body = list(a = 1, file = upload_file(system.file("CITATION"))))
#'
#' b2 <- "http://httpbin.org/post"
#' POST(b2, body = "A simple text string")
#' POST(b2, body = list(x = "A simple text string"))
#' POST(b2, body = list(y = upload_file(system.file("CITATION"))))
POST <- function(url = NULL, config = list(), body = NULL, multipart = TRUE, ..., handle = NULL) {
  hu <- handle_url(handle, url, ...)
  make_request("post", hu$handle, hu$url, body = body, 
    multipart = multipart, config = config)
}

post_request <- function(...) {
  send_data("POST", ...)
}

send_data <- function (method, handle, url, body = NULL, opts = list(), multipart = TRUE, encoding = integer())  {
  stopifnot(is.handle(handle))
  stopifnot(is.character(url), length(url) == 1)

  opts$url <- url

  buffer <- binaryBuffer()
  opts$writefunction <-
    getNativeSymbolInfo("R_curl_write_binary_data")$address
  opts$writedata <- buffer@ref
  opts$customrequest <- method
  
  if (is.null(body)) {
    opts$postfieldsize <- 0L
    body <- ""
  } else if (is.character(body) || is.raw(body)) {
    if (is.character(body)) {
      body <- charToRaw(paste(body, collapse = "\n"))      
    }
    opts$readfunction <- body
    opts$upload <- TRUE
    opts$infilesize <- length(body)
    curlPerform(curl = handle$handle, .opts = opts)
    reset(handle$handle)
    return(as(buffer, "raw"))
  } else if (!multipart) {
    encode <- function(x) {
      if (inherits(x, "AsIs")) return(x)
      curlEscape(x)
    }
    body <- vapply(body, encode, FUN.VALUE = character(1))
    body <- str_c(names(body), body, sep = "=", collapse = "&")
  } else {
    charify <- function(x) {
      if (inherits(x, "FileUploadInfo")) return(x)
      as.character(x)
    }
    body <- lapply(body, charify)
    stopifnot(length(names(body)) > 0)
  }    
  
  # Create option list, but don't set values
  opts <- curlSetOpt(curl = NULL, .opts = opts)

  style <- if (multipart && body != "") NA else 47
  # handle opts params isProtected r_style
  .Call("R_post_form", handle$handle@ref, opts, body, TRUE,
    as.integer(style), PACKAGE = "RCurl")
  
  as(buffer, "raw")
}