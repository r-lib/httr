body_config <- function(body = NULL, encode = "form")  {
  # Post without body
  if (is.null(body)) return(NULL)

  # No body
  if (identical(body, FALSE)) return(body_httr(nobody = 1L))

  # For character/raw, send raw bytes
  if (is.character(body) || is.raw(body)) {
    return(body_raw(body))
  }

  # Send single file lazily
  if (inherits(body, "FileUploadInfo")) {
    con <- file(body$filename, "rb")
    # FIXME: also need to close when done
    mime_type <- body$contentType %||% guess_media(body$filename)
    size <- file.info(body$filename)$size

    return(body_httr(
      upload = TRUE,
      readfunction = function(nbytes, ...) readBin(con, "raw", nbytes),
      infilesize = size,
      httpheader = c("Content-type" = mime_type)
    ))
  }

  if (!is.list(body)) {
    stop("Unknown body type: must be NULL, FALSE, character, raw or list",
      call. = FALSE)
  }

  # Deal with three ways to encode: form, multipart & json
  if (encode == "form") {
    body_raw(compose_query(body), "application/x-www-form-urlencoded")
  } else if (encode == "json") {
    body_raw(jsonlite::toJSON(body), "application/json")
  } else if (encode == "multipart") {
    # For multipart, rely on RCurl .postForm function to make it possible
    # to intermingle on-disk and in-memory content.

    charify <- function(x) {
      if (inherits(x, "FileUploadInfo")) return(x)
      as.character(x)
    }
    body <- lapply(body, charify)
    stopifnot(length(names(body)) > 0)

    body_rcurl(body = body, style = NA)
  } else {
    stop("Unknown encoding", call. = FALSE)
  }
}


body_rcurl <- function(body = NULL, style = NULL) {
  list(
    config = NULL,
    body = body,
    style = style,
    curl_post = TRUE
  )
}

body_httr <- function(...) {
  list(
    config = config(...),
    curl_post = FALSE
  )
}

body_raw <- function(body, type = NULL) {
  if (!is.raw(body)) {
    body <- charToRaw(paste(body, collapse = "\n"))
  }

  base <- body_httr(
    upload = TRUE,
    readfunction = body,
    infilesize = length(body)
  )
  if (!is.null(type)) {
    base$config$httpheader <- c("Content-type" = type)
  }
  base
}
