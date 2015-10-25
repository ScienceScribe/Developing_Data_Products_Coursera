#ui.R

library(shiny)

shinyUI(fluidPage(
  
  #app title
  titlePanel("World Landmass Area Guessing Game (WLAGG)"),
    
  #overall layout
  sidebarLayout(
    #sidebar for user input
    sidebarPanel(
      p("What is the area (in square miles) of:"),
      textOutput("landmass"),
      
      br(),
      br(),
      br(),
      
      sliderInput(inputId = "guess", label = "Choose your answer:", min = 10, max = 20000000, value = 10, step = 10),
      
      actionButton(inputId = "go", label = "Press to submit your answer")
                  
    ),
    
    #main panel to display results  
    mainPanel(
      p("You chose:"),
      verbatimTextOutput("guess"),
      
#       textOutput("feedback"),
#       br(),

      conditionalPanel(
        "condition = input.go == '1'",
        p("The correct answer is:"),
        textOutput("answer"),
        br(),
        br(),
        br(),
        p("To play again, please refresh your browser."))
    )
    
  )
)
)

