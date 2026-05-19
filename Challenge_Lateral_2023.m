% % Lateral control for lane changing manoeuvres % %
% Implementation of lateral and longitudial control in a decoupled dynamics %

% Parameters for longitudinal control %
Caf= 19000;
Car= 33000;
lf= 1.4;
lr= 1.6;
Iz= 2875;
m= 1600;
% Vx= 6.94  [25 kph (initial condition)]
% y= 0 (initial condition)              
Vx_des=11.12;  % [40 kph]
y_des=3;

a1= (2*(Caf+Car))/m;
a2= (2*(Caf*lf-Car*lr)/m);
b1= 2*Caf/m;
a3= (2*(Caf*lf-Car*lr))/Iz;
a4= (2*(Caf*lf^2+Car*lr^2))/Iz; 
b2= (2*Caf*lf)/Iz;

% Parameters for Longitudinal dynamics%
eta= 0.8;
R=0.30578;
Cd=0.30;
H=0.5; % Assumption
L=10; % Assumption
Ch=1-0.085*H;
Af=2.2;
fr=0.0328;
rho=1.2256;
g=9.80665;
theta=H/L;

%% Graph for position
plot(ans.tout,ans.y,'b.-');
hold on
plot(out.tout,out.y,'r.-')

