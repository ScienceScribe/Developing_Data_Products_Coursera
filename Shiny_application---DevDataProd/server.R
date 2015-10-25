#server.R

library(shiny)
data(islands)

shinyServer(
  function(input, output) {
    random_indices <- sample(1:48, 3, replace = FALSE)
    landmass <- names(islands[random_indices[1]])
    #convert to square miles (area in data set is in 1000 square miles)
    correct_area <- unname(islands[random_indices[1]]) * 1000  
    rounded_area <- signif(correct_area, 1)
    
    output$landmass <- renderText({landmass})
    
    output$guess <- renderText(input$guess)
    numeric_guess <- reactive(as.numeric(input$guess))
    rounded_guess <- reactive(signif(numeric_guess, 1))
    
    output$answer <- renderText(correct_area)
   
  }
)
