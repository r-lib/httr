\docType{data}
\name{oauth_endpoints}
\alias{oauth_endpoints}
\title{Popular oauth endpoints.}
\format{\preformatted{List of 6
 $ linkedin:List of 3
  ..$ request  : chr "https://api.linkedin.com/uas/oauth/requestToken"
  ..$ authorize: chr "https://api.linkedin.com/uas/oauth/authorize"
  ..$ access   : chr "https://api.linkedin.com/uas/oauth/accessToken"
  ..- attr(*, "class")= chr "oauth_endpoint"
 $ twitter :List of 3
  ..$ request  : chr "http://api.twitter.com/oauth/request_token"
  ..$ authorize: chr "http://api.twitter.com/oauth/authenticate"
  ..$ access   : chr "http://api.twitter.com/oauth/access_token"
  ..- attr(*, "class")= chr "oauth_endpoint"
 $ vimeo   :List of 3
  ..$ request  : chr "http://vimeo.com/oauth/request_token"
  ..$ authorize: chr "http://vimeo.com/oauth/authorize"
  ..$ access   : chr "http://vimeo.com/oauth/access_token"
  ..- attr(*, "class")= chr "oauth_endpoint"
 $ google  :List of 5
  ..$ request  : NULL
  ..$ authorize: chr "https://accounts.google.com/o/oauth2/auth"
  ..$ access   : chr "https://accounts.google.com/o/oauth2/token"
  ..$ validate : chr "https://www.googleapis.com/oauth2/v1/tokeninfo"
  ..$ revoke   : chr "https://accounts.google.com/o/oauth2/revoke"
  ..- attr(*, "class")= chr "oauth_endpoint"
 $ facebook:List of 3
  ..$ request  : NULL
  ..$ authorize: chr "https://www.facebook.com/dialog/oauth"
  ..$ access   : chr "https://graph.facebook.com/oauth/access_token"
  ..- attr(*, "class")= chr "oauth_endpoint"
 $ github  :List of 3
  ..$ request  : NULL
  ..$ authorize: chr "https://github.com/login/oauth/authorize"
  ..$ access   : chr "https://github.com/login/oauth/access_token"
  ..- attr(*, "class")= chr "oauth_endpoint"
}}
\usage{
oauth_endpoints
}
\description{
This list provides some common OAuth endpoints.
}
\keyword{datasets}

