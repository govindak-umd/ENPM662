clc 
clear all

syms q1 q2 q3 a1 a2 a3
alpha1 = 90;
alpha2 = -90;
alpha3 = 0;

%%matrix 1
Rz_theta1=[cosd(q1+90) -sind(q1+90) 0 0;sind(q1+90) cosd(q1+90) 0 0;0 0 1 0;0 0 0 1];
Rx_alpha1=[1 0 0 0;0 cosd(alpha1) -sind(alpha1) 0;0 sind(alpha1) cosd(alpha1) 0;0 0 0 1];
Tz_d1=[1 0 0 0;0 1 0 0;0 0 1 0;0 0 0 1];
Tx_a1=[1 0 0 0;0 1 0 0;0 0 1 0;0 0 0 1];

% %%matrix 2
% Rz_theta2=[cosd(0) -sind(0) 0 0;sind(0) cosd(0) 0 0;0 0 1 0;0 0 0 1];
% Rx_alpha2=[1 0 0 0;0 cosd(alpha2) -sind(alpha2) 0;0 sind(alpha2) cosd(alpha2) 0;0 0 0 1];
% Tz_d2=[1 0 0 0;0 1 0 0;0 0 1 a1+a2+q2;0 0 0 1];
% Tx_a2=[1 0 0 0;0 1 0 0;0 0 1 0;0 0 0 1];
% 
% %matrix 3
% Rz_theta3=[cosd(q3-90) -sind(q3-90) 0 0;sind(q3-90) cosd(q3-90) 0 0;0 0 1 0;0 0 0 1];
% Rx_alpha3=[1 0 0 0;0 cosd(alpha3) -sind(alpha3) 0;0 sind(alpha3) cosd(alpha3) 0;0 0 0 1];
% Tz_d3=[1 0 0 0;0 1 0 0;0 0 1 0;0 0 0 1];
% Tx_a3=[1 0 0 a3;0 1 0 0;0 0 1 0;0 0 0 1];

%%multiplying to get homogeneous matrices
A_1=Rz_theta1*Tz_d1*Tx_a1*Rx_alpha1
A_2=Rz_theta2*Tz_d2*Tx_a2*Rx_alpha2
A_3=Rz_theta3*Tz_d3*Tx_a3*Rx_alpha3


