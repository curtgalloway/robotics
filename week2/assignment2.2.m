% DO NOT CHANGE THE FOLLOWING LINES
P0 = [5, 6, 4]/2;
C0 = transl(P0) * oa2tr([0 1 0], -P0);
Pi = [5, 6, 4];
Ci = transl(Pi) * oa2tr([0 1 0], -Pi);
Pf = [-6, 6, 8];
Cf = transl(Pf) * oa2tr([0 1 0], -Pf);


% Modify the following lines to compute your answer

VIA=[ Pi tr2rpy(Ci); Pf tr2rpy(Cf) ]
TRAJ = mstraj(VIA, [], [6 8], [P0 tr2rpy(C0)], .2, 1.5);
P50=TRAJ(50,:)
