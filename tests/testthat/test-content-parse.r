context("test-content-parse")

test_that("default encoding is UTF-8", {
  expect_message(x <- guess_encoding(), "defaulting to UTF-8")
  expect_equal(x, "UTF-8")
})

test_that("invalid encoding/type gets UTF-8", {
  expect_message(x <- guess_encoding("abcd"), "defaulting to UTF-8")
  expect_equal(x, "UTF-8")

  expect_message(x <- guess_encoding(NULL, "abcd"), "defaulting to UTF-8")
  expect_equal(x, "UTF-8")
})

test_that("encoding guessed from type", {
  skip_if_not("latin1" %in% tolower(iconvlist()), "latin1 alias not present")
  expect_equal(guess_encoding(NULL, "text/plain; charset=latin1"), "latin1")
})

test_that("explicit type overrides charset", {
  expect_equal(guess_encoding("UTF-8", "text/plain; charset=latin1"), "UTF-8")
})
