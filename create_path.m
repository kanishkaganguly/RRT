function create_path( get_path, vertex_list, x_arr, y_arr, show_bot)
for i=1:height(get_path.Edges)
    drawnow
    here=vertex_list((get_path.Edges(i,:).EndNodes(1)),1:2);
    there=vertex_list((get_path.Edges(i,:).EndNodes(2)),1:2);
    %% MULTI-ROBOT SHOW
    if(show_bot == true)
        x_sub = linspace(here(1),there(1),10);
        y_sub = linspace(here(2),there(2),10);
        for q = 1:10
            xpt2=[x_sub(q)-15,x_sub(q)+15,x_sub(q)+15,x_sub(q)-15];
            ypt2=[y_sub(q)+5,y_sub(q)+5,y_sub(q)-5,y_sub(q)-5];
            tinyrobot = patch(xpt2,ypt2,'y');
            rotate(tinyrobot,[0 0 1],0,[xpt2 ypt2 0]);
            horiz_coord = tinyrobot.Vertices;
            if(checkObstacle(horiz_coord(1,1:2),x_arr,y_arr) == 1 || checkObstacle(horiz_coord(2,1:2),x_arr,y_arr) == 1 || checkObstacle(horiz_coord(3,1:2),x_arr,y_arr) == 1 || checkObstacle(horiz_coord(4,1:2),x_arr,y_arr) == 1)
                rotate(tinyrobot,[0 0 1],90,[x_sub(q) y_sub(q) 0]);
            end
        end
    end
    %% DRAW PATH
    line([here(1), there(1)],[here(2), there(2)], 'Color','b','LineWidth',4,'LineStyle','--');
end
end