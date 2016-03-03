
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {
  
  output$lat <- renderPrint({
    input$lat
  })
  
  output$long <- renderPrint({
    input$long
  })
  
  output$geolocation <- renderPrint({
    input$geolocation
  })
  
  output$accuracy <- renderPrint({
    input$accuracy
  })
  
  output$time <- renderPrint({
    input$time
  })
  
})
