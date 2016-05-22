context("Body")

round_trip <- function(...) {
  content(POST("http://httpbin.org/post", ...))
}

data_path <- upload_file("data.txt")
data <- readLines("data.txt")

test_that("NULL body gives empty data element", {
  out <- round_trip(body = NULL)
  expect_equal(out$data, "")
})

test_that("FALSE body doesn't send body", {
  out <- round_trip(body = FALSE)
  expect_equal(out$data, NULL)
})

test_that("string/raw in body gives same string in data element", {
  out <- round_trip(body = "test")
  expect_equal(out$data, "test")

  out <- round_trip(body = charToRaw("test"))
  expect_equal(out$data, "test")
})

test_that("string/raw in body doesn't lose content type", {
  body <- charToRaw("test")
  content_type <- "application/awesome"
  response <- content(POST("http://httpbin.org/post", body = body,
                           add_headers("Content-Type" = content_type)))
  expect_equal(response$headers$`Content-Type`, content_type)
})

test_that("empty list gives empty body", {
  out <- round_trip(body = list(), encode = "form")
  expect_equal(out$data, "")

  out <- round_trip(body = list(), encode = "multipart")
  expect_equal(out$data, "")
})

test_that("named list matches form results (encode = 'form')", {
  out <- round_trip(body = list(a = 1, b = 2), encode = "form")
  expect_equal(out$form$a, "1")
  expect_equal(out$form$b, "2")
})

test_that("named list matches form results (encode = 'multipart')", {
  out <- round_trip(body = list(a = 1, b = 2), encode = "multipart")
  expect_equal(out$form$a, "1")
  expect_equal(out$form$b, "2")
})

test_that("named list matches form results (encode = 'json')", {
  out <- round_trip(body = list(a = 1, b = 2), encode = "json")
  expect_equal(out$json$a[[1]], 1)
  expect_equal(out$json$b[[1]], 2)
})

test_that("can do own encoding", {
  out <- round_trip(body = '{"a":1,"b":2}', content_type_json(), encode = "raw")
  expect_equal(out$json, list(a = 1, b = 2))
})

test_that("NULL elements are automatically dropped", {
  out <- round_trip(body = list(x = 1, y = NULL), encode = "form")
  expect_equal(out$form, list(x = "1"))

  out <- round_trip(body = list(x = 1, y = NULL), encode = "multipart")
  expect_equal(out$form, list(x = "1"))
})

test_that("file and form vals mixed give form and data elements", {
  out <- round_trip(body = list(y = data_path, a = 1))
  expect_equal(out$form$a, "1")
  expect_equal(strsplit(out$files$y, "\r?\n")[[1]], data)
})

test_that("single file matches contents on disk", {
  out <- round_trip(body = data_path)
  expect_equal(strsplit(out$data, "\r?\n")[[1]], data)
  expect_equal(out$headers$`Content-Type`, "text/plain")
})

test_that("explicit content type overrides defaults", {
  out <- round_trip(
    body = jsonlite::toJSON(list(a = 1, b = 2)),
    content_type_json()
  )

  expect_equal(out$headers$`Content-Type`, "application/json")
})

