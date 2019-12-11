library(shiny)
library(dygraphs)
library(tidyverse)
data_final <- readRDS("data_final.RDS")

#Data product
shinyServer(function(input, output, session) {

  data_target <- reactive({
    m <- data_final%>%filter(region == input$Region)%>%arrange(original_period)%>%select(input$y1var,co2emissionval.x)
    m <- ts(m,frequency = 1,start = c(1960,1))
    m
  })
  
  output$dygraph <- renderDygraph({
      dygraph(data_target()) %>%
      dyAxis("y", label = input$y1var, axisLabelWidth = 90) %>%
      dyAxis("y2", label = "CO2 emission (kg per 2010 US$ of GDP)", independentTicks = TRUE, axisLabelWidth = 70) %>%
      dySeries("co2emissionval.x", axis = "y2") 
    
  })

})
