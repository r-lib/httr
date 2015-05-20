context("Oauth")

test_that("oauth2.0 signing works", {
  request_url <- "http://httpbin.org/headers"

  token <- Token2.0$new(
    app = oauth_app("x", "y", "z"),
    endpoint = oauth_endpoints("google"),
    credentials = list(access_token = "ofNoArms")
  )

  token$params$as_header <- TRUE
  header_response <- GET(request_url, config(token = token))
  response_content <- content(header_response)$headers
  expect_equal("Bearer ofNoArms", response_content$Authorization)
  expect_equal(request_url, header_response$url)

  token$params$as_header <- FALSE
  url_response <- GET(request_url, config(token = token))
  response_content <- content(url_response)$headers
  expect_equal(NULL, response_content$Authorization)
  expect_equal(
    parse_url(url_response$url)$query,
    list(access_token = "ofNoArms")
  )
})

test_that("partial OAuth1 flow works", {
  skip_on_cran()
  # From rfigshare

  endpoint <- oauth_endpoint(
    base_url = "http://api.figshare.com/v1/pbl/oauth",
    "request_token", "authorize", "access_token"
  )
  myapp <- oauth_app("rfigshare",
    key = "Kazwg91wCdBB9ggypFVVJg",
    secret = "izgO06p1ymfgZTsdsZQbcA")
  sig <- sign_oauth1.0(myapp,
    token = "xdBjcKOiunwjiovwkfTF2QjGhROeLMw0y0nSCSgvg3YQxdBjcKOiunwjiovwkfTF2Q",
    token_secret = "4mdM3pfekNGO16X4hsvZdg")

  r <- GET("http://api.figshare.com/v1/my_data", sig)
  expect_equal(status_code(r), 200)
})

