body_config <- function(body = NULL, encode = "form", type = NULL)  {
  # Post without body
  if (is.null(body))
    return(body_raw(raw()))

  # No body
  if (identical(body, FALSE))
    return(body_httr(post = TRUE, nobody = TRUE))

  # For character/raw, send raw bytes
  if (is.character(body) || is.raw(body)) {
    return(body_raw(body, type = type))
  }

  # Send single file lazily
  if (inherits(body, "upload_file")) {
    con <- file(body$path, "rb")
    size <- file.info(body$path)$size

    return(body_httr(
      post = TRUE,
      readfunction = function(nbytes, ...) {
        bin <- readBin(con, "raw", nbytes)
        if (!length(bin))
          close(con)
        bin
      },
      postfieldsize = size,
      type = body$type
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
    body_raw(jsonlite::toJSON(body, auto_unbox = TRUE), "application/json")
  } else if (encode == "multipart") {
    body <- lapply(body, as.character)
    stopifnot(length(names(body)) > 0)

    request(fields = body)
  } else {
    stop("Unknown encoding", call. = FALSE)
  }
}

body_raw <- function(body, type = NULL) {
  if (!is.raw(body)) {
    body <- charToRaw(paste(body, collapse = "\n"))
  }

  request()
  base <- body_httr(
    post = TRUE,
    postfieldsize = length(body),
    postfields = body,
    type = type %||% "" # For raw bodies, override default POST content-type
  )

  base
}

body_httr <- function(..., type = NULL) {
  list(
    config = c(config(...), content_type(type))
  )
}
