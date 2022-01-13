#' rheadr
#'
#' @param fun_headr
#'
#' @import purrr
#' @import rstudioapi
#' @export fun_headr
#'
#' @examples # use this to create a fun section header in any .R file
#' # (with RStudio open)
#' # fun_headr("packages")
#'
#' @description The fun_headr function is similar to the hot keys
#' 'cmd + shift + R' for creating a section header.
fun_headr <- function(name) {
    section_header <- paste0("# <(+_+)> ", name, " ––+––+––+––+––+––+––+––––+––+––+––––+––+ ----")
  purrr::map(.x = section_header, .f = rstudioapi::insertText)
}
