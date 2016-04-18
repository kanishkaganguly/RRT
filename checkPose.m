function [ top_left top_right bottom_left bottom_right ] = checkPose( x,y,x_arr,y_arr,pose)
% POSE = 1 ==> VERTICAL
% POSE = 0 ==> HORIZONTAL
%% TOP RIGHT
if pose == 1
    xx = x+5;
    yy = y+15;
else
    xx = x+15;
    yy = y+5;
end
if(xx > 200)
    xx = 200;
elseif(xx < 0)
    xx = 0;
elseif(yy > 200)
    yy = 200;
elseif(yy<0)
    yy = 0;
end
if(checkObstacle([xx,yy],x_arr,y_arr)==0)
    top_right = true;
else
    top_right = false;
end
%% TOP LEFT
if pose == 1
    xx = x-5;
    yy = y+15;
else
    xx = x-15;
    yy = y+5;
end
if(xx > 200)
    xx = 200;
elseif(xx < 0)
    xx = 0;
elseif(yy > 200)
    yy = 200;
elseif(yy<0)
    yy = 0;
end
if(checkObstacle([xx,yy],x_arr,y_arr)==0)
    top_left = true;
else
    top_left = false;
end
%% BOTTOM LEFT
if pose == 1
    xx = x-5;
    yy = y-15;
else
    xx = x-15;
    yy = y-5;
end
if(xx > 200)
    xx = 200;
elseif(xx < 0)
    xx = 0;
elseif(yy > 200)
    yy = 200;
elseif(yy<0)
    yy = 0;
end
if(checkObstacle([xx,yy],x_arr,y_arr)==0)
    bottom_left = true;
else
    bottom_left = false;
end
%% BOTTOM RIGHT
if pose == 1
    xx = x+5;
    yy = y-15;
else
    xx = x+15;
    yy = y-5;
end
if(xx > 200)
    xx = 200;
elseif(xx < 0)
    xx = 0;
elseif(yy > 200)
    yy = 200;
elseif(yy<0)
    yy = 0;
end
if(checkObstacle([xx,yy],x_arr,y_arr)==0)
    bottom_right = true;
else
    bottom_right = false;
end
end