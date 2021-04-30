
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)

shinyServer(function(input, output) {

  output$distPlot <- renderPlot({

    # generate bins based on input$bins from ui.R
    x    <- faithful[, 2]
    bins <- seq(min(x), max(x), length.out = input$bins + 1)

    # draw the histogram with the specified number of bins
    hist(x, breaks = bins, col = 'darkgray', border = 'white')

  })

})

#### Ideas ####
# Datatable with all positions, and some info: Startdate, enddate, length, used skills/technologies, teamsize, hours, stuffssss!
# A text box that gives detailed information about the position currently selected in the positionstable
# Similar table for edumucationizers
# 
# Some multilevel chart showing breakdown of skills, for example techs at first level and then relevant topics in subfield
#   so for example at large: 80% R, 10% Scala, 5% Python, 5% misc, maybe GIS in there somewhere, I dunno, STUFF!
#   And then R might be divided into: 20% visualisation, 20% Machine learning, 20% data munging and 20% interactive Shiny stuff
#
# Try and include Stack Overflow data 
#   best question and answer, 
#   another multilevel chart showing breakdown of score for different tags
# 
# Something displaying character traits with 
#   way of choosing one and getting additional information/examples competency style
#     Ex.: analytic/pragmatic mindset -> the hypthetical case of studying different bus routes (Or spelltoweR if that works)
#   
# Showing development of skills over time taking different shapes. Decreasing growth for R during SBS, compared to Stepwise growth during OP.
# 
