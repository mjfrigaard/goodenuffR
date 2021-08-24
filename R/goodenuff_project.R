#' goodenuff_project
#'
#' @import rstudioapi
#' @import dplyr
#' @import tidyr
#' @import fs
#' @import stringr
#' @export goodenuff_project
#' @import
#'
#' @description Create and open a new 'good enough' project.
#' @param project_name name of your project
#' @param parent_folder the parent folder of your project
goodenuff_project <- function(project_name, parent_folder) {
  project_name <- as.character(project_name)
  parent_folder <- as.character(parent_folder)
  # check for parent folder
  fs::dir_create(path = parent_folder)
  # clean string for project name
  clean_project_name <- janitor::make_clean_names(project_name, parsing_option = 1, numerals = "right")
  # create path to project
  project_path <- paste0(parent_folder, "/", clean_project_name, "/")
  # initialize project
  rstudioapi::initializeProject(path = project_path)
  # create files in project
  map(.x = project_path, goodenuff_code)
  map(.x = project_path, goodenuff_collab)
  map(.x = project_path, goodenuff_data)
  map(.x = project_path, goodenuff_doc)
  map(.x = project_path, goodenuff_results)
  # full project path (for opening in new session)
  rproj_full_project_path <- paste0(project_path, clean_project_name, ".Rproj")
  # open new session
  rstudioapi::openProject(path = rproj_full_project_path, newSession = TRUE)
}
