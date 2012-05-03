library(httr)

# 1. Find OAuth settings for google:
#    https://developers.google.com/accounts/docs/OAuth2InstalledApp
google <- oauth_endpoint(NULL, "auth", "token", 
  base_url = "https://accounts.google.com/o/oauth2")

# 2. Register an application at https://code.google.com/apis/console#access
#    Insert your values below - if secret is omitted, it will look it up in
#    the GOOGLE_CONSUMER_SECRET environmental variable.
myapp <- oauth_app("google", "16795585089.apps.googleusercontent.com")

# 3. Get OAuth credentials
cred <- oauth2.0(google, myapp, 
  scope = "https://www.googleapis.com/auth/userinfo.profile")
