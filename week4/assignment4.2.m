%% DO NOT EDIT THE FOLLOWING LINES
a1 = 1;
a2 = 1.5;
P0 = [-3 -4];
P1 = [2 -5];
        
%% YOUR ANSWER BELOW HERE
%x = P0(1); 
%y = P0(2);
%q2 = sqrt(x^2+y^2 - (a1+a2)^2);
%q1 = atan2(y*q2-(a1+a2)*x, (a1+a2)*y+q2*x);
%q0 = [q1 q2];

%x = P1(1); 
%y = P1(2);
%q2 = sqrt(x^2+y^2 - (a1+a2)^2);
%q1 = atan2(y*q2-(a1+a2)*x, (a1+a2)*y+q2*x);
%q1 = [q1 q2];

%%No earthly idea why this next is incorrect
%%qtraj = jtraj(q0,q1,20)

T0=transl([P0,0])
T1=transl([P1,0])

%%This next bit is incorrect as well. Also no idea why. 
%ctraj=ctraj(T0,T1,20);
%[X,Y,Z]=transl(ctraj);

jtraj(T0,T1,20);
%%This is silly - we're using joint position trajectory with coordinate points. 
X=ans(:,13);
Y=ans(:,14);

Q2=sqrt(X.^2+Y.^2 - (a1+a2)^2);
Q1=atan2(Y.*Q2-(a1+a2).*X, (a1+a2).*Y+Q2.*X);

qtraj=[Q1,Q2]
