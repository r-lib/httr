library(httr)

# 1. Find OAuth settings for linkedin:
#    https://developer.linkedin.com/documents/linkedins-oauth-details
linkedin <- oauth_endpoint("requestToken", "authorize", "accessToken",
  base_url = "https://api.linkedin.com/uas/oauth/")

# 2. Register an application at https://www.linkedin.com/secure/developer
#    Insert your values below - if secret is omitted, it will look it up in
#    the LINKEDIN_CONSUMER_SECRET environmental variable.
myapp <- oauth_app("linkedin", key = "outmkw3859gy")

# 3. Get OAuth credentials
token <- oauth1.0_token(linkedin, myapp)

# 4. Generate signature and make requests
sig <- sign_ouath1.0(myapp, token$oauth_token, token$oauth_token_secret)

GET("http://api.linkedin.com/v1/people/~", sig)