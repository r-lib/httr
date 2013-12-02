context("Headers")

test_that("Only last duplicated header kept in add_headers", {
  expect_equal(add_headers(x = 1, x = 2)$httpheader, c(x = "2"))
})

test_that("Only last duplicated header kept when combined", {
  out <- c(add_headers(x = 1), add_headers(x = 2))
  expect_equal(out$httpheader, c(x = "2"))
})

test_that("Only last duplicated header kept when modified", {
  out <- modify_config(add_headers(x = 1), add_headers(x = 2))
  expect_equal(out$httpheader, c(x = "2"))
})