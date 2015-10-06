%% DO NOT EDIT THE FOLLOWING LINES
q1 = [-30 20 10 30 40 50];  % joint angles in degrees
q2 = [30 40 20 10 20 80];   % joint angles in degrees
        
%% YOUR ANSWER BELOW HERE
qt = jtraj(q1,q2,120);

mdl_puma560;
p560.base = transl(17.4,12.2,1.3) * trotz(pi/2);
p560.tool = transl(.041,.003,.174);  %% centimeters 
T70=p560.fkine(qt(70,:),'deg')

P70 = T70(1:3,4)'
