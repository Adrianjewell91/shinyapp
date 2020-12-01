shinyServer(function(input, output, session) {
  # Get the data from the variables declared on the ui.R file
  df <- reactive({
    c(
    as.numeric(strsplit(input$caption,split=", ",fixed=TRUE)[[1]]), 
    as.numeric(strsplit(input$caption1,split=", ",fixed=TRUE)[[1]])
    )})

  # Create the plot
  output$plot <- renderPlot({plot(df(), pch = 20, cex = 3, col = "blue",
                                  main = "1974 Motor Trend dataset")})
})