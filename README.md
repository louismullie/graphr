##graphr

###About

Graph-related Ruby classes [written by Robert Feld](http://rockit.sourceforge.net/subprojects/graphr/) in 2001, but never released as a gem.

* DirectedGraph - fairly extensive directed graph class.
* DotGraphPrinter - output a graph in GraphViz's dot format and invoke dot.

###Install

    gem install graphr

###Example Usage

```ruby
# Lets crank out a simple graph...
require 'graphr'

# In this simple example we don't even have a "real" graph
# just an Array with the links. The optional third element 
# of a link is link information. The nodes in this graph are 
# implicit in the links. If we had additional nodes that were
# not linked we would supply them in an array as 2nd parameter.
links = [[:start, 1, "*"], [1, 1, "a"], [1, 2, "~a"], [2, :stop, "*"]]
dgp = DotGraphPrinter.new(links)

# We specialize the printer to change the shape of nodes
# based on their names.
dgp.node_shaper = proc do |n|
  ["start", "stop"].include?(n.to_s) ? "doublecircle" : "box"
end

# We can also set the attributes on individual nodes and edges.
# These settings override the default shapers and labelers.
dgp.set_node_attributes(2, :shape => "diamond")

# Add URL link from node (this only work in some output formats?)
# Note the extra quotes needed!
dgp.set_node_attributes(2, :URL => '"node2.html"')

# And now output to files
dgp.write_to_file("g.png", "png")  # Generate png file
dgp.orientation = "landscape"      # Dot problem with PS orientation
dgp.write_to_file("g.ps")          # Generate postscript file
```

###License

Copyright (c) 2001 Robert Feldt, feldt@ce.chalmers.se. All rights reserved. Distributed under GPL. See LICENSE.