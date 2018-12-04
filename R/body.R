body_config <- function(body = NULL,
                        encode = c("form", "json", "multipart", "raw"),
                        type = NULL) {
  # No body
  if (identical(body, FALSE)) {
    return(config(post = TRUE, nobody = TRUE))
  }

  # Send single file lazily
  if (inherits(body, "form_file")) {
    con <- file(body$path, "rb")
    size <- file.info(body$path)$size

    return(c(
      config(
        post = TRUE,
        readfunction = function(nbytes, ...) {
          if (is.null(con)) {
            return(raw())
          }
          bin <- readBin(con, "raw", nbytes)
          if (length(bin) < nbytes) {
            close(con)
            con <<- NULL
          }
          bin
        },
        postfieldsize_large = size
      ),
      content_type(body$type)
    ))
  }

  # For character/raw, send raw bytes
  if (is.character(body) || is.raw(body)) {
    return(body_raw(body, type = type))
  }

  # Post with empty body
  if (is.null(body)) {
    return(body_raw(raw()))
  }

  if (!is.list(body)) {
    stop("Unknown type of `body`: must be NULL, FALSE, character, raw or list",
      call. = FALSE
    )
  }

  body <- compact(body)

  # Deal with three ways to encode: form, multipart & json
  encode <- match.arg(encode)
  if (encode == "raw") {
    body_raw(body)
  } else if (encode == "form") {
    body_raw(compose_query(body), "application/x-www-form-urlencoded")
  } else if (encode == "json") {
    body_raw(
      jsonlite::toJSON(body, auto_unbox = TRUE, digits = 22),
      "application/json"
    )
  } else if (encode == "multipart") {
    if (!all(has_name(body))) {
      stop("All components of body must be named", call. = FALSE)
    }
    request(fields = lapply(body, as_field))
  }
}

as_field <- function(x) UseMethod("as_field")
#' @export
as_field.numeric <- function(x) as.character(x)
#' @export
as_field.logical <- function(x) as.character(x)
#' @export
as_field.default <- function(x) x # assume curl will handle

body_raw <- function(body, type = NULL) {
  if (is.character(body)) {
    body <- charToRaw(paste(body, collapse = "\n"))
  }
  stopifnot(is.raw(body))

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
