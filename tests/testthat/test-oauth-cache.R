context("OAuth cache")

tmp_dir <- function() {
  x <- tempfile()
  dir.create(x)
  x
}

test_that("use_cache() returns NULL or filepath", {
  old <- options()
  on.exit(options(old))
  owd <- setwd(tmp_dir())
  on.exit(setwd(owd), add = TRUE)

  expect_equal(use_cache(FALSE), NULL)
  expect_equal(use_cache(TRUE), ".httr-oauth")
  expect_equal(use_cache("xyz"), "xyz")
})

test_that("use_cache() respects options", {
  old <- options()
  on.exit(options(old))
  owd <- setwd(tmp_dir())
  on.exit(setwd(owd), add = TRUE)

  options(httr_oauth_cache = FALSE)
  expect_equal(use_cache(), NULL)

  options(httr_oauth_cache = TRUE)
  expect_equal(use_cache(), ".httr-oauth")
})

test_that("token saved to and restored from cache", {
  owd <- setwd(tmp_dir())
  on.exit(setwd(owd))

  token_a <- Token2.0$new(
    app = oauth_app("x", "y", "z"),
    endpoint = oauth_endpoints("google"),
    cache_path = ".tmp-cache",
    credentials = list(a = 1)
  )
  token_a$cache()

  token_b <- Token2.0$new(
    app = oauth_app("x", "y", "z"),
    endpoint = oauth_endpoints("google"),
    cache_path = ".tmp-cache"
  )

  expect_true(token_b$load_from_cache())
  expect_equal(token_b$app, token_a$app)
  expect_equal(token_b$endpoint, token_a$endpoint)
  expect_equal(token_b$credentials, token_a$credentials)
})
