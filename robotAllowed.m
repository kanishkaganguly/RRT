function [ allowed, vert, horz ] = robotAllowed( x,y,x_arr,y_arr)
vert = 1;
horz = 1;
allowed = 0;
[tl1 tr1 bl1 br1] = checkPose(x,y,x_arr,y_arr,1);
if (tl1~=true || tr1~=true || bl1~=true || br1~=true)
    vert = 0;
end
[tl2 tr2 bl2 br2] = checkPose(x,y,x_arr,y_arr,0);
if (tl2~=true || tr2~=true || bl2~=true || br2~=true)
    horz = 0;
end

if(vert == 1 || horz == 1)
    allowed = 1;
end
end