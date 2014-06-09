#' Get and set environment variables.
#'
#' The problem with this approach is that R doesn't really have any notion of
#' a "project" .Renviron.
#'
#' @param Name of environment variable.
#' @param Value of environment variable. Use \code{NA} to unset.
#' @param Scope of change. If "session", the change is ephemeral and will
#'   disappear when you restart R. If "project", will modify project the
#'   \code{.Renviron} so it's permanently set for this project/working
#'   directory. If "user", modifies your \code{~/.Renviron} so that it
#'   affects every project. If "site", modifies the site .Renviron so that
#'   it affects every user.
#' @return Invisibly, the previous value of the environment variable.
#' @noRd
set_envvar <- function(name, value, scope = c("session", "project", "user", "site")) {
  stopifnot(length(name) == 1, length(value) == 1)
  scope <- match.arg(scope)

  old <- get_envvar(value)

  if (scope == "session") {
    set_envvar_local(name, value)
  } else {
    path <- switch(scope,
      project = ".Renviron",
      user = Sys.getenv("R_ENVIRON_USER", "~/.Renviron"),
      site = Sys.getenv("R_ENVIRON", file.path(R.home("etc"), "Renviron.site"))
    )
    set_envvar_renviron(name, value, path)
  }

  invisible(old)
}

set_envvars <- function(..., .envs = list(), .scope) {
  vars <- c(list(...), .envs)
  Map(function(name, value) set_envvar(name, value, scope = .scope),
    names(vars), vars)
}

#' @rdname set_envvar
#' @noRd
get_envvar <- function(name) {
  stopifnot(is.character(name))
  Sys.getenv(name, unset = NA_character_)
}

set_envvar_local <- function(name, value) {
  if (is.na(value)) {
    Sys.unsetenv(name)
  } else {
    l <- setNames(list(quote(value)), name)
    do.call("Sys.setenv", l)
  }
}

# @return \code{TRUE} if an existing env var was modified, \code{FALSE}
#   otherwise (invisibly).
set_envvar_renviron <- function(name, value, path) {
  ev <- paste0(name, '="', value, '"')
  if (is.na(value)) value <- ""

  if (!file.exists(path)) {
    # Create if it doesn't already exist
    cat(ev, "\n", sep = "", file = path)
    return(invisible(FALSE))
  }

  lines <- tryCatch(readLines(path), error = function(e) {
    stop("Failed to read ", path, " with error:\n", e$message, call. = FALSE)
  })
  re <- paste0("^", name, "=")
  matches <- which(grepl(lines, re))

  # No matches, so append to end of file
  if (length(matches) == 0) {
    cat(ev, "\n", sep = "", file = path, append = TRUE)
    return(invisible(FALSE))
  }

  if (length(matches) == 1) {
    lines[matches] <- ev
  } else {
    lines[matches[1]] <- ev
    lines <- lines[-matches[-1]]
  }

  lines <- tryCatch(writeLines(lines, path), error = function(e) {
    stop("Failed to write ", path, " with error:\n", e$message, call. = FALSE)
  })


  invisible(TRUE)
}

can_write <- function(x) file.access(x, 6)
