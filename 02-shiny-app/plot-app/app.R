library(gapminder)
library(dplyr)
library(shiny)
library(ggplot2)

ui <- fluidPage(
  titlePanel('Gapminder Shiny App'),
  sidebarPanel(
    selectInput('country', 'Select country', choices = c('United Kingdom', 'New Zealand', 'Afghanistan'))
  ),
  mainPanel(
    plotOutput('country_plot')
  )
)

server <- function(input, output) {
  
  output$country_plot <- renderPlot({
    gapminder %>%
      dplyr::filter(country == input$country) %>%
      ggplot(aes(year, lifeExp)) + geom_line() + theme_bw()
  })
  
}

# Run the application 
shinyApp(ui = ui, server = server)