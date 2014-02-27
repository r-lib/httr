library(httr)

# 1. Find OAuth settings for google:
#    https://developers.google.com/accounts/docs/OAuth2InstalledApp
oauth_endpoints$google

# 2. Register an application at https://cloud.google.com/console#/project
#    Insert your values below - if secret is omitted, it will look it up in
#    the GOOGLE_CONSUMER_SECRET environmental variable.
myapp <- oauth_app("google", "16795585089.apps.googleusercontent.com")

# 3. Get OAuth credentials
google_token <- oauth2.0_token(oauth_endpoints$google, myapp,
  scope = "https://www.googleapis.com/auth/userinfo.profile")

r <- GET("https://www.googleapis.com/oauth2/v1/userinfo",
  config(token = google_token))
stop_for_status(r)

# If the token runs out, you can refresh with:
google_token$refresh()
