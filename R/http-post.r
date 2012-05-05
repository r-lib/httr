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

post_config <- function(body = NULL, multipart = TRUE)  {
  # No body
  if (is.null(body)) {
    return(list(postfieldsize = 0L))
  }
  
  # Simple case of send raw text
  if (is.character(body) || is.raw(body)) {
    if (is.character(body)) {
      body <- charToRaw(paste(body, collapse = "\n"))      
    }
    return(list(
      upload = TRUE, 
      readfunction = body, 
      infilesize = length(body)
    ))
  }
  
  # Encode each param
  stopifnot(is.list(body))
  
  if (!multipart) {
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
  
  structure(list(), 
    post = TRUE,
    body = body,
    style = if (multipart) NA else 47
  )
}