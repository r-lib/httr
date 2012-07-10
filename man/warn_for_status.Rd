\name{warn_for_status}
\alias{warn_for_status}
\title{Issue a warning on http error.}
\usage{
  warn_for_status(x)
}
\arguments{
  \item{x}{a request object}
}
\description{
  Converts http errors to R warnings - this is useful if
  you want to monitor http request failures.
}
\examples{
x <- GET("http://httpbin.org/status/200")
warn_for_status(x) # nothing happens
x <- GET("http://httpbin.org/status/320")
warn_for_status(x)
x <- GET("http://httpbin.org/status/404")
warn_for_status(x)
}
\seealso{
  Other response methods: \code{\link{content}},
  \code{\link{parsed_content}}, \code{\link{response}},
  \code{\link{stop_for_status}},
  \code{\link{text_content}}, \code{\link{url_ok}},
  \code{\link{url_success}}
}

