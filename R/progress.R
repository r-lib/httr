#' Add a progress bar.
#'
#' This is still somewhat experimental. Currently, due to a bug in RCurl,
#' you can't abort downloads
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
#'
#' x <- GET("http://httpbin.org/drip?numbytes=4000&duration=1", progress())
#' x <- GET("http://httpbin.org/drip?numbytes=4000&duration=1")
progress <- function(type = c("down", "up")) {
  type <- match.arg(type)

  config(noprogress = FALSE, progressfunction = progress_bar(type))
}

progress_bar <- function(type ) {
  bar <- NULL
  first <- TRUE

  unsafe <- function(down, up) {
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

    1
  }

  # Catch errors and interrupts - this is suboptimal because it means that
  # you can't interrupt the transfer, but otherwise you'll crash R
  # https://github.com/omegahat/RCurl/issues/10
  function(down, up) {
    tryCatch(unsafe(down, up),
      error = function(e, ...) {
        message("Error:", e$message)
        1
      },
      interrupt = function(...) {
        message("Interrupted by user")
        1
      }
    )
  }
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
