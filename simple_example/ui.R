
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyUI(fluidPage(

  titlePanel("Using Geolocation"),
    
  tags$script('
       navigator.geolocation.getCurrentPosition(onSuccess, onError);
      
       function onError (err) {
         Shiny.onInputChange("geolocation", false);
       }
      
       function onSuccess (position) {
         var coords = position.coords;
         console.log(coords.latitude + ", " + coords.longitude);
         Shiny.onInputChange("geolocation", true);
         Shiny.onInputChange("lat", coords.latitude);
         Shiny.onInputChange("long", coords.longitude);
        }
      '),
    
    # Show a plot of the generated distribution
    fluidRow(column(width = 2,
                    verbatimTextOutput("lat"),
                    verbatimTextOutput("long"),
                    verbatimTextOutput("geolocation"))
    )
  )
)
