library(httr)

# 1. Find OAuth settings for vimeo:
#    http://vimeo.com/api/docs/authentication
vimeo <- oauth_endpoint("request_token", "authorize", "access_token",
  base_url = "http://vimeo.com/oauth")

# 2. Register an application at http://vimeo.com/api/applications/new
#    Insert your values below - if secret is omitted, it will look it up in
#    the VIMEO_CONSUMER_SECRET environmental variable.
myapp <- oauth_app("vimeo", key = "bd535bc38ed5caccd79330ff33075eb9")

# 3. Get OAuth credentials
cred <- oauth1.0(vimeo, myapp)
