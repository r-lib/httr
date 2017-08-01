#' Add a progress bar.
#'
#' @param type Type of progress to display: either number of bytes uploaded
#'   or downloaded.
#' @param con Connection to send output too. Usually \code{stdout()} or
#'    \code{stderr}.
#' @export
#' @examples
#' cap_speed <- config(max_recv_speed_large = 10000)
#'
#' \donttest{
#' # If file size is known, you get a progress bar:
#' x <- GET("http://httpbin.org/bytes/102400", progress(), cap_speed)
#' # Otherwise you get the number of bytes downloaded:
#' x <- GET("http://httpbin.org/stream-bytes/102400", progress(), cap_speed)
#' }
progress <- function(type = c("down", "up"), con = stdout()) {
  type <- match.arg(type)

  request(options = list(
    noprogress = FALSE,
    progressfunction = progress_bar(type, con)
  ))
}

progress_bar <- function(type, con) {
  bar <- NULL

  show_progress <- function(down, up) {
    if (type == "down") {
      total <- down[[1]]
      now <- down[[2]]
    } else {
      total <- up[[1]]
      now <- up[[2]]
    }

    if (total == 0 && now == 0) {
      # Reset progress bar when seeing first byte
      bar <<- NULL
    } else if (total == 0) {
      cat("\rDownloading: ", bytes(now, digits = 2), "     ", sep = "", file = con)
      utils::flush.console()
      # Can't automatically add newline on completion because there's no
      # way to tell when then the file has finished downloading
    } else {
      if (is.null(bar)) {
        bar <<- utils::txtProgressBar(max = total, style = 3, file = con)
      }
      utils::setTxtProgressBar(bar, now)
      if (now == total) close(bar)
    }

    TRUE
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
