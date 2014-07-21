# Abstract over the differences in RCurl API depending on whether or not
# you send a body.
perform <- function(handle, opts, body) {
  # Must always override headerfunction and writefunction
  # FIXME: throw error if these are set already
  headers <- character()
  add_header <- function(text) {
    headers <<- c(headers, text)
    nchar(text, "bytes")
  }
  opts$headerfunction <- add_header
  buffer <- RCurl::binaryBuffer()
  opts$writefunction <-
    getNativeSymbolInfo("R_curl_write_binary_data")$address
  opts$writedata <- buffer@ref

  opts <- modify_config(opts, body$config)
  # Ensure config always gets reset
  on.exit(reset_handle_config(handle, opts), add = TRUE)
  curl_opts <- RCurl::curlSetOpt(curl = NULL, .opts = opts)

  if (isTRUE(body$curl_post)) {
    RCurl::.postForm(handle$handle, curl_opts, body$body, body$style)
    # Reset curl options that RCurl sets
    RCurl::curlSetOpt(httppost = NULL, post = NULL, postfields = NULL,
      curl = handle$handle)
  } else {
    RCurl::curlPerform(curl = handle$handle, .opts = curl_opts$values)
  }

  headers <- parse_headers(headers)
  content <- methods::as(buffer, "raw")

  response(
    url = last_request(handle)$effective.url,
    handle = handle,
    status_code = last(headers)$status,
    headers = last(headers)$headers,
    all_headers = headers,
    cookies = cookies(handle),
    content = content,
    times = request_times(handle),
    config = config
  )
}



# http://www.w3.org/Protocols/rfc2616/rfc2616-sec6.html

# Parses a header lines as recieved from libcurl. Multiple responses
# will be intermingled, each separated by an http status line.
parse_headers <- function(lines) {
  lines <- gsub("\r?\n$", "", lines)

  new_response <- grepl("^HTTP", lines)
  grps <- cumsum(new_response)

  lapply(unname(split(lines, grps)), parse_single_header)
}

parse_single_header <- function(lines) {
  # Parse initial status line
  status <- as.list(strsplit(lines[1], "\\s+")[[1]])
  names(status) <- c("version", "status", "message")
  status$status <- as.integer(status$status)

  # Parse headers into name-value pairs
  header_lines <- lines[lines != ""][-1]
  pos <- regexec("^(.*?): (.*?)$", header_lines)
  pieces <- regmatches(header_lines, pos)

  n <- vapply(pieces, length, integer(1))
  if (any(n != 3)) {
    bad <- header_lines[n != 3]
    pieces <- pieces[n == 3]

    warning("Failed to parse headers:\n", paste0(bad, "\n"), call. = FALSE)
  }

  names <- vapply(pieces, "[[", 2, FUN.VALUE = character(1))
  values <- lapply(pieces, "[[", 3)
  headers <- insensitive(setNames(values, names))

  list(status = status$status, version = status$version, headers = headers)
}
