context("Callback")

test_that("request callback", {

  f <- function(req) req$url
  old <- set_callback("request", f)
  on.exit(set_callback("request", old))

  expect_identical(GET("foo.bar"), "foo.bar")

  expect_identical(f, get_callback("request"))
  expect_identical(f, set_callback("request", old))
  expect_identical(old, get_callback("request"))
})
