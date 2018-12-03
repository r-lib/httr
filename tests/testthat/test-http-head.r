context("test-http-head")

test_that("HEAD succeeds regardless of wrapper", {
  expect_false(http_error(HEAD("https://httpbin.org")))
  expect_false(http_error(VERB("HEAD", "https://httpbin.org")))
  expect_false(http_error(RETRY("HEAD", "https://httpbin.org")))
})
