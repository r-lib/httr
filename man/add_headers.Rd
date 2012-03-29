\name{add_headers}
\alias{add_headers}
\title{Add additional headers to a request.}
\usage{
  add_headers(..., .headers = character())
}
\arguments{
  \item{...}{named header values}

  \item{.headers}{a named character vector}
}
\description{
  Add additional headers to a request.
}
\examples{
add_headers(a = 1, b = 2)
add_headers(.headers = c(a = "1", b = "2"))
}
\seealso{
  Other config: \code{\link{authenticate}},
  \code{\link{config}}, \code{\link{set_cookies}}
}

