library(shiny)
library(dygraphs)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("Explore Economic Growth and Co2 Emission"),
  
  # Sidebar with a number of filter 
  fluidRow(
    column(3,
    wellPanel(
      h4("Country Filter"),
      selectInput("Region", "Please Choose the Country/Region to Observe: ",
                  c( "Argentina",                "Australia",                "Belgium",                
                     "Brazil",                   "Central African Republic", "Chile",                   
                     "China",                    "France",                   "Greece",                  
                     "India",                    "Iran, Islamic Rep.",       "Israel",                 
                     "Italy",                    "Japan",                    "Korea, Rep.",             
                     "Malaysia",                 "Netherlands",              "Norway",                  
                     "Pakistan",                 "Portugal",                 "Singapore",               
                     "South Africa",             "Spain",                    "Sweden",                  
                     "Thailand",                 "Turkey",                   "United Kingdom",          
                     "United States",            "World",                    "Canada",                  
                     "Iraq",                    "Saudi Arabia",             "Germany",                 
                     "New Zealand",              "Switzerland",              "Arab World",              
                     "Bulgaria",                 "Vietnam",                  "Ukraine",                 
                     "Russian Federation",       "Poland",                   "Romania" )
      ),
      h4("Economic Development Measurement"),
      selectInput("y1var", "Please Choose Economic Development Indicator:", 
                  c("gdpval","gdppercapval","gdpgrowthval"), selected = "gdpval"),
      submitButton("Submit")
    )),
    
    # Show a plot 
    column(9,
    mainPanel(
      dygraphOutput("dygraph")
    )
  ))
))
