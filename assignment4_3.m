%% DO NOT EDIT THE FOLLOWING LINES
a1 = 1;
a2 = 1.5;
q0 = [0 2];
Pgoal = [-1 4];
npoints = 100;
dt = 0.1;
        
%% YOUR ANSWER BELOW HERE
J0 = [ -q0(2)*sin(q0(1)) + (-a1-a2)*cos(q0(1)),cos(q0(1)) ;
       -(a1+a2)*sin(q0(1)) + q0(2)*cos(q0(1)),sin(q0(1)) ] 

Pstart=[ q0(2)*cos(q0(1)) - a2*sin(q0(1)) - a1*sin(q0(1)),  a1*cos(q0(1)) + a2*cos(q0(1)) + q0(2)*sin(q0(1)) ]

qi=q0;
Ji=J0;
time = dt*npoints;
v1 = (Pgoal - Pstart)/time;

for i=1:npoints
    
    qdot=inv(Ji)*v1';
    qi=qi+(dt*qdot)';
    Ji = [ -qi(2)*sin(qi(1)) + (-a1-a2)*cos(qi(1)),cos(qi(1)) ;
           -(a1+a2)*sin(qi(1)) + qi(2)*cos(qi(1)),sin(qi(1)) ] ;
 
    %%This next recalculates velocity - it was marked wrong during the course. 
    %%So I have it commented out here. 
    %Pcurrent=[ qi(2)*cos(qi(1)) - a2*sin(qi(1)) - a1*sin(qi(1)),  a1*cos(qi(1)) + a2*cos(qi(1)) + qi(2)*sin(qi(1)) ];    
    %timeleft=(time-(dt*i));
    %if timeleft~=0
    %    v1=(Pgoal - Pcurrent)/timeleft;
    %end
    qtraj(i,:)=qi;
end
    
qend=qtraj(npoints,:);
[ qend(2)*cos(qend(1)) - a2*sin(qend(1)) - a1*sin(qend(1)),  a1*cos(qend(1)) + a2*cos(qend(1)) + qend(2)*sin(qend(1)) ]
