#' goodenuff_data
#'
#' @import fs
#' @import readr
#' @export goodenuff_data
#'
#' @description Create data folder, README.md file, and raw subfolder.
goodenuff_data <- function() {
  fs::dir_create("data/")
  fs::dir_create("data/raw")
  data_info <- "# Project Data  \n\n\nFor guidance please see: https://help.osf.io/hc/en-us/articles/360019739054-How-to-Make-a-Data-Dictionary\n\n\n\n## Additional Resources\n\n1. Sharing data\nhttp://bit.ly/data-4-sharing\n\n\n2. Data in spreadsheets\nhttp://bit.ly/data-in-sheets\n\n\n\n\n\nsource: https://swcarpentry.github.io/good-enough-practices-in-scientific-computing/"
  fs::file_create("data/README.md")
  readr::write_lines(x = data_info, file = "data/README.md", append = TRUE)
}
