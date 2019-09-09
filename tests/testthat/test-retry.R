context("test-retry")

test_that("sucessful requests terminate when terminate_on_success is true", {
  should_terminate <- function(status_code) {
    resp <- response(status_code = status_code)
    retry_should_terminate(1, 10,
      resp = resp,
      terminate_on = 500L,
      terminate_on_success = TRUE
    )
  }

  expect_true(should_terminate(200L))
  expect_false(should_terminate(400L))
})

test_that("if request_perform() throws an error, RETRY passes it on", {
  expect_error(
    RETRY("POST", "http://98d90a2a254647889e2e4c236fb576cd.com", times = 1),
    regexp = "resolve host"
  )
})

test_that("back_off_full_jitter respects Retry-After header", {
  r <- response(status_code = 429, headers = list('Retry-After' = .01))
  length <- backoff_full_jitter(0, r, pause_min = 0, quiet = TRUE)
  expect_equal(length, .01)
})
