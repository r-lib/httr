\name{POST}
\alias{POST}
\title{Post file to a server.}
\usage{
  POST(url = NULL, body = NULL, ..., config = list(),
    handle = NULL)
}
\arguments{
  \item{body}{Named of list of elements to go in the body
  of the post file.}

  \item{url}{the url of the page to retrieve}

  \item{...}{Further parameters, such as \code{query},
  \code{path}, etc, passed on to \code{\link{modify_url}}.
  These parameters must be named.}

  \item{config}{Additional configuration settings such as
  http authentication (\code{\link{authenticate}}),
  additional headers (\code{\link{add_headers}}), cookies
  (\code{\link{set_cookies}}) etc.  See
  \code{\link{config}} for full details and list of
  helpers.}

  \item{handle}{The handle to use with this request. If not
  supplied, will be retrieved and reused from the
  \code{\link{handle_pool}} based on the scheme, hostname
  and port of the url. By default \pkg{httr} requests to
  the same scheme/host/port combo. This substantially
  reduces connection time, and ensures that cookies are
  maintained over multiple requests to the same host. See
  \code{\link{handle_pool}} for more details.}
}
\description{
  Post file to a server.
}

