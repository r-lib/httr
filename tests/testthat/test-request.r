context("Request")

test_that("c.request overwrites repeated options", {
  expect_equal(c(request(url = "a"), request(url = "b")) ,
    request(url = "b"))
})

test_that("c.request merges headers", {
  expect_equal(c(request(headers = c("a" = "a")), request(headers = c("b" = "b"))),
    request(headers = c("a" = "a", "b" = "b")))
})
