\name{new_oauth}
\alias{new_oauth}
\title{new_oauth}
\usage{
  new_oauth(base_url, authorize_url, access_url, scope_url,
    appname, client_id, client_secret = NULL,
    token_file = NULL, type = NULL)
}
\description{
  Create a new oauth2.0 reference object
}
\details{
  Uses httr's oauth2.0 functions to create of a new
  oauth2.0 object of reference class oauth2.0
}

