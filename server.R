

shinyServer(function(input, output, session){
    ### blockchain api
    
    blockchain_api_res <- reactive({
        validate(need(input$Iblockchain_api_call > 0, ""))
        isolate({
            validate(need(nchar(input$Iblockchain_api_x) > 0, ""))
            x <- input$Iblockchain_api_x
            invisible(data.table(blockchain.api.query(method = 'Single Address', bitcoin_address = x, limit=100)))
        })
    }) # perform blochchain query
    

    output$Odt_blockchain_api_res <- renderDataTable({
        input$Iblockchain_api_call
        isolate({
            validate(need(input$Iblockchain_api_call > 0, ""))
            r <- blockchain_api_res()
            if(!is.data.table(r)) NULL else r
        })
    }, options = list(pageLength = 5, lengthMenu = c(5,10,15,100))) # blockchain data table result
    
    output$Ostr_blockchain_api_res <- renderPrint({
        input$Iblockchain_api_call
        isolate({
            validate(need(input$Iblockchain_api_call > 0, ""))
            str(blockchain_api_res())
        })
    }) #  blockchain plot result
    output$Oprint_blockchain_api_res <- renderPrint({
        input$Iblockchain_api_call
        isolate({
            validate(need(input$Iblockchain_api_call > 0, ""))
            blockchain_api_res()
        })
    }) # render console log
    
    ### wallet manager api
    
    wallet_manager_data <- function(){
        wallet_dt
    } # non-reactive fun to provide wallet manager data

    

    
    ### options
    
    setRbitcoinVerbose <- observe(options(Rbitcoin.verbose = input$Rbitcoin.verbose))
    setRbitcoinAntiddosVerbose <- observe(options(Rbitcoin.antiddos.verbose = input$Rbitcoin.antiddos.verbose))
    setRbitcoinAntiddosSec <- observe(options(Rbitcoin.antiddos.sec = input$Rbitcoin.antiddos.sec))
    setRbitcoinPlotMask <- observe(options(Rbitcoin.plot.mask = input$Rbitcoin.plot.mask))
    setRbitcoinPlotLimitPct <- observe(options(Rbitcoin.plot.limit_pct = input$Rbitcoin.plot.limit_pct))
    
})