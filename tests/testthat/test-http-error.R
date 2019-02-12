context("http_error")

test_that("http_error works with urls", {
  expect_false(http_error("http://httpbin.org/status/200"))
  expect_true(http_error("http://httpbin.org/status/404"))
})

test_that("http_error works with responses", {
  r200 <- GET("http://httpbin.org/status/200")
  expect_false(http_error(r200))

  r404 <- GET("http://httpbin.org/status/404")
  expect_true(http_error(r404))
})

test_that("http_error works with integers", {
  expect_false(http_error(200L))
  expect_true(http_error(404L))
})

test_that("http_error works with simpleErrors", {
    expect_error({
        res <- RETRY("POST", "http://98d90a2a254647889e2e4c236fb576cd.com")
    })
})
