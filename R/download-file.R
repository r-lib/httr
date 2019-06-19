possibly <- function(.f, otherwise, quiet = TRUE) {
  force(otherwise)
  function(...) {
    tryCatch(
      .f(...),
      error = function(e) {
        if (!quiet)
          message("Error: ", e$message)
        otherwise
      },
      interrupt = function(e) {
        stop("Terminated by user", call. = FALSE)
      }
    )
  }
}

safe_GET <- possibly(GET, NULL, quiet = TRUE)

#' Download file from the Internet (cache-aware)
#'
#' This is an alternative to [utils::download.file()] and a convenience wrapper for
#' [GET()] + [httr::write_disk()] to perform file downloads.
#'
#' Since this function uses [GET()], callers can pass in `httr` configuration
#' options to customize the behaviour of the download process (e.g. specify a `User-Agent` via
#' [user_agent()], set proxy config via [use_proxy()], etc.).
#'
#' The function is also "cache-aware" in the sense that you deliberately have to specify
#' `overwrite = TRUE` to force a re-download. This has the potential to save bandwidth
#' of both the caller and the site hosting files for download.
#'
#' @note While this function supports specifying multiple URLs and download paths it
#'       does not perform concurrent downloads.
#' @param url the url(s) of the file to retrieve. If multiple URLs are provided then the same
#'        number of [path]s must also be provided.
#' @param path Path(s) to save content to. If more than one `path` is specified then the same
#'        number of [url]s must also be provided. THis parameter will be [path.expand()]ed.
#' @param overwrite	Will only overwrite existing path if `TRUE`.
#' @param ... passed on to [GET()]
#' @return a data frame containing the `url`(s), `path`(s), cache status, and HTTP status code(s).
#'         If there was an error downloading a file the path, status code, and HTTP status
#'         columns will be `NA`. If the file was now re-downloaded the status code will be 399
#' @seealso [GET()]; [write_disk()]
#' @export
#' @examples
#' tmp1 <- tempfile()
#' tmp2 <- tempfile()
#' tmp3 <- tempfile()
#'
#' download_file("https://google.com", tmp1) # downloads fine
#' download_file("https://google.com", tmp1) # doesn't re-download since it's cached
#' download_file("https://google.com", tmp1, overwrite = TRUE) # re-downloads (overwrites file)
#' download_file("https://google.com", tmp2) # re-downloads (new file)
#' download_file("badurl", tmp3)) # handles major errors gracefully
#'
#' # multi-file example with no-caching
#' download_file(
#'   c(rep("https://google.com", 2), "badurl"),
#'   c(tmp1, tmp2, tmp3),
#'   overwrite = TRUE
#' )
#'
#' # multi-file example with caching
#' download_file(
#'   c(rep("https://google.com", 2), "badurl"),
#'   c(tmp1, tmp2, tmp3),
#'   overwrite = FALSE
#' )
download_file <- function(url, path, overwrite = FALSE, ...) {

  url <- as.character(url)
  path <- as.character(path)

  if (length(url) != length(path)) {
    stop("The lengths of the 'url' and 'path' parameters must be equal.", call.=FALSE)
  }

  path <- path.expand(path)

  overwrite <- as.logical(overwrite)
  stopifnot(length(overwrite) == 1)

  out <- vector("list", length = length(url))

  for (idx in seq_along(url)) {

    u <- url[[idx]]
    p <- path[[idx]]

    if (file.exists(p)) {

      if (overwrite) { # file exists but caller wants to re-download
        res <- safe_GET(u, write_disk(p, overwrite = TRUE), ...)
        if (is.null(res)) {
          p <- NA_character_
          cache_used = FALSE
          status <- NA_integer_
        } else {
          cache_used <-  FALSE
          status <- status_code(res)
        }
      } else { # file exists but caller does not want to re-download
        if (is.null(parse_url(u)[["hostname"]])) { # quick non-network test for invalid URL
          p <- NA_character_
          cache_used = FALSE
          status <- NA_integer_
        } else {
          cache_used <- TRUE
          status <- 399L
        }
      }

    } else { # file does not exist, so do the thing

      res <- safe_GET(u, write_disk(p, overwrite = overwrite), ...)

      if (is.null(res)) {
        p <- NA_character_
        cache_used <- FALSE
        status <- NA_integer_
      } else {
        status <- status_code(res)
        cache_used <- FALSE
      }

    }

    out[[idx]] <- data.frame(
      url = u, path = p,
      status_code = status,
      cache_used = cache_used,
      stringsAsFactors = FALSE
    )

  }

  out <- do.call(rbind.data.frame, out)
  class(out) <- c("tbl_df", "tbl", "data.frame")

  invisible(out)

}












