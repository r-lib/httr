context("OAuth cache")

test_that("use_cache() returns NULL or filepath", {
  expect_equal(use_cache(FALSE), NULL)
  expect_equal(use_cache(TRUE), ".httr-oauth")
  expect_equal(use_cache("xyz"), "xyz")
})

test_that("use_cache() respects options", {
  old <- options()
  on.exit(options(old))

  options(httr_oauth_cache = FALSE)
  expect_equal(use_cache(), NULL)

  options(httr_oauth_cache = TRUE)
  expect_equal(use_cache(), ".httr-oauth")
})

test_that("token saved to and restored from cache", {
  on.exit(unlink(".tmp-cache"))

  token_a <- Token2.0(
    app = oauth_app("x", "y", "z"),
    endpoint = oauth_endpoints("google"),
    params = list(),
    credentials = list(a = 1),
    cache_path = ".tmp-cache"
  )
  token_a$cache()

  token_b <- Token2.0(
    app = oauth_app("x", "y", "z"),
    endpoint = oauth_endpoints("google"),
    params = list(),
    cache_path = ".tmp-cache"
  )

  expect_true(token_b$load_from_cache())
  expect_equal(token_b$app, token_a$app)
  expect_equal(token_b$endpoint, token_a$endpoint)
  expect_equal(token_b$credentials, token_a$credentials)
})
