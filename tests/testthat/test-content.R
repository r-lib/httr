context("Content")

test_that("parse content is null if no body", {
  out <- content(HEAD("http://httpbin.org/headers"))
  expect_equal(out, NULL)
})
