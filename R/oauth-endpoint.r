#' @param request If using OAuth, leave this null
#' @export
oauth_endpoint <- function(request = NULL, authorize, access, base_url = NULL) {
  if (!is.null(base_url)) {
    path <- parse_url(base_url)$path
    list(
      request = modify_url(base_url, path = file.path(path, request)),
      authorize = modify_url(base_url, path = file.path(path, authorize)),
      access = modify_url(base_url, path = file.path(path, access))
    )    
  } else {
    list(request = request, authorize = authorize, access = access)
  }
}