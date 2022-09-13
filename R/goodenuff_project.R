#' Create a new goodenuffR project
#'
#' @import rstudioapi
#' @import fs
#' @import stringr
#' @importFrom stringr str_replace_all
#' @export goodenuff_project
#'
#' @description Create and open a new 'good enough' project.
#' @param project_name name of your project
#' @param parent_folder the parent folder of your project
goodenuff_project <- function(project_name, folder_path) {
  # check for folder_path
  fs::dir_create(path = folder_path)
  folder_path <- base::suppressWarnings(base::normalizePath(folder_path))
  # # replace white-space
  no_white_space <- stringr::str_replace_all(project_name, "\\s+", "_")
  # lowercase
  clean_project_name <- stringr::str_to_lower(no_white_space)
  # # create path to project
  project_path <- base::paste0(folder_path, "/", clean_project_name, "/")
  # # # initialize project
  rstudioapi::initializeProject(path = project_path)
  # # # full project path (for opening in new session)
  rproj_full_project_path <- base::paste0(project_path, clean_project_name, ".Rproj")
  # # open new session
  rstudioapi::openProject(path = rproj_full_project_path, newSession = TRUE)
}
