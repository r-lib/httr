\name{parse_url}
\alias{parse_url}
\title{Parsed url according RFC1808.}
\usage{
  parse_url(url)
}
\value{
  a list containing: \itemize{ \item scheme \item hostname
  \item port \item path \item params \item query \item
  username \item password }
}
\description{
  See \url{http://tools.ietf.org/html/rfc1808.html} for
  details of parsing algorithm.
}
\examples{
parse_url("http://google.com/")
parse_url("http://google.com:80/")
parse_url("http://google.com:80/?a=1&b=2")
}

