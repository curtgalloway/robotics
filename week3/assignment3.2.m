%% DO NOT EDIT THE FOLLOWING LINES
R  = rpy2r(20, 30, -40, 'deg');
omega = [-0.12 0.04 0.27];  % gyroscope measurements in radians/sec
        
%% YOUR ANSWER BELOW HERE
S=skew(omega)
Rdot = S*R

t=.05 %50ms

R_T=(t*S+eye(3,3))*R
R_T_norm=trnorm(R_T)

RPY_T = tr2rpy(R_T_norm,'deg')
