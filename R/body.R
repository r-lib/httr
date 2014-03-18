body_config <- function(body = NULL, multipart = TRUE)  {
  if (is.null(body)) {
    # No body supply
    NULL
  } else if (identical(body, FALSE)) {
    # No body
    list(
      curl_post = FALSE,
      config = config(nobody = 1L)
    )
  } else if (is.character(body) || is.raw(body)) {
    # For character/raw don't need to use postForm
    if (is.character(body)) {
      body <- charToRaw(paste(body, collapse = "\n"))
    }
    list(
      curl_post = FALSE,
      config = config(
        upload = TRUE,
        readfunction = body,
        infilesize = length(body)
      )
    )
  } else if (is.list(body)) {
    if (!multipart) {
      encode <- function(x) {
        if (inherits(x, "AsIs")) return(x)
        curlEscape(x)
      }
      body <- vapply(compact(body), encode, FUN.VALUE = character(1))
      body <- str_c(names(body), body, sep = "=", collapse = "&")
    } else {
      charify <- function(x) {
        if (inherits(x, "FileUploadInfo")) return(x)
        as.character(x)
      }
      body <- lapply(body, charify)
      stopifnot(length(names(body)) > 0)
    }

    list(
      curl_post = TRUE,
      body = body,
      style = if (multipart) NA else 47
    )
  } else {
    stop("Unknown body type: must be NULL, character, raw or list",
      call. = FALSE)
  }
}

