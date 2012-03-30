# Need consistent set of functions that return raw results and headers,
# and function (like RCurl:::processContent) to automatically create
# correctly encoded text, and optionally parse into R objects.

make_request <- function(action, handle, url, content, body, config = list()) {
  hg <- basicHeaderGatherer()
  
  opts <- modifyList(default_config(), config)
  opts$headerfunction <- hg$update

  content <- switch(action,
    GET = getURL(url, curl = handle$handle, .opts = opts),
    POST = post_request(handle, url, body = body, opts = opts),
    HEAD = head_request(handle, url, opts = opts),
    stop("Unknown action type")
  )
  reset_handle_config(handle, opts)  
    
  # Probably needs to work like Python's request and return text, binary 
  # and raw streams. Need to think about memory implications - maybe should be 
  # argument to request?
  
  info <- last_request(handle)
  times <- request_times(handle)
  headers <- as.list(hg$value())
  
  response(
    url = info$effective.url,
    handle = handle,
    status_code = headers$status,
    headers = headers,
    cookies = parse_cookies(info$cookielist),
    text = content,
    times = times,
    config = config
  )
}

head_request <- function(handle, url, opts) {
  opts$nobody <- 1L
  opts$url <- url

  curlPerform(curl = handle$handle, .opts = opts)
  reset(handle$handle)
  NULL
}

post_request <- function (handle, url, body = list(), opts = list(), style = "POST", encoding = integer())  {
  stopifnot(is.handle(handle))
  stopifnot(is.character(url), length(url) == 1)
  stopifnot(is.character(style), length(style) == 1)

  style <- RCurl:::PostStyles[match.arg(style, names(RCurl:::PostStyles))]
  if (style == RCurl:::PostStyles["POST"]) {
    encode <- function(x) {
      if (inherits(x, "AsIs")) return(x)
      curlEscape(x)
    }
    body <- vapply(body, encode, FUN.VALUE = character(1))
    body <- str_c(names(body), body, sep = "=", collapse = "&")
  } else {
    body <- as.list(body)
  }

  buffer <- binaryBuffer()
  default_opts <- list(
    url = url,
    writefunction = getNativeSymbolInfo("R_curl_write_binary_data")$address,
    writedata = buffer@ref)
  
  if (body == "") {
    default_opts$post <- 1L
    default_opts$postfieldsize <- 0L
  }
    
  # Create option list, but don't set values
  opts <- curlSetOpt(curl = NULL, .opts = modifyList(default_opts, opts))

  .Call("R_post_form", handle$handle@ref, opts, body, TRUE,
    as.integer(style), PACKAGE = "RCurl")
  
  reset(handle$handle)  
  rawToChar(as(buffer, "raw"))
}


last_request <- function(x) {
  stopifnot(is.handle(x))
  getCurlInfo(x[[1]])
}

request_times <- function(x) {
  req <- last_request(x)
  
  c(redirect = req$redirect.time, 
    namelookup = req$namelookup.time, 
    connect = req$connect.time, 
    pretransfer = req$pretransfer.time, 
    starttransfer = req$starttransfer.time, 
    total = req$total.time)

}

parse_cookies <- function(x) {
  if (length(x) == 0) return(list())
  
  pieces <- str_split_fixed(x, fixed("\t"), n = 7)
  setNames(as.list(pieces[, 7]), pieces[, 6])
}