context("http_condition")

test_that("non failures passed through as is", {
  expect_equal(stop_for_status(200), 200)
})

test_that("status converted to errors", {
  expect_error(stop_for_status(300), "Multiple Choices (HTTP 300)", fixed = TRUE)
  expect_error(stop_for_status(404), "Not Found (HTTP 404)", fixed = TRUE)
  expect_error(stop_for_status(500), "Internal Server Error (HTTP 500)", fixed = TRUE)
})

test_that("message string overrides default", {
  expect_error(stop_for_status(300, "!"), "!")
})

test_that("message list indexed into by status code", {
  msg <- list("300" = "a")
  expect_error(stop_for_status(300, msg), "a")
  expect_error(stop_for_status(400, msg), "Bad Request (HTTP 400)", fixed = TRUE)
})
