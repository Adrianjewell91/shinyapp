shinyUI(pageWithSidebar(
  # Application title
  titlePanel('Plotting the Graph'),
  
  # Sidebar with 2 text inputs
  sidebarPanel(
    
    textInput("caption", "Caption", "Data Summary"),
    textInput("caption1", "Caption1", "Data Summary1"),
    
    ),
  
  # Shows the plot
  mainPanel(plotOutput('plot'))
))