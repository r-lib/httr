context("Request")

test_that("c.request overwrites repeated options", {
  expect_equal(
    c(request(url = "a"), request(url = "b")),
    request(url = "b")
  )
})

test_that("c.request merges headers", {
  expect_equal(
    c(request(headers = c("a" = "a")), request(headers = c("b" = "b"))),
    request(headers = c("a" = "a", "b" = "b"))
  )
})

test_that('request_build upper cases verbs', {
  expect_equal(request_build('get', 'asdf.com')$method, "GET")
  expect_equal(request_build('post', 'asdf.com')$method, "POST")
})

test_that("non-http methods don't parse headers", {
  skip_on_cran()
  skip_on_ci()

  # Must not reuse or FTP connection is closed at the wrong time,
  # causing problems in final test
  r <- GET(
    "ftp://cran.r-project.org/incoming/",
    config(forbid_reuse = TRUE)
  )
  expect_type(r$headers, "raw")
})
