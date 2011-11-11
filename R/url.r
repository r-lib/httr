# Good example for testing
# http://stevenlevithan.com/demo/parseuri/js/

# Parsed according to the details in http://tools.ietf.org/html/rfc1808.html

#' @return a list containing: \itemize{
#'  \item scheme
#'  \item hostname
#'  \item port
#'  \item path
#'  \item params
#'  \item query
#'  \item username
#'  \item password
#' }
parse_url <- function(url) {
  url <- as.character(url)
  stopifnot(length(url) == 1)
  
  pull_off <- function(pattern) {
    if (!str_detect(url, pattern)) return(NULL)
    
    piece <- str_match(url, pattern)[, 2]
    url <<- str_replace(url, pattern, "")
    
    piece
  }
  
  fragment <- pull_off("#(.*)$")
  scheme <- pull_off("^([[:alpha:]+.-]+):")
  netloc <- pull_off("^//([^/]*)/?")
  
  if (!is.null(netloc)) {
    port <- str_match(netloc, ":([0-9]+)^")[, 2]
    # username <- 
  } else {
    port <- username <- password <- hostname <- NULL
  }
  
  query <- pull_off("\\?(.*)$")
  params <- pull_off(";(.*)$")

  return(list(fragment = fragment, scheme = scheme, netloc = netloc, 
    query = query, params = params, path = url))
  
}

build_url <- function(scheme = "http", hostname, port = NULL, path, query = list(), params = list(), username = NULL, password = NULL) { 
  if (length(params) == 0) return(url)
  
  if (is.list(query)) {
    escaped <- curlEscape(params)
    query <- str_c(names(params), "=", escaped, collapse = "&")    
  }
  stopifnot(is.character(query))
  stopifnot(length(query) == 1)
  
  str_c(url, "?", query)
}


modify_url <- function(url, scheme, hostname, port, path, query, params, username, password) {
  old <- parse_url(url)
  new <- list(scheme = scheme, hostname = hostname, port = port, path = path,
    query = query, params = params, username = username, password = password)
  
  build_url(modifyList(old, new))
}

