library(shiny)

ui <- fluidPage(
  selectInput(inputId = 'variable', label = "Choose Which Ad Budget to View", choices = c("TV", "Radio", "Newspaper")),
  plotOutput("scatter")
)
server <- function(input, output) {
  ad_data <- read.csv("Advertising.csv")
  output$scatter <- renderPlot({ plot(ad_data$Sales ~ ad_data[,input$variable], data = ad_data, xlab = "Variable of Interest", ylab = 'Sales') })
}
shinyApp(server = server, ui = ui)