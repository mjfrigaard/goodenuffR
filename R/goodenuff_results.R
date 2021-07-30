#' goodenuff_results
#'
#' @import fs
#' @import readr
#' @export goodenuff_results
#'
#' @description Create results folder with figures, tables, and manuscript sub-folders.
goodenuff_results <- function() {
  fs::dir_create("results")
  fs::dir_create("results/figures")
  fs::dir_create("results/tables")
  fs::dir_create("results/manuscript")
}
