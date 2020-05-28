
library(shiny)
#   library(yonder)
library(bootstraplib)

bs_theme_new(bootswatch = "slate")

shinyOptions(plot.autocolors = TRUE)


ui = fluidPage(
  
  bootstrap(),
  # Application title
  titlePanel("Central Limit Theorem Visualized"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      selectInput('dist', 'Distribution', c('Normal', 'Uniform'))
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      br(),
      h4('Central limit theorem (CLT) states that the distribution of mean of '),
      h4('This program gives an intuition of CLT by visualizing various distributions and how their mean is distributed simulateneously.'),
      br(),
      p('Choose a distribution(say x) from the drop down menu and change the sample size to observe how the distrribution of the mean of x(x_bar) changes'),
      
      plotOutput('dist'),
      sliderInput('sampleSize', 'Sample Size', 1, 100, 50),
      plotOutput('xbar')
    )
  )
)