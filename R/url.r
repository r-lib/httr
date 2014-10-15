# Good example for testing
# http://stevenlevithan.com/demo/parseuri/js/

#' Parse and build urls according to RFC1808.
#'
#' See \url{http://tools.ietf.org/html/rfc1808.html} for details of parsing
#' algorithm.
#'
#' @param url a character vector (of length 1) to parse into components,
#'   or for \code{build_url} a url to turn back into a string.
#' @return a list containing: \itemize{
#'  \item scheme
#'  \item hostname
#'  \item port
#'  \item path
#'  \item params
#'  \item fragment
#'  \item query, a list
#'  \item username
#'  \item password
#' }
#' @export
#' @examples
#' parse_url("http://google.com/")
#' parse_url("http://google.com:80/")
#' parse_url("http://google.com:80/?a=1&b=2")
#'
#' build_url(parse_url("http://google.com/"))
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
  netloc <- pull_off("^//([^/?]*)/?")

  if (!is.null(netloc)) {

    pieces <- strsplit(netloc, "@")[[1]]
    if (length(pieces) == 1) {
      username <- NULL
      password <- NULL

      host <- pieces
    } else {
      user_pass <- strsplit(pieces[[1]], ":")[[1]]
      username <- user_pass[1]
      if (length(user_pass) == 1) {
        password <- NULL
      } else {
        password <- user_pass[2]
      }

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
    query <- parse_query(query)
  }
  params <- pull_off(";(.*)$")

  structure(list(
      scheme = scheme, hostname = hostname, port = port, path = url,
      query = query, params = params, fragment = fragment,
      username = username, password = password),
    class = "url")
}

is.url <- function(x) inherits(x, "url")
print.url <- function(x, ...) {
  cat("Url: ", build_url(x), "\n", sep = "")
}
"[.url" <- function(x, ...) {
  structure(NextMethod(), class = "url")
}

#' @export
#' @rdname parse_url
build_url <- function(url) {
  stopifnot(is.url(url))

  scheme <- url$scheme
  hostname <- url$hostname

  if (!is.null(url$port)) {
    port <- paste0(":", url$port)
  } else {
    port <- NULL
  }

  path <- url$path

  if (!is.null(url$params)) {
    params <- paste0(";", url$params)
  } else {
    params <- NULL
  }

  if (is.list(url$query)) {
    url$query <- compact(url$query)
    names <- RCurl::curlEscape(names(url$query))
    values <- RCurl::curlEscape(url$query)

    query <- paste0(names, "=", values, collapse = "&")
  } else {
    query <- url$query
  }
  if (!is.null(query)) {
    stopifnot(is.character(query), length(query) == 1)
    query <- paste0("?", query)
  }

  if (is.null(url$username) && !is.null(url$password)) {
    stop("Cannot set password without username")
  }

  paste0(scheme, "://",
        url$username, if (!is.null(url$password)) ":", url$password,
        if (!is.null(url$username)) "@",
        hostname, port, "/", path, params, query,
        if (!is.null(url$fragment)) "#", url$fragment)
}

#' Modify a url.
#'
#' Modify a url by first parsing and it then replacing components with
#' the non-NULL arguments of this function.
#'
#' @export
#' @param url the url to modify
#' @param scheme,hostname,port,path,query,params,fragment,username,password
#'   components of the url to change
modify_url <- function(url, scheme = NULL, hostname = NULL, port = NULL,
                       path = NULL, query = NULL, params = NULL, fragment = NULL,
                       username = NULL, password = NULL) {

  old <- parse_url(url)
  new <- compact(list(
    scheme = scheme, hostname = hostname, port = port, path = path,
    query = query, params = params, fragment = fragment,
    username = username, password = password))

  build_url(modifyList(old, new))
}


compact <- function(x) Filter(Negate(is.null), x)
