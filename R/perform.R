# Abstract over the differences in RCurl API depending on whether or not
# you send a body.
perform <- function(handle, opts, body) {
  # Must always override headerfunction and writefunction
  # FIXME: throw error if these are set already
  hg <- basicHeaderGatherer()
  opts$headerfunction <- hg$update
  buffer <- binaryBuffer()
  opts$writefunction <-
    getNativeSymbolInfo("R_curl_write_binary_data")$address
  opts$writedata <- buffer@ref

  opts <- modify_config(opts, body$config)
  # Ensure config always gets reset
  on.exit(reset_handle_config(handle, opts), add = TRUE)
  curl_opts <- curlSetOpt(curl = NULL, .opts = opts)

  if (isTRUE(body$curl_post)) {
    .postForm(handle$handle, curl_opts, body$body, body$style)
    # Reset curl options that RCurl sets
    curlSetOpt(httppost = NULL, post = NULL, postfields = NULL,
      curl = handle$handle)
  } else {
    curlPerform(curl = handle$handle, .opts = curl_opts$values)
  }

  content <- methods::as(buffer, "raw")
  info <- last_request(handle)
  times <- request_times(handle)
  headers <- insensitive(as.list(hg$value()))
  status <- as.numeric(str_extract(headers$status, "[0-9]+"))

  response(
    url = info$effective.url,
    handle = handle,
    status_code = status,
    headers = headers,
    cookies = parse_cookies(info$cookielist),
    content = content,
    times = times,
    config = config
  )
}
