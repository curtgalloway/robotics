%% DO NOT EDIT THE FOLLOWING LINES
mdl_puma560
P1 = [0.7 0.2 0.45]';
P2 = [0.7 -0.2 -0.4]';
npoints = 101;
dt = 0.1;

%% YOUR ANSWERS BELOW THIS LINE

T1=transl(0.7,0.2,0.45);
T2=transl(0.7,-0.2,-0.4);
traj=ctraj(T1,T2,npoints);

qtraj = p560.ikine(traj);
nearsingular =
      
