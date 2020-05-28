


server = function(input, output) {
  
  output$dist <- renderPlot({
    dists = c('Normal', 'Uniform')
    x = list(rnorm(input$sampleSize), runif(input$sampleSize))
    names(x) = dists
    str(x)
    str(input$dist)
    hist(x[[input$dist]], col = 'darkgray', border = 'white', main = paste(input$dist, 'distribution', sep = ' '))
  })
  
  output$xbar = renderPlot({
    str(x)
  })
}