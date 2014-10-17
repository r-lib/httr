parse_text <- function(content, type = NULL, encoding = NULL) {
  charset <- if (!is.null(type)) parse_media(type)$params$charset
  encoding <- toupper(encoding %||% charset %||% "ISO-8859-1")

  if (!(encoding %in% iconvlist())) {
    message("Unknown encoding ", encoding, ". ",
      "Defaulting to latin1 (ISO-8859-1).")
    encoding <- "ISO-8859-1"
  }

  iconv(readBin(content, character()), from = encoding, to = "UTF-8")
}

parse_auto <- function(content, type = NULL, encoding = NULL, ...) {
  if (length(content) == 0) {
    return(NULL)
  }

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

parseability <- function(type) {
  if (is.null(type) || type == "") return("raw")
  mt <- parse_media(type)

  if (exists(mt$complete, parsers)) {
    "parsed"
  } else if (mt$type == "text") {
    "text"
  } else {
    "raw"
  }
}

parsers <- new.env(parent = emptyenv())

# Binary formats ---------------------------------------------------------------

# http://www.ietf.org/rfc/rfc4627.txt - section 3. (encoding)
parsers$`application/json` <- function(x, simplifyVector = FALSE, ...) {
  jsonlite::fromJSON(parse_text(x, encoding = "UTF-8"),
    simplifyVector = simplifyVector, ...)
}
parsers$`application/x-www-form-urlencoded` <- function(x) {
  parse_query(parse_text(x, encoding = "UTF-8"))
}
parsers$`application/xml` <- function(x, ...) {
  need_package("XML")
  XML::xmlParse(parse_text(x, encoding = "UTF-8"), ...)
}

# Text formats -----------------------------------------------------------------
parsers$`image/jpeg` <- function(x) {
  need_package("jpeg")
  jpeg::readJPEG(x)
}

parsers$`image/png` <- function(x) {
  need_package("png")
  png::readPNG(x)
}

parsers$`text/plain` <- function(x) x

parsers$`text/html` <- function(x, ...) {
  need_package("XML")
  XML::htmlParse(x, ...)
}

parsers$`text/xml` <- function(x, ...) {
  need_package("XML")
  XML::xmlParse(x, ...)
}

parsers$`text/csv` <- function(x, ...) {
  read.csv(text = x, stringsAsFactors = FALSE, ...)
}

parsers$`text/tab-separated-values` <- function(x, ...) {
  read.delim(text = x, stringsAsFactors = FALSE, ...)
}
