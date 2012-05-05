#' Extract content from a request.
#'
#' There are currently three ways to retrieve the contents of a request:
#' as a raw object, \code{content}, as a character vector,
#' \code{text_content}, and as parsed into an R object where possible,
#' \code{parsed_content}.
#' 
#' \code{parsed_content} currently knows about the following mime types:
#' \itemize{
#'  \item \code{text/html}: \code{\link[XML]{htmlTreeParse}}
#'  \item \code{text/xml}: \code{\link[XML]{xmlTreeParse}}
#'  \item \code{application/json}: \code{\link[rjson]{fromJSON}}
#'  \item \code{application/x-www-form-urlencoded}: \code{parse_query}
#'  \item \code{image/jpeg}: \code{\link[jpeg]{readJPEG}}
#'  \item \code{image/png}: \code{\link[png]{readPNG}}
#' }
#'
#'
#' @param ... additional parameters passed to conversion function
#' @param x request object
#' @family response methods
#' @export
#' @examples
#' r <- POST("http://httpbin.org/post", body = list(a = 1, b = 2))
#' content(r) # binary content
#' cat(text_content(r), "\n") # text content
#' parsed_content(r) # json converted to an R object
#'
#' rlogo <- parsed_content(GET("http://cran.r-project.org/Rlogo.jpg"))
#' plot(0:1, 0:1, type = "n")
#' rasterImage(rlogo, 0, 0, 1, 1)
content <- function(x) {
  stopifnot(is.response(x))

  x$content
}

#' @export
#' @rdname content
text_content <- function(x) {
  stopifnot(is.response(x))
  
  contents <- content(x)
  if (is.null(contents)) return()

  rawToChar(contents)
}

#' @export
#' @rdname content
parsed_content <- function(x, ...) {
  stopifnot(is.response(x))

  type <- x$headers[["Content-Type"]]
  mime <- str_split(type, "; ?")[[1]][1]
  
  switch(mime, 
    `text/plain` = text_content(x),
    `text/html` = {require("XML"); htmlTreeParse(text_content(x), ...)},
    `text/xml` = {require("XML"); xmlTreeParse(text_content(x), ...)},
    `application/json` = {require("rjson"); fromJSON(text_content(x), ...)},
    `image/jpeg` = {require("jpeg"); readJPEG(content(x))},
    `image/png` = {require("png"); readPNG(content(x))},
    `application/x-www-form-urlencoded` = {parse_query(text_content(x))},
    stop("Unknown mime type: ", mime)
  )
}