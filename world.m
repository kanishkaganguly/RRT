% OBSTACLE 1 %
obs1x = [0 10 10 0];
obs1y = [0 0 200 200];
patch(obs1x,obs1y,'b');

% OBSTACLE 2s %
obs2x = [10 10 190 190];
obs2y = [10 0 0 10];
patch(obs2x,obs2y,'b');

% OBSTACLE 3 %
obs3x = [190 200 200 190];
obs3y = [0 0 70 70];
patch(obs3x,obs3y,'b');

% OBSTACLE 4 %
obs4x = [170 170 200 200];
obs4y = [130 70 70 130];
patch(obs4x,obs4y,'b');

% OBSTACLE 5 %
obs5x = [190 190 200 200];
obs5y = [190 130 130 190];
patch(obs5x,obs5y,'b');

% OBSTACLE 6 %
obs6x = [200 200 130 130];
obs6y = [190 200 200 190];
patch(obs6x,obs6y,'b');

% OBSTACLE 7 %
obs7x = [130 130 70 70];
obs7y = [170 200 200 170];
patch(obs7x,obs7y,'b');

% OBSTACLE 8 %
obs8x = [70 70 10 10];
obs8y = [190 200 200 190];
patch(obs8x,obs8y,'b');

% OBSTACLE 9 %
obs9x = [10 10 70 70];
obs9y = [130 120 120 130];
patch(obs9x,obs9y,'b');

% OBSTACLE 10 %
obs10x = [70 70 130 130];
obs10y = [150 130 130 150];
patch(obs10x,obs10y,'b');

% OBSTACLE 11 %
obs11x = [10 130 130 10];
obs11y = [10 10 130 130];
patch(obs11x,obs11y,'b');

% OBSTACLE 12 %
obs12x = [130 130 150 150];
obs12y = [130 70 70 130];
patch(obs12x,obs12y,'b');

% ROBOT START %
robotx = [25 25 35 35];
roboty = [175 145 145 175];
robot = rectangle('Position',[30-5,160-15,10,30],'FaceColor','y');
robot = rectangle('Position',[160-15,30-5,30,10],'FaceColor','y');

% OBSTACLE LIST %
x_arr = [obs1x; obs2x; obs3x; obs4x; obs5x; obs6x; obs7x; obs8x; obs9x; obs10x; obs11x; obs12x];
y_arr = [obs1y; obs2y; obs3y; obs4y; obs5y; obs6y; obs7y; obs8y; obs9y; obs10y; obs11y; obs12y];