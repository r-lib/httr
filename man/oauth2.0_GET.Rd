\name{oauth2.0_GET}
\alias{oauth2.0_GET}
\title{oauth2.0_GET}
\usage{
  oauth2.0_GET(url, oauth, handle = NULL, ...)
}
\arguments{
  \item{oauth}{OAuth2.0 connection to use.}

  \item{url}{the url of the page to retrieve}

  \item{handle}{The handle to use with this request. If not
  supplied, will be retrieved and reused from the
  \code{\link{handle_pool}} based on the scheme, hostname
  and port of the url. By default \pkg{httr} requests to
  the same scheme/host/port combo. This substantially
  reduces connection time, and ensures that cookies are
  maintained over multiple requests to the same host. See
  \code{\link{handle_pool}} for more details.}

  \item{...}{Further parameters, such as \code{query},
  \code{path}, etc, passed on to \code{\link{modify_url}}.
  These parameters must be named.}
}
\description{
  Perform a GET request using the new oauth2.0 object.
}

