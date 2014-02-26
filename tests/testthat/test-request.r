context("Request")

test_that("status codes returned as expected", {

  expect_equal(GET("http://httpbin.org/status/320")$status, 320)
  expect_equal(GET("http://httpbin.org/status/404")$status, 404)
  expect_equal(GET("http://httpbin.org/status/418")$status, 418)

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
