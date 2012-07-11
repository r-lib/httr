\name{stop_for_status}
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
  taken when an http request fails.
}
\details{
  http servers send a status code with the response to each
  request. This code gives information regarding the
  outcome of the execution of the request on the server.
  Roughly, codes in the 200s mean the request was
  successfully executed; codes in the 300s mean the page
  was redirected; codes in the 400s mean there was a
  mistake in the way the client sent the request; codes in
  the 500s mean the server failed to fulfill an apparently
  valid request. More details on the codes can be found at
  \code{http://en.wikipedia.org/wiki/Http_error_codes}
}
\examples{
x <- GET("http://httpbin.org/status/200")
stop_for_status(x) # nothing happens
warn_for_status(x)

x <- GET("http://httpbin.org/status/320")
\dontrun{stop_for_status(x)}
warn_for_status(x)

x <- GET("http://httpbin.org/status/404")
\dontrun{stop_for_status(x)}
warn_for_status(x)
}
\seealso{
  Other response methods: \code{\link{content}},
  \code{\link{parsed_content}}, \code{\link{response}},
  \code{\link{text_content}}, \code{\link{url_ok}},
  \code{\link{url_success}}
}

