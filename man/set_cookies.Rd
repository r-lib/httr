\name{set_cookies}
\alias{set_cookies}
\title{Set cookies.}
\usage{
  set_cookies(..., .cookies = character(0))
}
\arguments{
  \item{...}{a named cookie values}

  \item{.cookies}{a named character vector}
}
\description{
  Set cookies.
}
\examples{
set_cookies(a = 1, b = 2)
set_cookies(.cookies = c(a = "1", b = "2"))
}
\seealso{
  Other config: \code{\link{add_headers}},
  \code{\link{authenticate}}, \code{\link{config}},
  \code{\link{use_proxy}}, \code{\link{verbose}}
}

