\name{PATCH}
\alias{PATCH}
\title{Send PATCH request to a server.}
\usage{
  PATCH(url = NULL, config = list(), body = NULL,
    multipart = TRUE, ..., handle = NULL)
}
\arguments{
  \item{url}{the url of the page to retrieve}

  \item{config}{Additional configuration settings such as
  http authentication (\code{\link{authenticate}}),
  additional headers (\code{\link{add_headers}}), cookies
  (\code{\link{set_cookies}}) etc.  See
  \code{\link{config}} for full details and list of
  helpers.}

  \item{body}{Use \code{NULL} for an empty body, a
  length-one character or file. Each component should
  either be a character value or the object returned by
  \code{\link[RCurl]{fileUpload}} (if you want to upload a
  file).  If \code{multipart} is \code{FALSE} elements will
  be escaped automatically - if the values have already
  been escaped, then use `I` to prevent double-escaping.}

  \item{multipart}{Should the form be send as
  multipart/form-data (\code{TRUE}), or
  application/x-www-form-urlencoded (\code{FALSE}).  Files
  can not be uploaded when \code{FALSE}.}

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
  Send PATCH request to a server.
}

