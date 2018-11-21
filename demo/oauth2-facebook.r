library(httr)

# 1. Find OAuth settings for facebook:
#    http://developers.facebook.com/docs/authentication/server-side/
oauth_endpoints("facebook")

# 2. Register an application at https://developers.facebook.com/apps/
#    Replace key and secret below.
myapp <- oauth_app("facebook", "353609681364760", "1777c63343eba28359537764fab99b9a")

# 3. Get OAuth credentials
facebook_token <- oauth2.0_token(
  oauth_endpoints("facebook"),
  myapp
)

# 4. Use API
req <- GET("https://graph.facebook.com/me", config(token = facebook_token))
stop_for_status(req)
str(content(req))
