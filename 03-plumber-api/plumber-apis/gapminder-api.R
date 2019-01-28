# API for gapminder functions

# code for entire API
library(gapminder)
library(ggplot2)
library(dplyr)

# define get_data function
get_data <- function(selected_country) {
  gapminder %>%
    dplyr::filter(country == selected_country)
}

#' Get data for a specified country
#' @param country The country to get data for
#' @get /get_data
function(country="New Zealand"){
  get_data(country)
}

#' Plot data for a country
#' @png
#' @get /plot
function(country="New Zealand"){
  p <- get_data(country) %>% ggplot(aes(year, lifeExp)) + geom_line() + theme_bw()
  print(p)
}
