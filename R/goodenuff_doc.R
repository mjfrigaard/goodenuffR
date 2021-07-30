#' goodenuff_docs
#'
#' @import fs
#' @import readr
#' @export goodenuff_doc
#'
#' @description Create doc folder with notebook.md, manuscript.md, and changelog.txt files.
goodenuff_doc <- function() {
  fs::dir_create("docs")

  fs::file_create("docs/notebook.md")

  notebook_content <- "# Notebook\n\n...a running lab notebook describing various ideas for the project and how these were implemented\n\n\n\n\nsource: https://swcarpentry.github.io/good-enough-practices-in-scientific-computing/"
  readr::write_lines(x = notebook_content, file = "docs/notebook.md")

  fs::file_create("docs/manuscript.md")
  manuscript_content <- "# Manuscript\n\n...a running draft of a manuscript describing the project findings\n\n\n\n\nsource: https://swcarpentry.github.io/good-enough-practices-in-scientific-computing/"
  readr::write_lines(x = manuscript_content, file = "docs/manuscript.md")


  fs::file_create("docs/changelog.txt")
  changelog_content <- "...make dated notes about changes to the project in this file in reverse chronological order (i.e., most recent first). This file is the equivalent of a lab notebook, and should contain entries like those shown below.\n\n## 2016-04-08\n\n* Switched to cubic interpolation as default.\n\n* Moved question about family's TB history to end of questionnaire.\n\n## 2016-04-06\n\n* Added option for cubic interpolation.\n\n* Removed question about staph exposure (can be inferred from blood test results).\n\n\n\n\nsource: https://swcarpentry.github.io/good-enough-practices-in-scientific-computing/"
  readr::write_lines(x = changelog_content, file = "docs/changelog.txt")
}
