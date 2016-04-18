function [tl,tr,bl,br] = rotate_robot(theta,center)
center = [center 0];
[tl,tr,bl,br] = deal(0);
xpt=[center(1)-15,center(1)+15,center(1)+15,center(1)-15];
ypt=[center(2)+5,center(2)+5,center(2)-5,center(2)-5];
fatrobot = patch(xpt,ypt,'y');
fatrobot.LineStyle = '--';
fatrobot.Visible = 'off';
rotate(fatrobot,[0 0 1],theta,center);
if theta == 0
    tl = [fatrobot.Vertices(1,1) fatrobot.Vertices(1,2)];
    tr = [fatrobot.Vertices(2,1) fatrobot.Vertices(2,2)];
    br = [fatrobot.Vertices(3,1) fatrobot.Vertices(3,2)];
    bl = [fatrobot.Vertices(4,1) fatrobot.Vertices(4,2)];
elseif theta == 90
    bl = [fatrobot.Vertices(1,1) fatrobot.Vertices(1,2)];
    tl = [fatrobot.Vertices(2,1) fatrobot.Vertices(2,2)];
    tr = [fatrobot.Vertices(3,1) fatrobot.Vertices(3,2)];
    br = [fatrobot.Vertices(4,1) fatrobot.Vertices(4,2)];
end
end