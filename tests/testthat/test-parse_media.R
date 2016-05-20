context("parse_media")

test_that("can parse bare media type", {
  out <- parse_media("text/plain")

  expect_equal(out$type, "text")
  expect_equal(out$subtype, "plain")
  expect_equal(out$params, list())
})

