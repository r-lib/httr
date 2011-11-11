server <- local({
  
  # Maintain a rolling list of the last 5 requests
  requests <- vector("list", 5)
  log <- function(path = NULL, query = NULL, postBody = NULL, headers = NULL) {
    
    headers <- rawToChar(headers)
    headers <- str_split(headers, "\n")[[1]]
    request <- list(path = path, query = query, 
      postBody = postBody, headers = headers)
    
    requests <<- c(requests[-1], request)
    return("OK")
  }
  
  last_request <- function() {
    requests[[5]]
  }
  last_requests <- function() {
    requests
  }
  
  env <- tools:::.httpd.handlers.env
  start <- function() {
    env$test <- log
    if (tools:::httpdPort == 0L) {
      tools::startDynamicHelp()
    }
    message("Test url: http://localhost:", tools:::httpdPort, 
      "/custom/test/")
    invisible(TRUE)
  }
  
  stop <- function() {
    env$test <- NULL
    invisible(TRUE)
  }
    
  list(start = start, stop = stop, last_request = last_request,
    last_requests = last_requests)
})

start_test <- server$start
stop_test <- server$stop
last_request <- server$last_request
last_requests <- server$last_requests

