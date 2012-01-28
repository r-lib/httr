tools::startDynamicHelp()
port <- tools:::httpdPort
test_server <- "http://requestb.in/1ejpzfj1"

# Create a new handle for every request - no connection sharing
rowMeans(replicate(20, 
  GET(handle = handle(test_server), path = "index.html")$times))

help_handle <- handle(test_server)
# Re use the same handle for multiple requests
rowMeans(replicate(20, 
  GET(handle = test_server, path = "index.html")$times))