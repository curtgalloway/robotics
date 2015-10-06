%% DO NOT EDIT THE FOLLOWING LINES
T = transl (1.2, -0.7, 0.5) * eul2tr(32, 54, -12, 'deg');
PA = [2.1, 0.3, -0.5]';
VB = [0, 0, -0.9]';

%% YOUR ANSWERS BELOW THIS LINE

%%Transpose T for A_J_B
J=tr2jac(T')

%%Pad for angular velocity
J*[VB',0,0,0]'

VA = ans(1:3)
