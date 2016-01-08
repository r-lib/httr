context("http_condition")

test_that("non failures passed through as is", {
  expect_equal(stop_for_status(200), 200)
})

test_that("status converted to errors", {
  expect_error(stop_for_status(300), "Multiple Choices (HTTP 300)", fixed = TRUE)
  expect_error(stop_for_status(404), "Not Found (HTTP 404)", fixed = TRUE)
  expect_error(stop_for_status(500), "Internal Server Error (HTTP 500)", fixed = TRUE)
})

test_that("task adds informative message", {
  expect_error(stop_for_status(300, "download"), "Failed to download.")
})
