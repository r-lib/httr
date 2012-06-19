context("Config")

if (Sys.info()["user"] == "hadley") {
  test_that("timeout enforced", {
    expect_error(GET("http://httpbin.org/delay/1", timeout(0.5)), "timed out")
  })
}

test_that("basic authentication works", {
  h <- handle("http://httpbin.org")
  path <- "basic-auth/user/passwd"

  r <- GET(path = path, handle = h)
  expect_equal(r$status, 401)

  r <- GET(path = path, handle = h,
    config = authenticate("user", "passwd", "basic"))
  expect_equal(r$status, 200)  
  
})

test_that("digest authentication works", {
  h <- handle("http://httpbin.org")
  path <- "digest-auth/qop/user/passwd"

  r <- GET(path = path, handle = h)
  expect_equal(r$status, 401)

  r <- GET(path = path, handle = h,
    config = authenticate("user", "passwd", "digest"))
  expect_equal(r$status, 200)  
})