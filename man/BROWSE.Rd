\name{BROWSE}
\alias{BROWSE}
\title{Open specified url in browser.}
\usage{
  BROWSE(url = NULL, ..., config = list(), handle = NULL)
}
\arguments{
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
  and port of the url.}
}
\description{
  Only works in interactive sessions.
}
\examples{
BROWSE("http://google.com")
}

