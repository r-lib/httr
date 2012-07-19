\name{http_error}
\alias{http_error}
\alias{stop_for_status}
\alias{warn_for_status}
\title{Take action on http error.}
\usage{
  stop_for_status(x)

  warn_for_status(x)
}
\arguments{
  \item{x}{a request object}
}
\description{
  Converts http errors to R errors or warnings - this is
  useful if you want to ensure the appropriate action is
  taken when an http request fails. See
  \code{\link{http_status}} or
  \code{http://en.wikipedia.org/wiki/Http_status_codes} for
  more information on http status codes.
}
\examples{
x <- GET("http://httpbin.org/status/200")
stop_for_status(x) # nothing happens
warn_for_status(x)

x <- GET("http://httpbin.org/status/300")
\dontrun{stop_for_status(x)}
warn_for_status(x)

x <- GET("http://httpbin.org/status/404")
\dontrun{stop_for_status(x)}
warn_for_status(x)
}
\seealso{
  Other response methods: \code{\link{content}},
  \code{\link{http_status}}, \code{\link{response}},
  \code{\link{url_ok}}, \code{\link{url_success}}
}

