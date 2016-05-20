context("parse_media")

test_that("can parse bare media type", {
  out <- parse_media("text/plain")

  expect_equal(out$type, "text")
  expect_equal(out$subtype, "plain")
  expect_equal(out$params, list())
})

test_that("can parse params", {
  out1 <- parse_media("text/plain; a=1")
  out2 <- parse_media("text/plain; a=1; b=2")

  expect_equal(out1$params, list(a = "1"))
  expect_equal(out2$params, list(a = "1", b = "2"))
})
