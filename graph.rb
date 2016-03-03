
require 'ruby-graphviz'


g = GraphViz.new( :G, :type => :digraph )


SDS1 = g.add_node("StockDiscoveryService1")
SDS2 = g.add_node("StockDiscoveryService2")
smq = g.add_node("Discovery Message Queue");
g.add_edges(SDS1,smq);
g.add_edges(SDS2,smq);

SHRS1 = g.add_node("StockHistoryRetrieverService1");
SHRS2 = g.add_node("StockHistoryRetrieverService2");
SHRS3 = g.add_node("StockHistoryRetrieverService3");
SHRS4 = g.add_node("StockHistoryRetrieverService4");
g.add_edges(smq,SHRS1);
g.add_edges(smq,SHRS2);
g.add_edges(smq,SHRS3);
g.add_edges(smq,SHRS4);

g.output(:png => "graph.png")


