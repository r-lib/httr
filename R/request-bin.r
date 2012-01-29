#' Make bin at http://requestb.in/
#'
make_bin <- function() {
  req <- POST("http://requestb.in/api/v1/bins")
  fromJSON(req$text)
}
