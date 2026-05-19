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

a1_unc= (2*(Caf_unc+Car))/m_unc;
a2_unc= (2*(Caf_unc*lf_unc-Car*lr)/m_unc);
b1_unc= 2*Caf_unc/m_unc;
a3_unc= (2*(Caf_unc*lf_unc-Car*lr))/Iz;
a4_unc= (2*(Caf_unc*lf_unc^2+Car*lr^2))/Iz; 
b2_unc= (2*Caf_unc*lf_unc)/Iz;
