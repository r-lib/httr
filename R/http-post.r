#' Post file to a server.
#'
#' @inheritParams GET
#' @param body Named of list of elements to go in the body of the post file. 
#'   Use \code{\link[RCurl]{fileUpload}} to upload files.
#' @param multipart Should the form be send as multipart/form-data 
#'   (\code{TRUE}), or application/x-www-form-urlencoded (\code{FALSE}).
#'   Files can not be uploaded when \code{FALSE}.
#' @export
#' @examples
#' b <- new_bin()
#' POST(b)
#' POST(b, body = "A simple text string")
#' POST(b, body = list(a = 1, b = 2, c = 3))
#' POST(b, body = list(a = 1, file = fileUpload(system.file("CITATION"))))
#'
#' b2 <- "http://httpbin.org/post"
#' POST(b2, body = "A simple text string")
#' POST(b2, body = list(x = "A simple text string"))
#' POST(b2, body = list(y = fileUpload(system.file("CITATION"))))
POST <- function(url = NULL, config = list(), body = NULL, multipart = TRUE, ..., handle = NULL) {
  hu <- handle_url(handle, url, ...)
  make_request(post_request, hu$handle, hu$url, body = body, 
    multipart = multipart, config = config)
}

post_request <- function (handle, url, body = NULL, opts = list(), multipart = TRUE, encoding = integer())  {
  stopifnot(is.handle(handle))
  stopifnot(is.character(url), length(url) == 1)

  opts$url <- url

  buffer <- binaryBuffer()
  opts$writefunction <-
    getNativeSymbolInfo("R_curl_write_binary_data")$address
  opts$writedata <- buffer@ref
  
  if (is.null(body)) {
    opts$post <- 1L
    opts$postfieldsize <- 0L
    body <- ""
  } else if (is.character(body) || is.raw(body)) {
    if (is.character(body)) {
      body <- charToRaw(paste(body, collapse = "\n"))      
    }
    opts$customrequest <- "POST"
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