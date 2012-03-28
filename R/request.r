# Need consistent set of functions that return raw results and headers,
# and function (like RCurl:::processContent) to automatically create
# correctly encoded text, and optionally parse into R objects.

make_request <- function(action, handle, url, content, params, config = list()) {
  hg <- basicHeaderGatherer()
  
  opts <- modifyList(default_config(), config)
  opts$headerfunction <- hg$update

  content <- switch(action,
    GET = getURL(url, curl = handle$handle, .opts = opts),
    POST = post_request(handle, url, params = params, opts = opts),
    HEAD = head_request(handle, url, opts = opts),
    stop("Unknown action type")
  )
  
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
    # cookies = cookies,
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

post_request <- function (handle, url, params = list(), opts = list(), style = "POST", encoding = integer())  {
  stopifnot(is.handle(handle))
  stopifnot(is.character(url), length(url) == 1)
  stopifnot(is.character(style), length(style) == 1)

  style <- RCurl:::PostStyles[match.arg(style, names(RCurl:::PostStyles))]
  if (style == RCurl:::PostStyles["POST"]) {
    encode <- function(x) {
      if (inherits(x, "AsIs")) return(x)
      curlEscape(x)
    }
    params <- vapply(params, encode, FUN.VALUE = character(1))
    params <- str_c(names(params), params, sep = "=", collapse = "&")
  } else {
    params <- as.list(params)
  }

  buffer <- binaryBuffer()
  default_opts <- list(
    url = url,
    writefunction = getNativeSymbolInfo("R_curl_write_binary_data")$address,
    writedata = buffer@ref)
  
  if (params == "") {
    default_opts$post <- 1L
    default_opts$postfieldsize <- 0L
  }
    
  # Create option list, but don't set values
  opts <- curlSetOpt(curl = NULL, .opts = modifyList(default_opts, opts))

  .Call("R_post_form", handle$handle@ref, opts, params, TRUE,
    as.integer(style), PACKAGE = "RCurl")
  
  reset(handle$handle)  
  rawToChar(as(buffer, "raw"))
}
