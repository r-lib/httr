# Good example for testing
# http://stevenlevithan.com/demo/parseuri/js/

#' Parsed url according RFC1808.
#'
#' See \url{http://tools.ietf.org/html/rfc1808.html} for details of parsing
#' algorithm.
#' 
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
#' @export
#' @examples
#' parse_url("http://google.com/")
#' parse_url("http://google.com:80/")
#' parse_url("http://google.com:80/?a=1&b=2")
parse_url <- function(url) {
  if (is.url(url)) return(url)
  
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
    
    host_pieces <- str_split(host, ":")[[1]]
    hostname <- host_pieces[1]
    port <- if (length(host_pieces) > 1) host_pieces[2]
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

  structure(list(
    scheme = scheme, hostname = hostname, port = port, path = url, 
    query = query, params = params, username = username, password = password),
    class = "url")
}

is.url <- function(x) inherits(x, "url")
print.url <- function(x, ...) {
  cat("Url: ", build_url(x), "\n", sep = "")
}
"[.url" <- function(x, ...) {
  structure(NextMethod(), class = "url")
}

build_url <- function(url) { 
  stopifnot(is.url(url))

  scheme <- url$scheme
  hostname <- url$hostname

  if (!is.null(url$port)) {
    port <- str_c(":", url$port)
  } else {
    port <- NULL
  }

  path <- url$path
  
  if (is.list(url$query)) {
    escaped <- curlEscape(url$query)
    query <- str_c(names(url$query), "=", escaped, collapse = "&")    
  } else {
    query <- url$query
  }
  if (!is.null(query)) {
    stopifnot(is.character(query), length(query) == 1)
    query <- str_c("?", query)
  }
  
  if (!is.null(url$username)) {
    login <- str_c(url$username, ":", url$password, "@")
  } else {
    login <- NULL
  }
  
  str_c(scheme, "://", login, hostname, port, "/", path, query)
}

modify_url <- function(url, scheme = NULL, hostname = NULL, port = NULL, path = NULL, query = NULL, params = NULL, username = NULL, password = NULL) {
  
  old <- parse_url(url)
  new <- compact(list(
    scheme = scheme, hostname = hostname, port = port, path = path, 
    query = query, params = params, username = username, password = password))
  
  build_url(modifyList(old, new))
}


compact <- function(x) Filter(Negate(is.null), x)
