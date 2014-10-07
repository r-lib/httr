context("OAuth: server side")

# Reference values from
# https://developers.google.com/accounts/docs/OAuth2ServiceAccount

test_that("reference header yields expected base64", {
  expect_equal(jwt_base64(jwt_header()), "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9")
})

test_that("reference claimset yields expected base64", {
  cs <- jwt_claimset(
    "761326798069-r5mljlln1rd4lrbhg75efgigp36m78j5@developer.gserviceaccount.com",
    "https://www.googleapis.com/auth/prediction",
    "https://accounts.google.com/o/oauth2/token",
    1328554385,
    1328550785
  )
  expected <- "eyJpc3MiOiI3NjEzMjY3OTgwNjktcjVtbGpsbG4xcmQ0bHJiaGc3NWVmZ2lncDM2bTc4ajVAZGV2ZWxvcGVyLmdzZXJ2aWNlYWNjb3VudC5jb20iLCJzY29wZSI6Imh0dHBzOi8vd3d3Lmdvb2dsZWFwaXMuY29tL2F1dGgvcHJlZGljdGlvbiIsImF1ZCI6Imh0dHBzOi8vYWNjb3VudHMuZ29vZ2xlLmNvbS9vL29hdXRoMi90b2tlbiIsImV4cCI6MTMyODU1NDM4NSwiaWF0IjoxMzI4NTUwNzg1fQ"

  expect_equal(jwt_base64(cs), expected)
})


