#' goodenuff_project
#'
#' @import rstudioapi
#' @import dplyr
#' @import tidyr
#' @import fs
#' @import stringr
#' @export goodenuff_project
#'
#' @description Create a new 'good enough' project.
goodenuff_project <- function(project_name, parent_folder) {
  # check for parent folder
  fs::dir_create(path = parent_folder)
  # clean string for project name
  clean_project_name <- janitor::make_clean_names(project_name, parsing_option = 1, numerals = "right")
  # create path to project
  project_path <- paste0(parent_folder, "/", clean_project_name, "/")
  # initialize project
  rstudioapi::initializeProject(path = project_path)
  # full project path (for opening in new session)
  full_project_path <- paste0(project_path, clean_project_name, ".Rproj")
  # open new session
  rstudioapi::openProject(path = full_project_path, newSession = TRUE)
}
