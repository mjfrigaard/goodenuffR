#' goodenuff_files
#'
#' @export goodenuff_files
#'
#' @description Create all project files.
goodenuff_files <- function() {
  # wrapper for all
  goodenuff_code()
  goodenuff_collab()
  goodenuff_data()
  goodenuff_doc()
  goodenuff_results()
}
