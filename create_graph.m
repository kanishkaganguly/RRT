function [ path ] = create_graph( adj_graph,vertex_list)
graph = digraph(adj_graph);
path = shortestpathtree(graph,1,length(vertex_list(:,1)));
end