function [ T ] = fkine( Q )
%FKINE Take a vector of joint angles ( Q ) and determine the pose of the 
%      end effector. 
%   Detailed explanation goes here

q0=Q;

a1=1;
a2=1.5;

P=[ q0(2)*cos(q0(1)) - a2*sin(q0(1)) - a1*sin(q0(1)),  a1*cos(q0(1)) + a2*cos(q0(1)) + q0(2)*sin(q0(1)) ];

T=transl([P,0]);

end

