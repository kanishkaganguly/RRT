function [onObstacle] = checkObstacle( nextPoint, x_arr, y_arr )
onObstacle = 0;
for i=1:12
    [in, ~] = inpolygon(nextPoint(1),nextPoint(2),x_arr(i,:),y_arr(i,:));
    if(in > 0)
        onObstacle = 1;
        return;
    else
        onObstacle = 0;
    end
end
end