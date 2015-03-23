options(rgl.useNULL=TRUE)
library(shinyRGL)
library(rgl)
shinyUI(pageWithSidebar(
    
    # Application title
    headerPanel("BTC Address Explorer!"),
    
    # Sidebar with a slider input for number of points
    
    sidebarPanel(width = 3,
                 
                 textInput("Iblockchain_api_x", label = "Bitcoin Address", value = "1EhXj3KkhvzFPqbkHib7Bx8Zdn1GaviQnF"),
                 actionButton("Iblockchain_api_call", label = "Explorer Blockchain")
    ),
    
    # Show the generated 3d scatterplot
    mainPanel(
        
        tabsetPanel(id="PlotView",
                    tabPanel("3D Transaction Graph", webGLOutput("txGraph"),dataTableOutput("mytable3")),  
                    tabPanel('Market Ticker',dataTableOutput("mytable1"),value="Market Ticker"))
    )
)

)