% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cookies.r
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

\dontrun{
GET("http://httpbin.org/cookies")
GET("http://httpbin.org/cookies", set_cookies(a = 1, b = 2))
}
}
\seealso{
\code{\link[=cookies]{cookies()}} to see cookies in response.

Other config: 
\code{\link{add_headers}()},
\code{\link{authenticate}()},
\code{\link{config}()},
\code{\link{timeout}()},
\code{\link{use_proxy}()},
\code{\link{user_agent}()},
\code{\link{verbose}()}
}
\concept{config}
