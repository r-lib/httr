\name{stop_for_status}
\alias{stop_for_status}
\title{Throw error on http error.}
\usage{
  stop_for_status(x)
}
\arguments{
  \item{x}{a request object}
}
\description{
  Converts http errors to R errors - this is useful if you
  want to ensure the appropriate action is taken when an
  http request fails.
}
\examples{
x <- GET("http://httpbin.org/status/200")
stop_for_status(x) # nothing happens
x <- GET("http://httpbin.org/status/320")
\dontrun{stop_for_status(x)}
x <- GET("http://httpbin.org/status/404")
\dontrun{stop_for_status(x)}
}
\seealso{
  Other response methods: \code{\link{content}},
  \code{\link{parsed_content}}, \code{\link{response}},
  \code{\link{text_content}}, \code{\link{url_ok}},
  \code{\link{url_success}}, \code{\link{warn_for_status}}
}

