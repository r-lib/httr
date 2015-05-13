body_config <- function(body = NULL, encode = "form", type = NULL)  {
  # No body
  if (identical(body, FALSE))
    return(config(post = TRUE, nobody = TRUE))

  # For character/raw, send raw bytes
  if (is.character(body) || is.raw(body))
    return(body_raw(body, type = type))

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

  # Post with empty body
  if (is.null(body))
    return(body_raw(raw()))

  if (!is.list(body)) {
    stop("Unknown type of `body`: must be NULL, FALSE, character, raw or list",
      call. = FALSE)
  }

  body <- compact(body)

  # Deal with three ways to encode: form, multipart & json
  if (encode == "form") {
    body_raw(compose_query(body), "application/x-www-form-urlencoded")
  } else if (encode == "json") {
    body_raw(jsonlite::toJSON(body, auto_unbox = TRUE), "application/json")
  } else if (encode == "multipart") {
    if (!all(has_name(body)))
      stop("All components of body must be named", call. = FALSE)
    request(fields = lapply(body, as.character))
  } else {
    stop("Unknown `encoding`: must be 'form', 'json' or 'multipart'.",
      call. = FALSE)
  }
}

body_raw <- function(body, type = NULL) {
  if (is.character(body)) {
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
