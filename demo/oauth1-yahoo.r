library(httr)

# 1. Find OAuth settings for yahoo:
#    https://developer.yahoo.com/oauth/guide/oauth-auth-flow.html
oauth_endpoints("yahoo")

# 2. Register an application at https://developer.apps.yahoo.com/projects
#    Insert your values below - if secret is omitted, it will look it up in
#    the YAHOO_CONSUMER_SECRET environmental variable.
myapp <- oauth_app("yahoo",
  key = paste0("dj0yJmk9ZEp0d2J2MFRuakNQJmQ9WVdrOU0zaHRUMl",
    "JpTTJNbWNHbzlNQS0tJnM9Y29uc3VtZXJzZWNyZXQmeD00Nw--"),
)
