function [ index ] = get_index( x,y,vertex_list )
index = find(vertex_list(:,1)==x & vertex_list(:,2)==y);
end

