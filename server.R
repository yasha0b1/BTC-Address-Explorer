library(shinyRGL)
library(rgl)
library(plyr)
library(Rbitcoin)
library(igraph)
library("data.table")
# Must be executed BEFORE rgl is loaded on headless devices.

#set wait time for market ping

options(RCurlOptions=list(ssl.verifypeer = FALSE,
                          verbose = FALSE))

wait <- antiddos(market = 'kraken', antispam_interval = 3, verbose = 0)
wait <- antiddos(market = 'bitstamp', antispam_interval = 3, verbose = 0)
wait <- antiddos(market = 'btce', antispam_interval = 3, verbose = 0)
wait <- antiddos(market = 'bitmarket', antispam_interval = 3, verbose = 0)
# get ticker from all markets and combine
ticker_all <- rbindlist(list(
    market.api.process(market = 'bitstamp', currency_pair = c('BTC', 'USD'), action='ticker')
    ,market.api.process(market = 'btce', currency_pair = c('BTC', 'USD'), action='ticker')
#     ,market.api.process(market = 'btce', currency_pair = c('LTC', 'USD'), action='ticker')
#     ,market.api.process(market = 'btce', currency_pair = c('LTC', 'BTC'), action='ticker')
#     ,market.api.process(market = 'btce', currency_pair = c('NMC', 'BTC'), action='ticker')
    ,market.api.process(market = 'kraken', currency_pair = c('BTC','EUR'), action='ticker')
#     ,market.api.process(market = 'kraken', currency_pair = c('LTC','EUR'), action='ticker')
    ,market.api.process(market = 'kraken', currency_pair = c('BTC','LTC'), action='ticker')
    ,market.api.process(market = 'bitmarket', currency_pair = c('BTC','PLN'), action='ticker')
#     ,market.api.process(market = 'bitmarket', currency_pair = c('LTC','PLN'), action='ticker')
))

shinyServer(function(input, output,session) {
    
    
    # a large table, reative to input$show_vars
    output$mytable1 = renderDataTable({
        ticker_all
    })
    # table with transaction lists
    output$mytable3 = renderDataTable({
        walletNet()
    })
    
    
    
    walletAddress<- reactive({
        validate(need(input$Iblockchain_api_call > 0, ""))
        isolate({
            validate(need(nchar(input$Iblockchain_api_x) > 0, ""))
            input$Iblockchain_api_x
        })
    })
    walletNet<- reactive({
        validate(need(input$Iblockchain_api_call > 0, ""))
        isolate({
            singleAddress <- blockchain_api_res()
            address<-singleAddress$address
            txs <- singleAddress$txs
            tx.df <- data.frame()
            for (tx in txs) {
                for (intx in tx$inputs) {
                    from <- intx$prev_out$addr
                    for (outx in tx$out) {
                        to <- outx$addr
                        value <- outx$value
                        tx.df <- rbind(tx.df, data.frame(from=from,to=to,value=value, stringsAsFactors=F))
                    }
                }
            }
            net <- ddply(tx.df, c("from", "to"), summarise, value=sum(value))
            net
        })
    })
    
    
    
    #reactive call to blockchain.io
    blockchain_api_res <- reactive({
        validate(need(input$Iblockchain_api_call > 0, ""))
        isolate({
            validate(need(nchar(input$Iblockchain_api_x) > 0, ""))
            address<-input$Iblockchain_api_x
            invisible(blockchain.api.query(method = 'Single Address', bitcoin_address = address, limit=50))
        })
        
    })
    
    #bitcoin wallet transaction graph
    output$txGraph <- renderWebGL({
        net <- walletNet()
        address<-walletAddress()
        btc.net <- graph.data.frame(net, directed=T)
        V(btc.net)$color <- "grey"
        V(btc.net)$color[unlist(V(btc.net)$name) == address] <-"yellow"
        nodes <- unlist(V(btc.net)$name)
        E(btc.net)$width <- log(E(btc.net)$value)/10            
        coordsFR <- layout.fruchterman.reingold(btc.net, dim=3)
        #rgl plot of network graph
        rglplot(btc.net,
                layout=coordsFR, 
                edge.color="darkgoldenrod3",
                vertex.size=5, 
                edge.arrow.size=0.1,
                xlab=paste("BTC transaction network for\n",address),
                vertex.label=NA
        )
        
    })
    output$txGraph <- renderWebGL({
        net <- walletNet()
        address<-walletAddress()
        btc.net <- graph.data.frame(net, directed=T)
        V(btc.net)$color <- "grey"
        V(btc.net)$color[unlist(V(btc.net)$name) == address] <-"yellow"
        nodes <- unlist(V(btc.net)$name)
        E(btc.net)$width <- log(E(btc.net)$value)/10            
        coordsFR <- layout.fruchterman.reingold(btc.net, dim=3)
        #rgl plot of network graph
        rglplot(btc.net,
                layout=coordsFR, 
                edge.color="darkgoldenrod3",
                vertex.size=5, 
                edge.arrow.size=0.1,
                xlab=paste("BTC transaction network for\n",address),
                vertex.label=NA)
    })
    #     output$txiGraph <- renderPlot({
    #         net <- walletNet()
    #         address<-walletAddress()
    #         btc.net <- graph.data.frame(net, directed=T)
    #         V(btc.net)$color <- "grey"
    #         V(btc.net)$color[unlist(V(btc.net)$name) == address] <-"yellow"
    #         nodes <- unlist(V(btc.net)$name)
    #         E(btc.net)$width <- log(E(btc.net)$value)/10            
    #         coordsFR <- layout.fruchterman.reingold(btc.net, dim=3)
    #         #rgl plot of network graph
    #         plot(btc.net,layout=coordsFR, 
    #              edge.color="darkgoldenrod3", 
    #              vertex.size=5, edge.arrow.size=.1, 
    #              vertex.label=NA, 
    #              main=paste("BTC transaction network for\n", address))
    #         
    #         
    #         
    #     })
    
})

