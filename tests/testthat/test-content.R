context("Content")

test_that("parse content is null if no body", {
  out <- content(HEAD("http://httpbin.org/headers"))
  expect_equal(out, NULL)
})


# has_content -------------------------------------------------------------

test_that("POST result with empty body doesn't have content", {
  r <- POST("http://httpbin.org/post", body = FALSE)
  expect_false(has_content(r))
})

test_that("HEAD requests don't have body", {
  r <- HEAD("http://httpbin.org/headers")
  expect_false(has_content(r))
})

test_that("regular POST does have content", {
  r <- POST("http://httpbin.org/post")
  expect_true(has_content(r))
})
