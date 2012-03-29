\name{authenticate}
\alias{authenticate}
\title{Use http authentication.}
\usage{
  authenticate(user, password, type = "anysafe")
}
\arguments{
  \item{user}{user name}

  \item{password}{password}

  \item{type}{type of HTTP authentication.  Should be one
  of the following types supported by Curl: basic, digest,
  digest_ie, gssnegotiate, ntlm, ntlm_vn, any, anysafe.  It
  defaults to anysafe, which will use authentication method
  that does not send the password in cleartext (i.e.
  everything except http basic authetication).}
}
\description{
  Use http authentication.
}
\seealso{
  Other config: \code{\link{config}},
  \code{\link{set_cookies}}
}

