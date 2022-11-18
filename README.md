
<!-- README.md is generated from README.Rmd. Please edit that file -->

# goodenuffR

<img src="man/figures/goodenuffR.png" width="50%" height="50%" style="display: block; margin: auto auto auto 0;" />

This `goodenuffR` package is based on the **excellent** advice in the
paper, [“Good Enough Practices for Scientific
Computing”](https://swcarpentry.github.io/good-enough-practices-in-scientific-computing/)
by Wilson et al. 

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
<!-- badges: end -->

The goal of `goodenuffR` is to create the files and folders outlined in
the paper above (and like the folder tree below)

``` markdown
|-- CITATION
|-- README
|-- LICENSE
|-- requirements.txt
|-- data
|   -- birds_count_table.csv
|-- doc
|   -- notebook.md
|   -- manuscript.md
|   -- changelog.txt
|-- results
|   -- summarized_results.csv
|-- src
|   -- sightings_analysis.py
|   -- runall.py
```

## Installation

You can install the Github version below:

``` r
install.packages("devtools")
devtools::install_github("mjfrigaard/goodenuffR")
```

## Quick Start

<img src="man/figures/goodenuff-setup.gif" width="100%" />

Run this:

``` r
library(goodenuffR)
goodenuffR::goodenuff_project(
  project_name = "my project", folder_path = "~/projects")
```

Then run this:

``` r
library(goodenuffR)
goodenuff_files()
```

And you’ll see this:

    ├── CITATION
    ├── LICENSE
    ├── README.Rmd
    ├── code
    │   ├── 01-import.R
    │   ├── 02-tidy.R
    │   ├── 03-wrangle.R
    │   ├── 04-visualize.R
    │   ├── 05-model.R
    │   ├── 06-communicate.R
    │   └── runall.R
    ├── data
    │   ├── README.md
    │   └── raw
    ├── docs
    │   ├── changelog.txt
    │   ├── manuscript.Rmd
    │   └── notebook.Rmd
    ├── my_project.Rproj
    ├── requirements.txt
    └── results
        ├── figures
        ├── manuscript
        └── tables

## BONUS: RMarkdown Template

The `goodenuffR` package also comes with a `rmarkdown` template:

<img src="man/figures/new-rmd.png" width="100%" />
