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

test_that("new caches are Rbuildignored and gitignored", {
  owd <- setwd(tmp_dir())
  on.exit(setwd(owd))
  file.create("DESCRIPTION")

  ## default: options("httr_oauth_cache" = NA)
  ## not tested
  ## if cache does not exist, will not be created if !interactive()

  old <- options("httr_oauth_cache" = TRUE)
  on.exit(options(old), add = TRUE)
  use_cache()
  expect_true(file.exists(".Rbuildignore"))
  expect_identical(readLines(".Rbuildignore"), "^\\.httr-oauth$")
  expect_true(file.exists(".gitignore"))
  expect_identical(readLines(".gitignore"), ".httr-oauth")

  unlink(c(".httr-oauth", ".Rbuildignore", ".gitignore"))

  use_cache("xyz")
  expect_true(file.exists(".Rbuildignore"))
  expect_identical(readLines(".Rbuildignore"), "^xyz$")
  expect_true(file.exists(".gitignore"))
  expect_identical(readLines(".gitignore"), "xyz")
})
