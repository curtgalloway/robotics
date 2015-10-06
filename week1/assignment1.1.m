% DO NOT CHANGE THE FOLLOWING LINES
PA_0 = [6.5; 4.3];  % point A with respect to {0}
PB_2 = [1.2; -2.7];  % point B with respect to {2}

% Modify the following lines to return the correct values

R1 = rot2(-50,'deg')
T1 = transl2(3,4)
T2 = se2(5,6,-30,'deg')
homo_PA_2=inv(T2)*[PA_0;1];
PA_2 = homo_PA_2(1:2)
homo_PB_0 = T2*[PB_2;1];
homo_PB_1 = inv(T1)*homo_PB_0;
PB_0 = homo_PB_0(1:2);
PB_1 = homo_PB_1(1:2)
D_AB = sqrt( (PA_0(1)-PB_0(1))^2 + (PA_0(2)-PB_0(2))^2) 
