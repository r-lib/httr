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
#' parse_url("http://google.com/")
#' parse_url("http://google.com:80/")
#' parse_url("http://google.com:80/?a=1&b=2")
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
    
    pieces <- str_split(netloc, "@")[[1]]
    if (length(pieces) == 1) {
      username <- NULL
      password <- NULL
     
      host <- pieces
    } else {
      user_pass <- str_split(pieces[[1]], ":")[[1]]
      username <- user_pass[1]
      password <- user_pass[2]
      
      host <- pieces[2]
    }
    
    host_pieces <- str_split(pieces, ":")[[1]]
    hostname <- host_pieces[1]
    port <- host_pieces[2]
  } else {
    port <- username <- password <- hostname <- NULL
  }
  
  query <- pull_off("\\?(.*)$")
  if (!is.null(query)) {
    params <- vapply(str_split(query, "&")[[1]], str_split_fixed, "=", 2,
      FUN.VALUE = character(2))
    values <- type.convert(curlUnescape(params[2, ]), as.is = TRUE)
    names <- params[1, ]
    query <- setNames(as.list(values), names)
  }  
  params <- pull_off(";(.*)$")

  return(list(scheme = scheme, hostname = hostname, port = port, path = url, 
    query = query, params = params, username = username, password = password))
  
}

build_url <- function(hostname, path, scheme = "http", port = NULL, query = list(), params = list(), username = NULL, password = NULL) { 

  if (is.list(query)) {
    escaped <- curlEscape(query)
    query <- str_c(names(query), "=", escaped, collapse = "&")    
  }
  if (!is.null(query)) {
    stopifnot(is.character(query), length(query) == 1)
    query <- str_c("?", query)
  }
  
  if (!is.null(port)) {
    port <- str_c(":", port)
  }
  
  str_c(scheme, "://", hostname, "/", path, query)
}


modify_url <- function(url, scheme = NULL, hostname = NULL, port = NULL, path = NULL, query = NULL, params = NULL, username = NULL, password = NULL) {
  old <- parse_url(url)
  new <- compact(list(scheme = scheme, hostname = hostname, port = port, path = path,
    query = query, params = params, username = username, password = password))
  
  do.call("build_url", modifyList(old, new))
}


compact <- function(x) Filter(Negate(is.null), x)
