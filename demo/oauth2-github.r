library(httr)

# 1. Find OAuth settings for github:
#    http://developer.github.com/v3/oauth/
github <- oauth_endpoint(NULL, "authorize", "access_token",
  base_url = "https://github.com/login/oauth")

# 2. Register an application at https://github.com/settings/applications
#    Insert your values below - if secret is omitted, it will look it up in
#    the GITHUB_CONSUMER_SECRET environmental variable.
#
#    Use http://localhost:1410 as the callback url
myapp <- oauth_app("github", "56b637a5baffac62cad9")

# 3. Get OAuth credentials
github_token <- oauth2.0_token(github, myapp)
github_sig <- sign_oauth2.0(github_token$access_token)

# Use access token to get user specific data
GET("https://api.github.com/user/followers", github_sig)
