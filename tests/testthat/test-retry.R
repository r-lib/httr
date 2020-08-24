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
  skip_on_cran()
  expect_error(
    RETRY("POST", "http://98d90a2a254647889e2e4c236fb576cd.com", times = 1),
    regexp = "resolve host"
  )
})

test_that("circuit breaking in RETRY works correctly", {
  skip_on_cran()
  # Should not RETRY immediately, since it failed 1 time above already.
  expect_error(
    RETRY(
      "POST", "http://98d90a2a254647889e2e4c236fb576cd.com", times = 1,
      failure_threshold = 1
    ),
    regexp = "Too many request failures"
  )
  expect_error(
    RETRY(
      "POST", "http://98d90a2a254647889e2e4c236fb576cd.com", times = 1,
      failure_threshold = 2
    ),
    regexp = "resolve host"
  )
  expect_error(
    RETRY(
      "POST", "http://98d90a2a254647889e2e4c236fb576cd.com", times = 1,
      failure_threshold = 2
    ),
    regexp = "Too many request failures"
  )
})
