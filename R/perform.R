
# Abstract over the differences in RCurl API depending on whether or not
# you send a body.
perform <- function(handle, writer, method, opts, body) {
  # Cache exact request so it can easily be replayed.
  request <- list(
    handle = handle,
    writer = writer,
    method = toupper(method),
    opts = opts,
    body = body
  )

#   writer <- write_init(writer)
#   opts <- modifyList(opts, write_opts(writer))

  # Set handle options
  opts <- modify_config(body$config, opts)
  browser()
  do.call(curl::handle_setopt, c(list(handle$handle), opts))
  on.exit(curl::handle_reset(handle$handle), add = TRUE)


  if (isTRUE(body$curl_post))
    do.call(curl::handle_setform, c(list(handle$handle), body))

  res <- curl::curl_perform(handle = handle$handle)

  headers <- curl::parse_headers(res$headers, multiple = TRUE)
  content <- write_term(writer)

  if (!is.null(headers$date)) {
    date <- parse_http_date(headers$Date)
  } else {
    date <- Sys.time()
  }

  response(
    url = res$url,
    status_code = res$status_code,
    headers = last(headers),
    all_headers = headers,
    cookies = curl::handle_cookies(handle),
    content = content,
    date = date,
    times = res$times,
    request = request
  )
}

