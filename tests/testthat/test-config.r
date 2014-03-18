context("Config")

if (identical(Sys.getenv("NOT_CRAN"), "true")) {
  test_that("timeout enforced", {
    expect_error(GET("http://httpbin.org/delay/1", timeout(0.5)), "timed out")
  })
}

test_that("basic authentication works", {
  h <- handle("http://httpbin.org")
  path <- "basic-auth/user/passwd"

  r <- GET(path = path, handle = h)
  expect_equal(r$status, 401)

  r <- GET(path = path, handle = h,
    config = authenticate("user", "passwd", "basic"))
  expect_equal(r$status, 200)

})

test_that("digest authentication works", {
  h <- handle("http://httpbin.org")
  path <- "digest-auth/qop/user/passwd"

  r <- GET(path = path, handle = h)
  expect_equal(r$status, 401)

  r <- GET(path = path, handle = h,
    config = authenticate("user", "passwd", "digest"))
  expect_equal(r$status, 200)
})

test_that("oauth2.0 signing works", {
  request_url <- "http://httpbin.org/headers"

  token <- Token2.0(
    credentials = list(access_token = "ofNoArms"),
    params = list()
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


test_that("make_config combines headers correctly", {
  config <- make_config(list(), add_headers(a = 1), add_headers(a = 2))
  expect_is(config, "config")
  expect_equal(config$httpheader, c(a = "2"))

  config <- make_config(add_headers(a = 1), add_headers(a = 2))
  expect_is(config, "config")
  expect_equal(config$httpheader, c(a = "2"))

  config <- make_config(add_headers(a = 1), list(httpheader = c(a = "2")))
  expect_is(config, "config")
  expect_equal(config$httpheader, c(a = "2"))
})
