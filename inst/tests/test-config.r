context("Config")

test_that("timeout enforce", {
  expect_error(GET("http://httpbin.org/delay/1", timeout(0.5)), "timed out")
})