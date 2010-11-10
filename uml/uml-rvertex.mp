input metauml;
  
Class.sim("RandomSimulator")
("#rg:RandomGraph", "-ID:int", "id:int")
("+set():void","+set_covers():void","+all_on():boolean","+all_continue():void","+get_on_weight():int","+get_total_weight():int");

Class.graph("SimpleGraph")
("#nodes: []", "#edges: []")
("+set_edges():void","+add_nodes","+set_neighbors():void","+get_lower_bound():int","+get_on_weight():int","+lowest_weight():Node","+reduce_by_min():int","+get_inverse_weight():int","+get_total_weight():int","+covered?():boolean","+coverable?():boolean","+isolated?():boolean","+reset():void","+remove_node(Node):void");

Class.node("BasicNode")
("+on:nil","+neighbors:[]","#edges:Set{}","#id","-ID:int","#next","#now","+weight","#onlist:{}")
("+do_next():void","+send_status():void","+recieve_status():void","+off?():boolean","+set_edges():void","set_ons():void","+remove_neighbor(Node):void","+set_now(symbol):void","+set_next(symbol):void","+remove_self():void");

Class.weightededge("WeightedEdge")
("#uv:Set{}","+weight:int")();

AbstractClass.pcd("PCD")()();
AbstractClass.comparable("Comparable")()();

Class.pcdroot("PCDRoot")
("Inherits BasicNode","-covers:PCD_Graph","-redundant:boolean")
("+init_covers():PCD_Graph","burn_cover(Node):void", "get_dep_node_type:Const","<=>(Node):int");

classStereotypes.pcdroot("Comparable","PCD");

Interface.deepsdeciders("Deeps_Deciders")
("+set_all_sinks():void","+find_hills():void","+set_all_hills():void","+find_poorest_edge():void","+charges_covered?():boolean","+sole_survivor?():boolean");

AbstractClass.pcdall("PCDAll")
("#local_cover")
("+build_local_cover():void","get_covers():PCD_Graph[]","pcdnode_type():string");

AbstractClass.redundant("Redundant")
("+redundant:boolean")
("+check_finished():void","check_redundant():void","most_valued(Node[]):boolean","<=>(Node):int");

classStereotypes.redundant("Comparable");

Interface.matchacts("Match_Acts")
("+do_next():void", "+send_status():boolean", "+recieve_status(int):boolean");

Interface.combinator("Combinator")
("+construct_covers(Node[],Set{}):Set{}","+get_subsets(Int[]):Int[]","+test_covers(Int[[]],Set(Int[])):Int[]","+test_cover?(Int[],Int[]):boolean","+covers_to_set(Int[[]]):Set");

beginfig(2);
  drawObject(graph);
endfig;

beginfig(1);
  drawObject(sim);
endfig;

beginfig(3);
  drawObject(node);
endfig;

beginfig(4);
  drawObject(weightededge);
endfig;

beginfig(5);
  drawObject(pcdroot);
endfig;

beginfig(6);
  drawObject(deepsdeciders);
endfig;

beginfig(7);
  drawObject(pcdall);
endfig;

beginfig(8);
  drawObject(redundant);
endfig;

beginfig(9);
  drawObject(matchacts);
endfig;

beginfig(10);
  drawObject(combinator);
endfig;

%beginfig(3);
%  leftToRight.top(20)(cue,ev,actors);
%  leftToRight.top(20)(nf,nd);
%  topToBottom.right(40)(actors,nd);
%  drawObjects(cue, ev, actors, nf, nd);
%  clink(inheritance)(nd, actors);
%  clink(inheritance)(nf, actors);    
%endfig;

end
