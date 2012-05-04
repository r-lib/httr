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
token <- oauth1.0_token(vimeo, myapp)

# 4. Generate signature and make requests
sig <- sign_ouath1.0(myapp, token$oauth_token, token$oauth_token_secret)

api <- "http://vimeo.com/api/rest/v2"
GET(api, query = list(method = "vimeo.videos.getAll"), sig)
GET(api, query = list(method = "vimeo.videos.getAll", format = "json"), sig)
