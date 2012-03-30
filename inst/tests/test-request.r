context("Request")

test_that("status codes returned as expected", {
  
  expect_equal(GET("http://httpbin.org/status/320")$status, 320)
  expect_equal(GET("http://httpbin.org/status/404")$status, 404)
  expect_equal(GET("http://httpbin.org/status/418")$status, 418)
  
})