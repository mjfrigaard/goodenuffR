## code to prepare `StarWarsCSV` dataset goes here
library(vroom)
# import
StarWarsCSV <- vroom::vroom(file = "https://raw.githubusercontent.com/tidyverse/dplyr/master/data-raw/starwars.csv")
# export
readr::write_csv(x = StarWarsCSV, "data-raw/StarWarsCSV.csv")
# use
usethis::use_data(StarWarsCSV, overwrite = TRUE)
