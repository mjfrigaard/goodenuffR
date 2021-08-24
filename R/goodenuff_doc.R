#' goodenuff_docs
#'
#' @import fs
#' @import readr
#' @export goodenuff_doc
#'
#' @description Create doc folder with notebook.Rmd, manuscript.Rmd, and changelog.txt files.
goodenuff_doc <- function() {
  fs::dir_create("docs")

# notebook ----------------------------------------------------------------


  fs::file_create("docs/notebook.Rmd")
  notebook_content <- "---\ntitle: \"Notebook\"\noutput: \"html_notebook\"\n---\n\n\nThis is an [R Markdown](http://rmarkdown.rstudio.com) Notebook. When you execute code within the notebook, the results appear beneath the code.\n\n\nTry executing this chunk by clicking the *Run* button within the chunk or by placing your cursor inside it and pressing *Cmd+Shift+Enter*.\n\n```{r}\n\nplot(cars)\n\n```\n\n\nAdd a new chunk by clicking the *Insert Chunk* button on the toolbar or by pressing *Cmd+Option+I*.\n\n\nWhen you save the notebook, an HTML file containing the code and output will be saved alongside it (click the *Preview* button or press *Cmd+Shift+K* to preview the HTML file).\n\n\nThe preview shows you a rendered HTML copy of the contents of the editor. Consequently, unlike *Knit*, *Preview* does not run any R code chunks. Instead, the output of the chunk when it was last run in the editor is displayed.\n\n\n\n...a running lab notebook describing various ideas for the project and how these were implemented\n\n\n\n\nsource: https://swcarpentry.github.io/good-enough-practices-in-scientific-computing/"
  readr::write_lines(x = notebook_content, file = "docs/notebook.Rmd")

# manuscript --------------------------------------------------------------


  fs::file_create("docs/manuscript.Rmd")
  manuscript_content <- "---\ntitle: \"Manuscript\"\noutput: \"pdf_document\"\n---\n\n\n```{r setup, include=FALSE}\nknitr::opts_chunk$set(echo = TRUE)\n```\n\n## R Markdown\n\nThis is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.\n\nWhen you click the **Knit** button a document will be generated that includes both content as well as the output of any embedded R code chunks within the document. You can embed an R code chunk like this:\n\n```{r cars}\nsummary(cars)\n```\n\n## Including Plots\n\nYou can also embed plots, for example:\n\n```{r pressure, echo=FALSE}\nplot(pressure)\n```\n\nNote that the `echo = FALSE` parameter was added to the code chunk to prevent printing of the R code that generated the plot\n\n\n\n....a running draft of a manuscript describing the project findings\n\n\n\n\nsource: https://swcarpentry.github.io/good-enough-practices-in-scientific-computing/"
  readr::write_lines(x = manuscript_content, file = "docs/manuscript.Rmd")

# changelog ---------------------------------------------------------------

  fs::file_create("docs/changelog.txt")
  changelog_content <- "...make dated notes about changes to the project in this file in reverse chronological order (i.e., most recent first). This file is the equivalent of a lab notebook, and should contain entries like those shown below.\n\n## 2016-04-08\n\n* Switched to cubic interpolation as default.\n\n* Moved question about family's TB history to end of questionnaire.\n\n## 2016-04-06\n\n* Added option for cubic interpolation.\n\n* Removed question about staph exposure (can be inferred from blood test results).\n\n\n\n\nsource: https://swcarpentry.github.io/good-enough-practices-in-scientific-computing/"
  readr::write_lines(x = changelog_content, file = "docs/changelog.txt")
}
