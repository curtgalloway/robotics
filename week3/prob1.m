%% DO NOT EDIT THE FOLLOWING LINES
a = [0.8533, 1.6935, 9.6046];
b = [34.59, -11.36, 29.72]*1e-6; % magnetometer measurements in T
omega = [-0.12 0.04 0.27];  % gyroscope measurements in radians/sec

I = 40; % local magnetic inclination in degrees
B = 47.0e-6;  % local magnetic field strength in T
g = 9.79; % local gravitational acceleration in m/s2
        
%% YOUR ANSWER BELOW HERE

theta_in_rad = asin( -a(:,1)/g )
pitch=theta_in_rad/pi*180

phi_in_rad = asin(a(:,2)/g/cos(theta_in_rad))
%%Just to make sure the answer is correct...
a(:,3) == g*cos(theta_in_rad)*cos(phi_in_rad)

roll = phi_in_rad/pi*180
I_in_rad = I*pi/180
%psi_in_rad=atan( (cos(theta_in_rad)*(b(:,3)*sin(phi_in_rad)-b(:,2)*cos(phi_in_rad)))/b(:,1)+B*sin(I_in_rad)*sin(theta_in_rad))
psi_in_rad=   atan( ( cos(theta_in_rad)*( (b(:,3)*sin(phi_in_rad)) - (b(:,2)*cos(phi_in_rad))) ) / (  b(:,1) + ( B*sin(I_in_rad)*sin(theta_in_rad)) ) )

yaw = psi_in_rad/pi*180
      
