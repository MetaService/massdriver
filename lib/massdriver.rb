require "massdriver/version"
require 'ruby-graphviz'

module Massdriver
// Self Developing Systems
@g = GraphViz.new( :G, :type => :digraph )
@github = "https://github.com"
@gitaccount = nil
@system_name = "system"
@domain = "system.com"
@type_domain_prefix = "x"

@mqtable = Hash.new
@dbtable = Hash.new
@msttable = Hash.new
@msitable = Hash.new

def newSystem(name,description)
	@system_name = name
        


end

// Styles - r2mq mq2mq mq2r r2r, ip
// OpMode - static, oneshot, scheduled
// StateType - stateless,stateful
// Returns: mst 
def newMicroServiceType(name,abbr,style,opmode,min=1,max=1)

end

def newDataBase(name,abbr,data=Array.new)
    netname = abbr + '.' + @domain
    db = newMicroServiceInstance(@database_mqt,name,abbr,netname,data)
    return db
end

def newMicroServiceInstance(mst,name,abbr,netname,data)
end

def newMessageQueueServer(name,abbr)
    
end

def newMessageQueue(name,abbr)
end

def newR2MQInstance(name,abbr,mst,restdn,mqn,data)
end

def newMq2MqInstance(name,abbr,mst,imqname,omqname,data)
end

def newMq2RInstance(name,abbr,mst,qname,url,data)
end


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



  # Your code goes here...
end
