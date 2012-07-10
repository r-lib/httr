\name{handle}
\alias{handle}
\title{Create a handle tied to a particular host.}
\usage{
  handle(url, cookies = TRUE, ...)
}
\arguments{
  \item{url}{full url to site}

  \item{cookies}{if \code{TRUE} (the default), maintain
  cookies across requests.}

  \item{...}{RCurl options to be stored in the handle. See
  \code{\link{config}} for more information about those
  options.}
}
\description{
  This handle preserves settings and cookies across
  multiple requests. It is the foundation of all requests
  performed through the httr package, although it will
  mostly be hidden from the user.
}
\examples{
handle("http://google.com")
handle("https://google.com")

h <- handle("http://google.com")
GET(handle = h)
# Should see cookies sent back to server
GET(handle = h, config = verbose())

h <- handle("http://google.com", cookies = FALSE)
GET(handle = h)$cookies
}

