#' Make bin at http://requestb.in/
#'
make_bin <- function() {
  POST("http://requestb.in/api/v1/bins")
}
