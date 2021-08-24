#' StarWarsCSV
#'
#' @description CSV version of dplyr::starwars (from SWAPI, the Star Wars API, https://swapi.dev/), which has been revised to reflect additional research into gender and sex determinations of characters.
#' StarWarsCSV
#'
#' @format A tibble with 87 rows and 14 variables:
#' \describe{
#'   \item{name}{Name of the character}
#'   \item{height}{wHeight (cm)}
#'   \item{mass}{Weight (kg)}
#'   \item{hair_color,skin_color,eye_color}{Hair, skin, and eye colors}
#'   \item{birth_year}{}
#'   \item{sex}{The biological sex of the character, namely male, female, hermaphroditic, or none (as in the case for Droids).}
#'   \item{gender}{The gender role or gender identity of the character as determined by their personality or the way they were programmed (as in the case for Droids).}
#'   \item{homeworld}{Name of homeworld}
#'   \item{species}{Name of species}
#'   \item{films}{List of films the character appeared in}
#'   \item{vehicles}{List of vehicles the character has piloted}
#'   \item{starships}{List of starships the character has piloted}
#' }
#' @source \url{https://github.com/tidyverse/dplyr/blob/master/data-raw/starwars.csv}
