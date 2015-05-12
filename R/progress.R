#' Add a progress bar.
#'
#' @param type Type of progress to display: either number of bytes uploaded
#'   or downloaded.
#' @export
#' @examples
#' \donttest{
#' # If file size is known, you get a progress bar:
#' x <- GET("http://courses.had.co.nz/12-oscon/slides.zip", progress())
#' # Otherwise you get the number of bytes downloaded:
#' x <- GET("http://httpbin.org/drip?numbytes=4000&duration=3", progress())
#' }
progress <- function(type = c("down", "up")) {
  type <- match.arg(type)

  request(options = list(
    noprogress = FALSE,
    progressfunction = progress_bar(type)
  ))
}

progress_bar <- function(type) {
  bar <- NULL
  first <- TRUE

  show_progress <- function(down, up) {
    if (type == "down") {
      total <- down[[1]]
      now <- down[[2]]
    } else {
      total <- up[[1]]
      now <- up[[2]]
    }

    # First progress request on new file
    if (total == 0 && now == 0) {
      bar <<- NULL
      first <<- TRUE
      return()
    }

    if (total == 0) {
      if (first) {
        first <<- FALSE
      }
      cat("\rDownloading: ", bytes(now, digits = 2), "     ", sep = "")
      if (now == total) cat("\n")
      flush.console()
    } else {
      if (is.null(bar)) {
        bar <<- txtProgressBar(max = total, style = 3)
      }
      setTxtProgressBar(bar, now)
    }

    0L
  }

  show_progress
}


bytes <- function(x, digits = 3, ...) {
  power <- min(floor(log(abs(x), 1000)), 4)
  if (power < 1) {
    unit <- "B"
  } else {
    unit <- c("kB", "MB", "GB", "TB")[[power]]
    x <- x / (1000 ^ power)
  }

  formatted <- format(signif(x, digits = digits), big.mark = ",",
    scientific = FALSE)

  paste0(formatted, " ", unit)
}
