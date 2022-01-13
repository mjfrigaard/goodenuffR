#' rheadr
#'
#' @param name
#'
#' @import purrr
#' @import rstudioapi
#' @export rheadr
#'
#' @examples # use this to create a section header in a .R file
#' rheadr("packages")
#'
#' @description The rheadr function is similar to the hot keys 'cmd + shift + R'
#' for creating a section header.
rheadr <- function(name) {

    section_header <- paste0("# ‹(•_•)› ", name, " ––+––+––+––+––+––+––+––––+––+––+––––+––+ ----")
  purrr::map(.x = section_header, .f = rstudioapi::insertText)
}
