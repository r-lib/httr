context("http_error")

test_that("http_error works with urls", {
  skip_on_cran()
  expect_false(http_error("http://httpbin.org/status/200"))
  expect_true(http_error("http://httpbin.org/status/404"))
})

test_that("http_error works with responses", {
  skip_on_cran()
  r200 <- GET("http://httpbin.org/status/200")
  expect_false(http_error(r200))

  r404 <- GET("http://httpbin.org/status/404")
  expect_true(http_error(r404))
})

test_that("http_error works with integers", {
  expect_false(http_error(200L))
  expect_true(http_error(404L))
})
