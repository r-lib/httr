context("SSL")

test_that("SSL certificates verified as expected", {
  skip_on_cran()
  expect_equal(status_code(GET("https://google.com")), 200L)
  expect_equal(status_code(GET("https://firefox.com")), 200L)
})
