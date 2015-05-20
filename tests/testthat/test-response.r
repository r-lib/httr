context("Response")


test_that("status codes returned as expected", {

  expect_equal(GET("http://httpbin.org/status/320")$status_code, 320)
  expect_equal(GET("http://httpbin.org/status/404")$status_code, 404)
  expect_equal(GET("http://httpbin.org/status/418")$status_code, 418)

})

test_that("status converted to errors", {

  s200 <- GET("http://httpbin.org/status/200")
  s300 <- GET("http://httpbin.org/status/300")
  s404 <- GET("http://httpbin.org/status/404")
  s500 <- GET("http://httpbin.org/status/500")

  expect_equal(stop_for_status(s200), TRUE)
  expect_error(stop_for_status(s300), c("redirection.*\\(300\\)"))
  expect_error(stop_for_status(s404), c("client.*\\(404\\)"))
  expect_error(stop_for_status(s500), c("server.*\\(500\\)"))
})

test_that("headers returned as expected", {
  round_trip <- function(...) {
    req <- GET("http://httpbin.org/headers", add_headers(...))
    headers <- content(req)$headers
    names(headers) <- tolower(names(headers))
    headers
  }

  expect_equal(round_trip(a = 1)$a, "1")
  expect_equal(round_trip(a = "a + b")$a, "a + b")

})


test_that("application/json responses parsed as lists", {
  test_user_agent <- function(user_agent = NULL) {
    response <- GET("http://httpbin.org/user-agent",
                    add_headers("user-agent" = user_agent))

    expect_equal(response$status_code, 200)
    expected_reply = list("user-agent" = user_agent %||% default_ua())
    expect_equal(expected_reply, content(response))
  }

  test_user_agent()
  test_user_agent("gunicorn-client/0.1")
})

test_that("url_ok works as expected", {

  expect_true(url_ok("http://httpbin.org/status/200"))
  expect_false(url_ok("http://httpbin.org/status/300"))
  expect_false(url_ok("http://httpbin.org/status/404"))
  expect_false(url_ok("http://httpbin.org/status/500"))

})
