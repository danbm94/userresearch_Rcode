##### Test code for the guithub repo
##test
A <- matrix(c(1,2,3,4,5,6,7,8,9),nrow = 3,byrow = TRUE)
A

#### New entry Thursday March 12th
print("Hello World")

#Onefootball
if (sum(A)>40){
  print("Nice")
}

####Pulling the data from the repository
library(httr)

mx <- read.csv(file = "July 19  MX galleries and news.csv")
View(mx)

#New comment 
install.packages("rgeolocate")
library(rgeolocate)

#New comment

B=A*2


###Shiny package 
library("shiny")
runExample("01_hello")


# Define UI for app that draws a histogram ----
ui <- fluidPage(
  
  # App title ----
  titlePanel("Hello Shiny!"),
  
  # Sidebar layout with input and output definitions ----
  sidebarLayout(
    
    # Sidebar panel for inputs ----
    sidebarPanel(
      
      # Input: Slider for the number of bins ----
      sliderInput(inputId = "bins",
                  label = "Number of bins:",
                  min = 1,
                  max = 50,
                  value = 30)
      
    ),
    
    # Main panel for displaying outputs ----
    mainPanel(
      
      # Output: Histogram ----
      plotOutput(outputId = "distPlot")
      
    )
  )
)
# Define server logic required to draw a histogram ----
server <- function(input, output) {
  
  # Histogram of the Old Faithful Geyser Data ----
  # with requested number of bins
  # This expression that generates a histogram is wrapped in a call
  # to renderPlot to indicate that:
  #
  # 1. It is "reactive" and therefore should be automatically
  #    re-executed when inputs (input$bins) change
  # 2. Its output type is a plot
  output$distPlot <- renderPlot({
    
    x    <- faithful$waiting
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    hist(x, breaks = bins, col = "#75AADB", border = "white",
         xlab = "Waiting time to next eruption (in mins)",
         main = "Histogram of waiting times")
    
  })
  
}
#Run the app
shinyApp(ui= ui, server=server)

