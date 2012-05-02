\name{add_headers}
\alias{add_headers}
\title{Add additional headers to a request.}
\usage{
  add_headers(..., .headers = character())
}
\arguments{
  \item{...}{named header values.  To stop an existing
  header from being set, pass an empty string: \code{""}.}

  \item{.headers}{a named character vector}
}
\description{
  Add additional headers to a request.
}
\examples{
add_headers(a = 1, b = 2)
add_headers(.headers = c(a = "1", b = "2"))

# Override default headers with empty strings
GET("http://had.co.nz", verbose())
GET("http://had.co.nz", c(verbose(), add_headers(Accept = "")))
}
\seealso{
  Other config: \code{\link{authenticate}},
  \code{\link{config}}, \code{\link{set_cookies}},
  \code{\link{timeout}}, \code{\link{use_proxy}},
  \code{\link{verbose}}
}

