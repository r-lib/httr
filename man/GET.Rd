\name{GET}
\alias{GET}
\title{Get a url.}
\usage{
  GET(url = NULL, ..., config = list(), handle = NULL)
}
\arguments{
  \item{url}{the url of the page to retrieve}

  \item{...}{Further parameters, such as \code{query},
  \code{path}, etc, passed on to \code{\link{modify_url}}.
  These parameters must be named.}

  \item{handle}{The handle to use with this request. If not
  supplied, will be retrieved and reused from the
  \code{\link{handle_pool}} based on the scheme, hostname
  and port of the url.}
}
\description{
  \pkg{httr} automatically reuses the same http connection
  (aka handle) for mulitple requests to the same
  scheme/host/port combo. This substantially reduces
  connection time, and ensures that cookies are maintained
  over multiple request to the same host. See
  \code{\link{handle_pool}} for more details.
}
\examples{
GET("http://google.com/")
GET("http://google.com/", path = "search")
GET("http://google.com/", path = "search", query = c(q = "ham"))

# See what GET is doing with requestb.in
b <- new_bin()
GET(handle = b)
GET(handle = b, config = add_headers(a = 1, b = 2))
GET(handle = b, config = set_cookies(a = 1, b = 2))
GET(handle = b, config = authenticate("username", "password"))

# To get more feedback, make the handle verbose
is.verbose(b) <- TRUE
GET(handle = b)

# You might want to manually specify the handle so you can have multiple
# independent logins to the same website.
google <- handle("http://google.com")
GET(handle = google, path = "/")
GET(handle = google, path = "search")
}

