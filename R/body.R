body_config <- function(body = NULL, encode = "form", type = NULL)  {
  # Post without body
  if (is.null(body))
    return(body_raw(raw()))

  # No body
  if (identical(body, FALSE))
    return(config(post = TRUE, nobody = TRUE))

  # For character/raw, send raw bytes
  if (is.character(body) || is.raw(body)) {
    return(body_raw(body, type = type))
  }

  # Send single file lazily
  if (inherits(body, "form_file")) {
    con <- file(body$path, "rb")
    size <- file.info(body$path)$size

    return(c(
      config(
        post = TRUE,
        readfunction = function(nbytes, ...) {
          bin <- readBin(con, "raw", nbytes)
          if (!length(bin))
            close(con)
          bin
        },
        postfieldsize = size
      ),
      content_type(body$type)
    ))
  }

  if (!is.list(body)) {
    stop("Unknown body type: must be NULL, FALSE, character, raw or list",
      call. = FALSE)
  }

  body <- compact(body)

  # Deal with three ways to encode: form, multipart & json
  if (encode == "form") {
    body_raw(compose_query(body), "application/x-www-form-urlencoded")
  } else if (encode == "json") {
    body_raw(jsonlite::toJSON(body, auto_unbox = TRUE), "application/json")
  } else if (encode == "multipart") {
    body <- lapply(body, as.character)
    if (!all(has_names(body)))
      stop("All components of body must be named", call. = FALSE)

    request(fields = body)
  } else {
    stop("Unknown encoding", call. = FALSE)
  }
}

body_raw <- function(body, type = NULL) {
  if (!is.raw(body)) {
    body <- charToRaw(paste(body, collapse = "\n"))
  }

  c(
    config(
      post = TRUE,
      postfieldsize = length(body),
      postfields = body
    ),
    # For raw bodies, override default POST content-type
    content_type(type %||% "")
  )
}

body_httr <- function(..., type = NULL) {
  request()
  list(
    config = c(config(...), content_type(type))
  )
}
