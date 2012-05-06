context("Config")

if (Sys.info()["user"] == "hadley") {
  test_that("timeout enforced", {
    expect_error(GET("http://httpbin.org/delay/1", timeout(0.5)), "timed out")
  })
}

test_that("basic authentication works", {
  url <- "http://httpbin.org/basic-auth/user/passwd"
  
  r <- GET(url)
  expect_equal(r$status, 401)

  r <- GET(url, authenticate("user", "passwd"))
  expect_equal(r$status, 200)  
})

test_that("digest authentication works", {
  url <- "http://httpbin.org/digest-auth/qop/user/passwd"
  
  r <- GET(url)
  expect_equal(r$status, 401)

  r <- GET(url, authenticate("user", "passwd", "digest"))
  expect_equal(r$status, 200)  
})