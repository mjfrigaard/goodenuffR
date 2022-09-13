#' Insert goodenuff script header
#'
#' @import purrr
#' @import rstudioapi
#' @import stringr
#' @export goodenuff_header
#'
#' @examples # use this to create a script header (with RStudio open)
#' # goodenuff_header()
#'
#' @description The goodenuff_header() function can be used in a new R script
#'     to create a header. The header includes sections for:
#' - what the code creates
#' - who the author is
#' - MIT License
#' - Version
goodenuff_header <- function() {

  script_header <- c("#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#\n# This is code to create:\n# Authored by and feedback to:\n# MIT License\n# Version:\n#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~#\n")
  purrr::map(.x = script_header, .f = rstudioapi::insertText)
}
