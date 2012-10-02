parse_text <- function(content, type = NULL, encoding = NULL) {
  charset <- if (!is.null(type)) parse_media(type)$params$charset
  encoding <- toupper(encoding %||% charset %||% "ISO-8859-1")

  if (!(encoding %in% iconvlist())) {
    message("Unknown encoding ", encoding, ". ",
      "Defaulting to latin1 (ISO-8859-1).")
    encoding <- "ISO-8859-1"
  }

  iconv(rawToChar(content), from = encoding, to = "UTF-8")
}

parse_auto <- function(content, type = NULL, encoding = NULL, ...) {
  if (is.null(type)) {
    stop("Unknown mime type: can't parse automatically. Use the type ",
      "argument to specify manually.", call. = FALSE)
  }

  mt <- parse_media(type)
  if (mt$type == "text") {
    content <- parse_text(content, type, encoding = encoding)
  }

  parser <- parsers[[mt$complete]]
  if (is.null(parser)) {
    stop("No automatic parser available for ", mt$complete, ".",
      call. = FALSE)
  } else {
    parser(content, ...)
  }
}

parsers <- new.env(parent = emptyenv())

# http://www.ietf.org/rfc/rfc4627.txt - section 3. (encoding)
parsers$`application/json` <- function(x, ...) {
  require("rjson")
  fromJSON(parse_text(x, encoding = "UTF-8"), ...)
}
parsers$`application/x-www-form-urlencoded` <- function(x) {
  parse_query(parse_text(x, encoding = "UTF-8"))
}

parsers$`image/jpeg` <- function(x) {
  require("jpeg")
  readJPEG(x)
}
parsers$`image/png` <- function(x) {
  require("png")
  readPNG(x)
}

parsers$`text/plain` <- function(x) x
parsers$`text/html` <- function(x, ...) {
  require("XML")
  htmlTreeParse(x, ...)
}
parsers$`text/xml` <- function(x, ...) {
  require("XML")
  xmlParse(x, ...)
}

parseability <- function(type) {
  if (is.null(type)) return("raw")
  mt <- parse_media(type)

  if (exists(mt$complete, parsers)) {
    "parsed"
  } else if (mt$type == "text") {
    "text"
  } else {
    "raw"
  }
}
