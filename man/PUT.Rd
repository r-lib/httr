\name{PUT}
\alias{PUT}
\title{Send PUT to request server.}
\usage{
  PUT(url = NULL, config = list(), content = NULL, ...,
    handle = NULL)
}
\arguments{
  \item{content}{Content, if any, to send to server.}

  \item{url}{the url of the page to retrieve}

  \item{config}{Additional configuration settings such as
  http authentication (\code{\link{authenticate}}),
  additional headers (\code{\link{add_headers}}), cookies
  (\code{\link{set_cookies}}) etc.  See
  \code{\link{config}} for full details and list of
  helpers.}

  \item{...}{Further parameters, such as \code{query},
  \code{path}, etc, passed on to \code{\link{modify_url}}.
  These parameters must be named.}

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
  Send PUT to request server.
}
\examples{
b <- new_bin()
PUT(b)

POST("http://httpbin.org/put")
PUT("http://httpbin.org/put")
PUT("http://httpbin.org/put", content = "some body content")
PUT("http://httpbin.org/put", content = list(a = 1, b = 2))
}

