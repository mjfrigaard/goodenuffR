#' topr
#'
#' @import purrr
#' @import rstudioapi
#' @import stringr
#' @export topr
#'
#' @examples # use this to create a script header
#'
#' @description The topr function can be used in a new R script to create a
#' header. The header includes sections for:
#' - what the code creates
#' - who the author is
#' - MIT License
#' - Version
topr <- function() {

  script_header <- c("#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#\n# This is code to create:\n# Authored by and feedback to:\n# MIT License\n# Version:\n#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#\n")
  purrr::map(.x = script_header, .f = rstudioapi::insertText)
}
