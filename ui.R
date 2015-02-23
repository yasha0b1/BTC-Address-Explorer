library(shiny)
shinyUI(
    fluidPage(
        sidebarLayout(
            sidebarPanel(width = 3,
                         textInput("Iblockchain_api_x", label = "address or tx", value = ""),
                         actionButton("Iblockchain_api_call", label = "blockchain API process")
            ),
            mainPanel(
                wellPanel(
                    dataTableOutput("Odt_blockchain_api_res"),
                    hr(),
                    plotOutput("Ostr_blockchain_api_res")
                )
            )
        ),
        wellPanel(
            verbatimTextOutput("Oprint_blockchain_api_res")
        )
    )
    )
