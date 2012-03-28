#' Make bin at \url{http://requestb.in/}
#' 
#' Returns a handle to a newly created request bin.  This is very useful for
#' checking that you're sending what you think you're sending.
#'
#' @param browse if \code{TRUE}, will also open the request bin in your
#'  browser so you can more easily inspect the results.
#' @export
new_bin <- function(browse = TRUE) {
  bin <- make_bin()
  url <- str_c("http://requestb.in/", bin$name)
  h <- handle(url)
  
  if (browse) BROWSE(url, query = "inspect")
  h
}

make_bin <- function() {
  req <- POST("http://requestb.in/api/v1/bins")
  fromJSON(req$text)
}
