library(httr)

# 1. Create endpoint
withings <- oauth_endpoint("request_token", "authorize", "access_token", base_url = "https://oauth.withings.com/account")

# 2. Register an application at https://account.withings.com/connectionuser/account_create
#    Insert your values below.
withingsapp <- oauth_app("withings", key = "xxx", secret = "xxx")

# 3. Get OAuth credentials
withings_token <- oauth1.0_token(withings, withingsapp, as_header = FALSE)

# 4. Use API
req <- GET("http://wbsapi.withings.net/measure",
           query = list(action = "getmeas", userid = withings_token$credentials$userid),
           config(token = withings_token))

stop_for_status(req)
content(req)
