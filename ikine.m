function [ Q ] = ikine( T )
%IKINE Find the joint angles ( Q ) to reach a relative post T
%   Detailed explanation goes here

[x,y,z] = transl(T);

a1=1;
a2=1.5;

 q2 = sqrt(x^2+y^2 - (a1+a2)^2);
 q1 = atan2(y*q2-(a1+a2)*x, (a1+a2)*y+q2*x);

 Q=[q1,q2];

end

