\name{timeout}
\alias{timeout}
\title{Set maximum request time.}
\usage{
  timeout(seconds)
}
\arguments{
  \item{second}{number of seconds to wait until giving up.}
}
\description{
  Set maximum request time.
}
\examples{
GET("http://had.co.nz", timeout(0.01))
}
\seealso{
  Other config: \code{\link{add_headers}},
  \code{\link{authenticate}}, \code{\link{config}},
  \code{\link{set_cookies}}, \code{\link{use_proxy}},
  \code{\link{verbose}}
}

