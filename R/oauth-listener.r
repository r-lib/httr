#' @export
oauth_listener <- function(request_url) {
  if (!require("Rook")) {
    stop("Rook package required to capture OAuth credentials")
  }
  
  info <- NULL
  listen <- function(env) {
    req <- Request$new(env)    
    info <<- req$params()
    
    res <- Response$new()
    res$header("Content-type", "text/plain")
    res$write("Authentication complete - you can now close this page and ")
    res$write("return to R.")
    res$finish()
  }
  
  server <- Rhttpd$new()
  server$stop()
  server$add(listen, name = "OAuth")
  server$start(port = 1410, quiet = TRUE)

  message("Waiting for authentication in browser...")
  Sys.sleep(1)
  BROWSE(request_url)
  
  # wait until we get a response
  while(is.null(info)) {
    Sys.sleep(1)
  }
  message("Authentication complete.")

  server$remove("OAuth")
  server$stop()
  
  info
}

#' @export
oauth_callback <- function() {
  "http://localhost:1410/custom/OAuth/cred"
}

