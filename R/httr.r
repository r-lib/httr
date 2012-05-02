#' \pkg{httr} makes http easy.
#'
#' \code{httr} is organised around the five most common http verbs:
#' \code{\link{GET}}, \code{\link{POST}}, \code{\link{HEAD}},
#' \code{\link{PUT}}, and \code{\link{DELETE}}.
#'
#' Each request returns a \code{\link{request}} object which provides
#' easy access to status code, cookies, headers, timings, and other useful
#' info.  The content of the request is available as a raw vector
#' (\code{\link{content}}), character vector (\code{\link{text_content}}), 
#' or parsed into an R object (\code{\link{parsed_content}}), currently for
#' html, xml, json, png and jpeg).
#' 
#' Requests can be modified by various config options like
#' \code{\link{set_cookies}}, \code{\link{add_headers}}, 
#' \code{\link{authenticate}}, \code{\link{use_proxy}}, 
#' \code{\link{verbose}}, and \code{\link{timeout}}
#'
#' @name httr
#' @docType package
#' @import RCurl stringr
NULL