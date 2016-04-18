function [ x1,y1, index] = shortest( x,y,vertex_list)
min_dist = 20000;
x1 = 0;
y1 = 0;
index = 1;
[len,~] = size(vertex_list);
for i = 1:len
    if x ~= vertex_list(i,1) && y ~= vertex_list(i,2)
        dist = euclidean(x,y,vertex_list(i,1),vertex_list(i,2));
        if dist < min_dist
            index = i;
            min_dist = dist;
            x1 = vertex_list(i,1);
            y1 = vertex_list(i,2);
        end
    end
end

end