function [ collision ] = check_crossing(from, to, x_arr, y_arr)
collision = 0;
crossing = 0;
s1x = from(1);
s1y = from(2);
e1x = to(1);
e1y = to(2);
global fileID;

for i=1:12
    fprintf(fileID,'Checking Collision with Obstacle %d\n',i);
    % SIDE 1 %
    s2x = x_arr(i,1);
    s2y = y_arr(i,1);
    e2x = x_arr(i,2);
    e2y = y_arr(i,2);
    %fprintf(fileID, 'Side 1 - (%d,%d) --> (%d,%d)\n', s2x,s2y,e2x,e2y);
    ax=s1x;
    ay=s1y;
    bx=e1x-s1x;
    by=e1y-s1y;
    cx=s2x;
    cy=s2y;
    dx=e2x-s2x;
    dy=e2y-s2y;
    u=(bx*(cy-ay)+by*(ax-cx))/(dx*by-dy*bx);
    t=(dx*(ay-cy) +dy*(cx-ax))/(bx*dy-by*dx);
    %fprintf(fileID,'(t,u) = (%d,%d)\n',t,u);
    if(~isnan(t) && ~isnan(u) || t ~= Inf && u ~= Inf)
        if(u >= 0 && u <=1 && t >= 0 && t <=1)
            crossing = crossing + 1;
        end
    end
    
    % SIDE 2 %
    s2x = x_arr(i,2);
    s2y = y_arr(i,2);
    e2x = x_arr(i,3);
    e2y = y_arr(i,3);
    %fprintf(fileID, 'Side 2 - (%d,%d) --> (%d,%d)\n', s2x,s2y,e2x,e2y);
    ax=s1x;
    ay=s1y;
    bx=e1x-s1x;
    by=e1y-s1y;
    cx=s2x;
    cy=s2y;
    dx=e2x-s2x;
    dy=e2y-s2y;
    u=(bx*(cy-ay)+by*(ax-cx))/(dx*by-dy*bx);
    t=(dx*(ay-cy) +dy*(cx-ax))/(bx*dy-by*dx);
    %fprintf(fileID,'(t,u) = (%d,%d)\n',t,u);
    if(~isnan(t) && ~isnan(u) || t ~= Inf && u ~= Inf)
        if(u >= 0 && u <=1 && t >= 0 && t <=1)
            crossing = crossing + 1;
        end
    end
    
    % SIDE 3 %
    s2x = x_arr(i,3);
    s2y = y_arr(i,3);
    e2x = x_arr(i,4);
    e2y = y_arr(i,4);
    %fprintf(fileID, 'Side 3 - (%d,%d) --> (%d,%d)\n', s2x,s2y,e2x,e2y);
    ax=s1x;
    ay=s1y;
    bx=e1x-s1x;
    by=e1y-s1y;
    cx=s2x;
    cy=s2y;
    dx=e2x-s2x;
    dy=e2y-s2y;
    u=(bx*(cy-ay)+by*(ax-cx))/(dx*by-dy*bx);
    t=(dx*(ay-cy) +dy*(cx-ax))/(bx*dy-by*dx);
    %fprintf(fileID,'(t,u) = (%d,%d)\n',t,u);
    if(~isnan(t) && ~isnan(u) || t ~= Inf && u ~= Inf)
        if(u >= 0 && u <=1 && t >= 0 && t <=1)
            crossing = crossing + 1;
        end
    end
    
    % SIDE 4 %
    s2x = x_arr(i,4);
    s2y = y_arr(i,4);
    e2x = x_arr(i,1);
    e2y = y_arr(i,1);
    %fprintf(fileID, 'Side 4 - (%d,%d) --> (%d,%d)\n', s2x,s2y,e2x,e2y);
    ay=s1y;
    bx=e1x-s1x;
    by=e1y-s1y;
    cx=s2x;
    cy=s2y;
    dx=e2x-s2x;
    dy=e2y-s2y;
    u=(bx*(cy-ay)+by*(ax-cx))/(dx*by-dy*bx);
    t=(dx*(ay-cy) +dy*(cx-ax))/(bx*dy-by*dx);
    %fprintf(fileID,'(t,u) = (%d,%d)\n',t,u);
    if(~isnan(t) && ~isnan(u) || t ~= Inf && u ~= Inf)
        if(u >= 0 && u <=1 && t >= 0 && t <=1)
            crossing = crossing + 1;
        end
    end
end

if(crossing > 0)
    collision = 1;
else
    collision = 0;
end

end