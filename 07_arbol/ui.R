ui <- fluidPage(
    titlePanel("Arbol filogenetico"),
    
    fluidRow(
        
        column(3,
               fileInput("file", h3("File input"))),
    br(),
    fluidRow( 
        column(12,
               plotOutput("arbol_out")  )
     
    )
    
))