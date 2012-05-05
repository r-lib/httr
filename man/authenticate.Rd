\name{authenticate}
\alias{authenticate}
\title{Use http authentication.}
\usage{
  authenticate(user, password, type = "any")
}
\arguments{
  \item{user}{user name}

  \item{password}{password}

  \item{type}{type of HTTP authentication.  Should be one
  of the following types supported by Curl: basic, digest,
  digest_ie, gssnegotiate, ntlm, ntlm_vn, any.  It defaults
  to any.}
}
\description{
  Use http authentication.
}
\examples{
GET("http://httpbin.org/basic-auth/user/passwd")
GET("http://httpbin.org/basic-auth/user/passwd",
  authenticate("user", "passwd"))
}
\seealso{
  Other config: \code{\link{accept_json}},
  \code{\link{accept_xml}}, \code{\link{add_headers}},
  \code{\link{config}}, \code{\link{set_cookies}},
  \code{\link{timeout}}, \code{\link{use_proxy}},
  \code{\link{user_agent}}, \code{\link{verbose}}
}

