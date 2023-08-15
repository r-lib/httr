test_that("can upload with redirect", {
  skip_on_cran()

  str <- paste(letters, collapse = '')
  tmp <- tempfile()
  writeBin(str, tmp)

  resp <- PUT(
    "https://hb.cran.dev/redirect-to?url=/put&status_code=307",
    body = upload_file(tmp)
  )

  expect_equal(resp$status_code, 200)
  expect_equal(resp$url, "https://hb.cran.dev/put")
  json <- content(resp)
  expect_equal(json$data, str)
})
