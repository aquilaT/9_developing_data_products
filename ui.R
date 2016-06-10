library(shiny)
library(markdown)
# Define UI for application that plots normal distribution curve 

  # Application title


shinyUI(navbarPage("NORMAL GAUSSIAN DISTRIBUTION CHARTS",

tabPanel("SIMULATION PAGE",

  # Sidebar with 6 sliders input for generating 3 sets of curves

  sidebarPanel(

    sliderInput("s1", 
                "CURVE_1 Standard Deviation_1:", 
                min = 1, max = 5,  value = 1),

    sliderInput("m1", 
                "CURVE_1 Mean_1:",   
                min = -10, max = 10,  value = 0),

    sliderInput("s2", 
                "CURVE_2 Standard Deviation_2:", 
                min = 1, max = 5,  value = 2),

    sliderInput("m2", 
                "CURVE_2 Mean_2:",   
                min = -10, max = 10,  value = 0), 

    sliderInput("s3", 
                "CURVE_3 Standard Deviation_3:", 
                min = 1, max = 5,  value = 3),

    sliderInput("m3", 
                "CURVE_3 Mean_3:",   
                min = -10, max = 10,  value = 0)

), 

  # Show a plot of the generated distribution

  mainPanel(
    plotOutput("distPlot")
  )

),
                   tabPanel("README: INSTRUCTIONS ON USING APP",
                            mainPanel(
                                includeMarkdown("README.md")
                            )
                   )
))