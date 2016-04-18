%% INIT WORKSPACE %%
clear all;
tic;
global fileID;
fileID = fopen('log.txt','w');
%% CREATE WORLD %%
axis([0,200,0,200]);
world;
hold on;
%% DECLARE VARIABLES %%
minx = 0;
maxx = 200;
miny = 0;
maxy = 200;
vertex_list = [30 160 1 1];
min_distance = 0;
start = [30 160];
goal = [160 30];
goal_found = false;
goal_biased = false;
m = 1;
adj_graph=zeros(1,1);
%% RRT ALGORITHM
while ~goal_found
    drawnow
    goal_biased = false;
    fprintf(fileID,'Iteration %d\n',m);
    rand_x = ceil((maxx-minx).*rand(1,1) + minx);
    rand_y = ceil((maxy-miny).*rand(1,1) + miny);
    rand_goal = rand;
    if(rand_goal > 0.4)
        nextPoint = goal;
        goal_biased = true;
        fprintf(fileID,'Biasing goal\n');
    else
        nextPoint = [rand_x rand_y];
    end
    % CHECK POINT ON OBSTACLE
    if(checkObstacle(nextPoint, x_arr, y_arr) == 0)
        fprintf(fileID,'Walkable Point (%d,%d)\n',nextPoint(1),nextPoint(2));
        [shortestx shortesty index] = shortest(nextPoint(1),nextPoint(2),vertex_list);
        shortestPoint = [shortestx shortesty];
        % CHECK VALID ROBOT POSES
        [allowed,vert,horz] = robotAllowed(nextPoint(1),nextPoint(2),x_arr,y_arr);
        if(allowed == 1)
            fprintf(fileID,'Robot Allowed At (%d,%d) In Vertical=(%d) and Horizontal=(%d) Poses.\n',nextPoint(1),nextPoint(2),vert,horz);
            % CHECK COLLISION LINE
            if (robot_collision(shortestPoint,vertex_list(index,3:4),nextPoint,[vert horz],x_arr,y_arr) == 0)
                scatter(nextPoint(1),nextPoint(2),'r','filled');
                line([nextPoint(1), shortestPoint(1)],[nextPoint(2), shortestPoint(2)], 'Color','k');
                vertex_list = [vertex_list;nextPoint,vert,horz];
                fprintf(fileID,'Point (%d,%d) is connected to (%d,%d).\n',shortestPoint(1),shortestPoint(2),nextPoint(1),nextPoint(2));
                from_idx = get_index(shortestPoint(1),shortestPoint(2),vertex_list);
                to_idx = get_index(nextPoint(1),nextPoint(2),vertex_list);
                adj_graph(from_idx,from_idx) = 1;
                adj_graph(to_idx,to_idx) = 1;
                adj_graph(from_idx,to_idx) = 1;
                if isequal(nextPoint,goal)
                    goal_found = true;
                end
            else
                fprintf(fileID,'Robot Cannot Move. Discarded.\n');
            end
        else
            fprintf(fileID,'Robot Not Allowed Here. Discarded.\n');
            fprintf(fileID,'Point (%d,%d) is NOT connected.\n',shortestPoint(1),shortestPoint(2));
        end
    else
        fprintf(fileID,'Point is on obstacle. Discarded.\n');
    end % END CHECKOBSTACLE
    fprintf(fileID,'------------------------------------------\n');
    m=m+1;
end
%% SHOW PATH
get_path = create_graph(adj_graph,vertex_list);
create_path(get_path,vertex_list, x_arr, y_arr, true);
%% END
title(['Path Computed in ',num2str(m-1),' iterations in ', num2str(toc), ' s']);