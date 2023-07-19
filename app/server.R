# Define server logic required to draw a histogram ----
server <- function(input, output) {
  shinymetrics_server()
  
  output$distPlot <- renderPlot({
    hist(rnorm(input$obs))
  })
}
