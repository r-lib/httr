body_config <- function(body = NULL, encode = "form", type = NULL)  {
  # Post without body
  if (is.null(body)) return(body_raw(raw()))

  # No body
  if (identical(body, FALSE)) return(body_httr(post = TRUE, nobody = TRUE))

  # For character/raw, send raw bytes
  if (is.character(body) || is.raw(body)) {
    return(body_raw(body, type = type))
  }

  # Send single file lazily
  if (inherits(body, "FileUploadInfo")) {
    con <- file(body$filename, "rb")
    # FIXME: also need to close when done
    mime_type <- body$contentType %||%
      mime::guess_type(body$filename, empty = NULL)
    size <- file.info(body$filename)$size

    return(body_httr(
      post = TRUE,
      readfunction = function(nbytes, ...) readBin(con, "raw", nbytes),
      postfieldsize = size,
      type = mime_type
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

body_httr <- function(..., type = NULL) {
  list(
    config = c(config(...), content_type(type)),
    curl_post = FALSE
  )
}

body_raw <- function(body, type = NULL) {
  if (!is.raw(body)) {
    body <- charToRaw(paste(body, collapse = "\n"))
  }

  base <- body_httr(
    post = TRUE,
    postfieldsize = length(body),
    postfields = body,
    type = type %||% "" # For raw bodies, override default POST content-type
  )

  base
}
