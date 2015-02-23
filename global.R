suppressPackageStartupMessages({
  library(Rbitcoin)
  library(shiny)
  library(rmarkdown)
  library(igraph)
  library(plyr)
  library(UsingR)
  library(data.table)
})





transactionGraph<-function(txs,seed){

    bc <- data.frame()
    for(itxs in 1:nrow(txs)){
        tx<-txs[itxs,]
        for (inputs in tx$inputs){
            for(iaddr in inputs$prev_out$addr){
                from <- iaddr
                for (out in tx$out) {
                    for(oaddr in out$addr){
                        to <- oaddr
                        va <- out$value
                        bc <- rbind(bc, data.frame(from=from,to=to,value=va, stringsAsFactors=F))
                    }
                }
            }
            
        }
        
    }
    btc <- ddply(bc, c("from", "to"), summarize, value=sum(value))
    btc.net <- graph.data.frame(btc, directed=T)
    V(btc.net)$color <- "blue"
    V(btc.net)$color[unlist(V(btc.net)$name) == seed] <- "red"
    nodes <- unlist(V(btc.net)$name)
    E(btc.net)$width <- log(E(btc.net)$value)/10
    btc.net
    #plot.igraph(btc.net, vertex.size=5, edge.arrow.size=0.1, vertex.label=NA, main=paste("BTC transaction network for\n", seed))
    #rglplot(btc.net, vertex.size=5, edge.arrow.size=0.1, vertex.label=NA, main=paste("BTC transaction network for\n", seed))        
}