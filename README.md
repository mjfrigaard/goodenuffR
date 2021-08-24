
<!-- README.md is generated from README.Rmd. Please edit that file -->

# goodenuffR

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

## Installation

You can install the Github version below:

``` r
install.packages("devtools")
devtools::install_github("mjfrigaard/goodenuffR")
```

## Quick Start

``` r
library(goodenuffR)
goodenuffR::goodenuff_project(project_name = "my project", parent_folder = "projects")
```

## Example

Create the `code/`, `data/`, `doc/`, and `results/` folders using the
functions below:

``` r
library(goodenuffR)
goodenuffR::goodenuff_code()   
goodenuffR::goodenuff_data()   
goodenuffR::goodenuff_doc()   
goodenuffR::goodenuff_results()
```

Create the necessary files for collaboration:

``` r
goodenuffR::goodenuff_collab()
```

How your project will look:

``` r
├── CITATION
├── LICENSE
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
│   ├── manuscript.md
│   └── notebook.md
├── my-new-project.Rproj
├── requirements.txt
└── results
    ├── figures
    ├── manuscript
    └── tables
```

## Markdown Template

The `goodenuffR` package also comes with an R markdown template:

<img src="img/new-rmd.png" width="100%" />
