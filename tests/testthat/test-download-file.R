context("test-download-file")

test_that("download_file length 1 ops behave as expected", {

  tmp1 <- tempfile()
  tmp2 <- tempfile()
  tmp3 <- tempfile()

  res <- download_file("https://httpbin.org", tmp1)
  expect_equal(res$status_code[[1]], 200L)
  expect_false(res$cache_used[[1]])

  res <- download_file("https://httpbin.org", tmp1)
  expect_equal(res$status_code[[1]], 399L)
  expect_true(res$cache_used[[1]])

  res <- download_file("https://httpbin.org", tmp1, overwrite = TRUE)
  expect_equal(res$status_code[[1]], 200L)
  expect_false(res$cache_used[[1]])

  res <- download_file("badurl", tmp3)
  expect_true(is.na(res$status_code[[1]]))
  expect_false(res$cache_used[[1]])

})

test_that("download_file multi-file ops behave as expected", {

  tmp1 <- tempfile()
  tmp2 <- tempfile()
  tmp3 <- tempfile()

  res <- download_file(
    c(rep("https://google.com", 2), "badurl"),
    c(tmp1, tmp2, tmp3),
    overwrite = TRUE
  )

  expect_identical(res$status_code, c(200L, 200L, NA))
  expect_identical(res$cache_used, c(FALSE, FALSE, FALSE))

  res <- download_file(
    c(rep("https://google.com", 2), "badurl"),
    c(tmp1, tmp2, tmp3),
    overwrite = FALSE
  )

  expect_identical(res$status_code, c(399L, 399L, NA))
  expect_identical(res$cache_used, c(TRUE, TRUE, FALSE))

})
