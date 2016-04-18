function [ collision ] = robot_collision( start_center, start_pose, end_center, end_pose, x_arr, y_arr )
global fileID;
collision = 1;
pose1='---';
pose2='---';
fprintf(fileID,'CHECKING ROBOT COLLISION WHILE MOVING\n');

% 10 --> 10
if start_pose(1) == 1 && start_pose(2) == 0 && end_pose(1) == 1 && end_pose(2) == 0
    [tl1,tr1,bl1,br1] = rotate_robot(90,start_center);
    pose1='V';
    [tl2,tr2,bl2,br2] = rotate_robot(90,end_center);
    pose2='V';
    % TL1 - TL2
    fprintf(fileID,'Checking TOPLEFT Collision\n');
    tl_bang = check_crossing(tl1,tl2,x_arr,y_arr);
    % TR1 - TR2
    fprintf(fileID,'Checking TOPRIGHT Collision\n');
    tr_bang = check_crossing(tr1,tr2,x_arr,y_arr);
    % BL1 - BL2
    fprintf(fileID,'Checking BOTTOMLEFT Collision\n');
    bl_bang = check_crossing(bl1,bl2,x_arr,y_arr);
    % BR1 - BR2
    fprintf(fileID,'Checking BOTTOMRIGHT Collision\n');
    br_bang = check_crossing(br1,br2,x_arr,y_arr);
    if tl_bang ~=0 || tr_bang ~=0 || bl_bang ~=0 || br_bang ~=0
        collision = 1;
        fprintf(fileID,'Robot Collision from (%d,%d) to (%d,%d)\n',start_center(1),start_center(2),end_center(1),end_center(2));
    else
        collision = 0;
        fprintf(fileID,'Robot Can Move from (%d,%d) in %s to (%d,%d) in %s\n',start_center(1),start_center(2),end_center(1),end_center(2),pose1,pose2);
    end
% 01 --> 01
elseif start_pose(1) == 0 && start_pose(2) == 1 && end_pose(1) == 0 && end_pose(2) == 1
    [tl1,tr1,bl1,br1] = rotate_robot(0,start_center);
    pose1='H';
    [tl2,tr2,bl2,br2] = rotate_robot(0,end_center);
    pose2='H';
    % TL1 - TL2
    fprintf(fileID,'Checking TOPLEFT Collision\n');
    tl_bang = check_crossing(tl1,tl2,x_arr,y_arr);
    % TR1 - TR2
    fprintf(fileID,'Checking TOPRIGHT Collision\n');
    tr_bang = check_crossing(tr1,tr2,x_arr,y_arr);
    % BL1 - BL2
    fprintf(fileID,'Checking BOTTOMLEFT Collision\n');
    bl_bang = check_crossing(bl1,bl2,x_arr,y_arr);
    % BR1 - BR2
    fprintf(fileID,'Checking BOTTOMRIGHT Collision\n');
    br_bang = check_crossing(br1,br2,x_arr,y_arr);
    if tl_bang ~=0 || tr_bang ~=0 || bl_bang ~=0 || br_bang ~=0
        collision = 1;
        fprintf(fileID,'Robot Collision from (%d,%d) to (%d,%d)\n',start_center(1),start_center(2),end_center(1),end_center(2));
    else
        collision = 0;
        fprintf(fileID,'Robot Can Move from (%d,%d) in %s to (%d,%d) in %s\n',start_center(1),start_center(2),end_center(1),end_center(2),pose1,pose2);
    end
% 11 --> 01
elseif start_pose(1) == 1 && start_pose(2) == 1 && end_pose(1) == 0 && end_pose(2) == 1
    [tl1,tr1,bl1,br1] = rotate_robot(0,start_center);
    pose1='H';
    [tl2,tr2,bl2,br2] = rotate_robot(0,end_center);
    pose2='H';
    % TL1 - TL2
    fprintf(fileID,'Checking TOPLEFT Collision\n');
    tl_bang = check_crossing(tl1,tl2,x_arr,y_arr);
    % TR1 - TR2
    fprintf(fileID,'Checking TOPRIGHT Collision\n');
    tr_bang = check_crossing(tr1,tr2,x_arr,y_arr);
    % BL1 - BL2
    fprintf(fileID,'Checking BOTTOMLEFT Collision\n');
    bl_bang = check_crossing(bl1,bl2,x_arr,y_arr);
    % BR1 - BR2
    fprintf(fileID,'Checking BOTTOMRIGHT Collision\n');
    br_bang = check_crossing(br1,br2,x_arr,y_arr);
    if tl_bang ~=0 || tr_bang ~=0 || bl_bang ~=0 || br_bang ~=0
        collision = 1;
        fprintf(fileID,'Robot Collision from (%d,%d) to (%d,%d)\n',start_center(1),start_center(2),end_center(1),end_center(2));
    else
        collision = 0;
        fprintf(fileID,'Robot Can Move from (%d,%d) in %s to (%d,%d) in %s\n',start_center(1),start_center(2),end_center(1),end_center(2),pose1,pose2);
    end
elseif start_pose(1) == 1 && start_pose(2) == 0 && end_pose(1) == 1 && end_pose(2) == 1
    [tl1,tr1,bl1,br1] = rotate_robot(90,start_center);
    pose1='V';
    [tl2,tr2,bl2,br2] = rotate_robot(90,end_center);
    pose2='V';
    % TL1 - TL2
    fprintf(fileID,'Checking TOPLEFT Collision\n');
    tl_bang = check_crossing(tl1,tl2,x_arr,y_arr);
    % TR1 - TR2
    fprintf(fileID,'Checking TOPRIGHT Collision\n');
    tr_bang = check_crossing(tr1,tr2,x_arr,y_arr);
    % BL1 - BL2
    fprintf(fileID,'Checking BOTTOMLEFT Collision\n');
    bl_bang = check_crossing(bl1,bl2,x_arr,y_arr);
    % BR1 - BR2
    fprintf(fileID,'Checking BOTTOMRIGHT Collision\n');
    br_bang = check_crossing(br1,br2,x_arr,y_arr);
    if tl_bang ~=0 || tr_bang ~=0 || bl_bang ~=0 || br_bang ~=0
        collision = 1;
        fprintf(fileID,'Robot Collision from (%d,%d) to (%d,%d)\n',start_center(1),start_center(2),end_center(1),end_center(2));
    else
        collision = 0;
        fprintf(fileID,'Robot Can Move from (%d,%d) in %s to (%d,%d) in %s\n',start_center(1),start_center(2),end_center(1),end_center(2),pose1,pose2);
    end
elseif start_pose(1) == 1 && start_pose(2) == 1 && end_pose(1) == 1 && end_pose(2) == 0
    [tl1,tr1,bl1,br1] = rotate_robot(90,start_center);
    pose1='V';
    [tl2,tr2,bl2,br2] = rotate_robot(90,end_center);
    pose2='V';
    % TL1 - TL2
    fprintf(fileID,'Checking TOPLEFT Collision\n');
    tl_bang = check_crossing(tl1,tl2,x_arr,y_arr);
    % TR1 - TR2
    fprintf(fileID,'Checking TOPRIGHT Collision\n');
    tr_bang = check_crossing(tr1,tr2,x_arr,y_arr);
    % BL1 - BL2
    fprintf(fileID,'Checking BOTTOMLEFT Collision\n');
    bl_bang = check_crossing(bl1,bl2,x_arr,y_arr);
    % BR1 - BR2
    fprintf(fileID,'Checking BOTTOMRIGHT Collision\n');
    br_bang = check_crossing(br1,br2,x_arr,y_arr);
    if tl_bang ~=0 || tr_bang ~=0 || bl_bang ~=0 || br_bang ~=0
        collision = 1;
        fprintf(fileID,'Robot Collision from (%d,%d) to (%d,%d)\n',start_center(1),start_center(2),end_center(1),end_center(2));
    else
        collision = 0;
        fprintf(fileID,'Robot Can Move from (%d,%d) in %s to (%d,%d) in %s\n',start_center(1),start_center(2),end_center(1),end_center(2),pose1,pose2);
    end
elseif start_pose(1) == 0 && start_pose(2) == 1 && end_pose(1) == 1 && end_pose(2) == 1
    [tl1,tr1,bl1,br1] = rotate_robot(0,start_center);
    pose1='H';
    [tl2,tr2,bl2,br2] = rotate_robot(0,end_center);
    pose2='H';
    % TL1 - TL2
    fprintf(fileID,'Checking TOPLEFT Collision\n');
    tl_bang = check_crossing(tl1,tl2,x_arr,y_arr);
    % TR1 - TR2
    fprintf(fileID,'Checking TOPRIGHT Collision\n');
    tr_bang = check_crossing(tr1,tr2,x_arr,y_arr);
    % BL1 - BL2
    fprintf(fileID,'Checking BOTTOMLEFT Collision\n');
    bl_bang = check_crossing(bl1,bl2,x_arr,y_arr);
    % BR1 - BR2
    fprintf(fileID,'Checking BOTTOMRIGHT Collision\n');
    br_bang = check_crossing(br1,br2,x_arr,y_arr);
    if tl_bang ~=0 || tr_bang ~=0 || bl_bang ~=0 || br_bang ~=0
        collision = 1;
        fprintf(fileID,'Robot Collision from (%d,%d) to (%d,%d)\n',start_center(1),start_center(2),end_center(1),end_center(2));
    else
        collision = 0;
        fprintf(fileID,'Robot Can Move from (%d,%d) in %s to (%d,%d) in %s\n',start_center(1),start_center(2),end_center(1),end_center(2),pose1,pose2);
    end
elseif start_pose(1) == 1 && start_pose(2) == 1 && end_pose(1) == 1 && end_pose(2) == 1
    [tl1,tr1,bl1,br1] = rotate_robot(90,start_center);
    pose1='V';
    [tl2,tr2,bl2,br2] = rotate_robot(90,end_center);
    pose2='V';
    % TL1 - TL2
    fprintf(fileID,'Checking TOPLEFT Collision\n');
    tl_bang = check_crossing(tl1,tl2,x_arr,y_arr);
    % TR1 - TR2
    fprintf(fileID,'Checking TOPRIGHT Collision\n');
    tr_bang = check_crossing(tr1,tr2,x_arr,y_arr);
    % BL1 - BL2
    fprintf(fileID,'Checking BOTTOMLEFT Collision\n');
    bl_bang = check_crossing(bl1,bl2,x_arr,y_arr);
    % BR1 - BR2
    fprintf(fileID,'Checking BOTTOMRIGHT Collision\n');
    br_bang = check_crossing(br1,br2,x_arr,y_arr);
    if tl_bang ~=0 || tr_bang ~=0 || bl_bang ~=0 || br_bang ~=0
        collision = 1;
        fprintf(fileID,'Robot Collision from (%d,%d) to (%d,%d)\n',start_center(1),start_center(2),end_center(1),end_center(2));
        return;
    else
        collision = 0;
        fprintf(fileID,'Robot Can Move from (%d,%d) in %s to (%d,%d) in %s\n',start_center(1),start_center(2),end_center(1),end_center(2),pose1,pose2);
        return;
    end
    [tl1,tr1,bl1,br1] = rotate_robot(0,start_center);
    pose1='V';
    [tl2,tr2,bl2,br2] = rotate_robot(0,end_center);
    pose2='V';
    % TL1 - TL2
    fprintf(fileID,'Checking TOPLEFT Collision\n');
    tl_bang = check_crossing(tl1,tl2,x_arr,y_arr);
    % TR1 - TR2
    fprintf(fileID,'Checking TOPRIGHT Collision\n');
    tr_bang = check_crossing(tr1,tr2,x_arr,y_arr);
    % BL1 - BL2
    fprintf(fileID,'Checking BOTTOMLEFT Collision\n');
    bl_bang = check_crossing(bl1,bl2,x_arr,y_arr);
    % BR1 - BR2
    fprintf(fileID,'Checking BOTTOMRIGHT Collision\n');
    br_bang = check_crossing(br1,br2,x_arr,y_arr);
    if tl_bang ~=0 || tr_bang ~=0 || bl_bang ~=0 || br_bang ~=0
        collision = 1;
        fprintf(fileID,'Robot Collision from (%d,%d) to (%d,%d)\n',start_center(1),start_center(2),end_center(1),end_center(2));
        return;
    else
        collision = 0;
        fprintf(fileID,'Robot Can Move from (%d,%d) in %s to (%d,%d) in %s\n',start_center(1),start_center(2),end_center(1),end_center(2),pose1,pose2);
        return;
    end
end

end