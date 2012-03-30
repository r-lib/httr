\name{POST}
\alias{POST}
\title{Post file to a server.}
\usage{
  POST(url = NULL, config = list(), body = NULL,
    multipart = TRUE, ..., handle = NULL)
}
\arguments{
  \item{body}{Named of list of elements to go in the body
  of the post file.  Use \code{\link[RCurl]{fileUpload}} to
  upload files.}

  \item{multipart}{Should the form be send as
  multipart/form-data (\code{TRUE}), or
  application/x-www-form-urlencoded (\code{FALSE}).  Files
  can not be uploaded when \code{FALSE}.}

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
  Post file to a server.
}
\examples{
b <- new_bin()
POST(b)
POST(b, body = "A simple text string")
POST(b, body = list(a = 1, b = 2, c = 3))
POST(b, body = list(a = 1, file = fileUpload(system.file("CITATION"))))

b2 <- "http://httpbin.org/post"
POST(b2, body = "A simple text string")
POST(b2, body = list(x = "A simple text string"))
POST(b2, body = list(y = fileUpload(system.file("CITATION"))))
}

