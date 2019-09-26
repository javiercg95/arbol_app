#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required
shinyServer(function(input, output) {
   
    output$arbol_out <- renderPlot({
       fichero <- input$file
       if (is.null(fichero)) return(NULL)
       arbol_file <- read.newick(fichero$datapath)
       ggtree(arbol_file)
        
    })

})
