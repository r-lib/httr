\name{verbose}
\alias{verbose}
\title{Give verbose output.}
\usage{
  verbose()
}
\description{
  A verbose connection provides much more information about
  the flow of information between the client and server.
}
\examples{
b <- new_bin()
GET(b, verbose())
}
\seealso{
  Other config: \code{\link{accept_json}},
  \code{\link{accept_xml}}, \code{\link{add_headers}},
  \code{\link{authenticate}}, \code{\link{config}},
  \code{\link{set_cookies}}, \code{\link{timeout}},
  \code{\link{use_proxy}}, \code{\link{user_agent}}
}

