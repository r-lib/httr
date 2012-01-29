make_request <- function(action, handle, url, content, config = config()) {
  hg <- basicHeaderGatherer()
  
  content <- getURL(url, curl = handle$handle, headerfunction = hg$update)
  # Probably needs to work like Python's request and return text, binary 
  # and raw streams. Need to think about memory implications - maybe should be 
  # argument to request?
  
  info <- last_request(handle)
  times <- request_times(handle)
  
  headers <- as.list(hg$value())
  
  response(
    url = info$effective.url,
    status_code = headers$status,
    headers = headers,
    # cookies = cookies,
    text = content,
    times = times
  )
}

