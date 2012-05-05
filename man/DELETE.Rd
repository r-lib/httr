\name{DELETE}
\alias{DELETE}
\title{Send a delete request.}
\usage{
  DELETE(url = NULL, config = list(), ..., handle = NULL)
}
\arguments{
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
  Send a delete request.
}
\examples{
b <- new_bin()
DELETE(b)

DELETE("http://httpbin.org/delete")
POST("http://httpbin.org/delete")
}
\seealso{
  Other http methods: \code{\link{BROWSE}},
  \code{\link{GET}}, \code{\link{HEAD}}
}

