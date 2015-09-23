% DO NOT CHANGE THE FOLLOWING LINES
V = [
-1  1  1 -1  -1  1  1 -1  
-1 -1  1  1  -1 -1  1  1
-1 -1 -1 -1   1  1  1  1 ];

edges = [
     1     2     3     4     5     6     7     8     1     2     3     4
     2     3     4     1     6     7     8     5     5     6     7     8 ];

P = [5, 6, 4];
C = transl(P) * oa2tr([0 1 0], -P);

% Modify the following lines to generate the plot

point1=inv(C)*[V(:,1);1];
point2=inv(C)*[V(:,2);1];
point3=inv(C)*[V(:,3);1];
point4=inv(C)*[V(:,4);1];
point5=inv(C)*[V(:,5);1];
point6=inv(C)*[V(:,6);1];
point7=inv(C)*[V(:,7);1];
point8=inv(C)*[V(:,8);1];
      
% Remove the added 1
point1=point1(1:3);
point2=point2(1:3);
point3=point3(1:3);
point4=point4(1:3);
point5=point5(1:3);
point6=point6(1:3);
point7=point7(1:3);
point8=point8(1:3);

V_C = [point1,point2,point3,point4,point5,point6,point7,point8];

hold on
axis equal

plot3( [V_C(1,1),V_C(1,2)],[V_C(2,1),V_C(2,2)],[V_C(3,1),V_C(3,2)])
plot3( [V_C(1,2),V_C(1,3)],[V_C(2,2),V_C(2,3)],[V_C(3,2),V_C(3,3)])
plot3( [V_C(1,3),V_C(1,4)],[V_C(2,3),V_C(2,4)],[V_C(3,3),V_C(3,4)])
plot3( [V_C(1,4),V_C(1,1)],[V_C(2,4),V_C(2,1)],[V_C(3,4),V_C(3,1)])
plot3( [V_C(1,5),V_C(1,6)],[V_C(2,5),V_C(2,6)],[V_C(3,5),V_C(3,6)])
plot3( [V_C(1,6),V_C(1,7)],[V_C(2,6),V_C(2,7)],[V_C(3,6),V_C(3,7)])
plot3( [V_C(1,7),V_C(1,8)],[V_C(2,7),V_C(2,8)],[V_C(3,7),V_C(3,8)])
plot3( [V_C(1,8),V_C(1,5)],[V_C(2,8),V_C(2,5)],[V_C(3,8),V_C(3,5)])
plot3( [V_C(1,1),V_C(1,5)],[V_C(2,1),V_C(2,5)],[V_C(3,1),V_C(3,5)])
plot3( [V_C(1,2),V_C(1,6)],[V_C(2,2),V_C(2,6)],[V_C(3,2),V_C(3,6)])
plot3( [V_C(1,3),V_C(1,7)],[V_C(2,3),V_C(2,7)],[V_C(3,3),V_C(3,7)])
plot3( [V_C(1,4),V_C(1,8)],[V_C(2,4),V_C(2,8)],[V_C(3,4),V_C(3,8)])



