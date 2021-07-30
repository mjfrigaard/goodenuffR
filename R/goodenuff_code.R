#' goodenuff_code
#'
#' @import fs
#' @import readr
#' @import purrr
#' @export goodenuff_code
#'
#' @description Create the code folder for import, tidy, wrangle, visualize, model, communicate, and runall
goodenuff_code <- function() {
  fs::dir_create(path = "code/")
  code_files <- c("code/01-import.R", "code/02-tidy.R", "code/03-wrangle.R", "code/04-visualize.R", "code/05-model.R", "code/06-communicate.R")
  map(.x = code_files, .f = fs::file_create)
  script_headers <- c("#=====================================================================#\n# This is code to create:\n# Authored by and feedback to:\n# MIT License\n# Version:\n#=====================================================================#\n")
  map2(.x = script_headers, .y = code_files, .f = readr::write_lines, append = TRUE)

  fs::file_create(path = "code/runall.R")
  run_all_content <- c("#=====================================================================#\n\n# The controller script: A controller script for a simple project, for example,\n# may read a raw data table, import and apply several cleanup and analysis\n# functions from the other files in this directory, and create and save a\n# numeric result.\n\n# TEMP_DIR = ./temp_zip_files/\n\n# echo 'Packaging zip files required by analysis tool...'\n# mkdir $(TEMP_DIR)\n# ./src/make-zip-files.py $(TEMP_DIR) *.dat\n\n# echo 'Analyzing...'\n# ./bin/sqr_mean_analyze -i $(TEMP_DIR) -b 'temp'\n\n# echo 'Cleaning up...'\n# rm -rf $(TEMP_DIR)\n\n#=====================================================================#")
  readr::write_lines(x = run_all_content, file = "code/runall.R")
}
