context("Encoding")

test_that("default encoding is UTF-8", {
  expect_message(x <- guess_encoding(), "defaulting to UTF-8")
  expect_equal(x, "UTF-8")
})

test_that("invalid encoding gets UTF-8", {
  expect_message(x <- guess_encoding("abcd"), "defaulting to UTF-8")
  expect_equal(x, "UTF-8")
})

test_that("encoding guessed from type", {
  expect_equal(guess_encoding(type = "text/plain; charset=latin1"), "latin1")
})
