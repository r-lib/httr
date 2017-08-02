context("oauth_signature")


# Url normalisation -------------------------------------------------------

test_that("protocol is lower-cased", {
  expect_equal(oauth_normalise_url("HTTP://google.com"), "http://google.com/")
})

test_that("default ports are stripped", {
  expect_equal(oauth_normalise_url("http://google.com:80"), "http://google.com/")
  expect_equal(oauth_normalise_url("https://google.com:443"), "https://google.com/")
})
