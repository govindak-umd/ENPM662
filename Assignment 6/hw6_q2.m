clc 
clear all
%%code for 
%%answer 2 HW 6
syms l1 l2 l3 q2 theta1 theta3
alpha1 = 90;
alpha2 = -90;
alpha3 = 0;

%%matrix 1
Rz_theta1=[cosd(theta1+90) -sind(theta1+90) 0 0;sind(theta1+90) cosd(theta1+90) 0 0;0 0 1 0;0 0 0 1];
Rx_alpha1=[1 0 0 0;0 cosd(alpha1) -sind(alpha1) 0;0 sind(alpha1) cosd(alpha1) 0;0 0 0 1];
Tz_d1=[1 0 0 0;0 1 0 0;0 0 1 l1;0 0 0 1];
Tx_a1=[1 0 0 0;0 1 0 0;0 0 1 0;0 0 0 1];

%%matrix 2
Rz_theta2=[cosd(0) -sind(0) 0 0;sind(0) cosd(0) 0 0;0 0 1 0;0 0 0 1];
Rx_alpha2=[1 0 0 0;0 cosd(alpha2) -sind(alpha2) 0;0 sind(alpha2) cosd(alpha2) 0;0 0 0 1];
Tz_d2=[1 0 0 0;0 1 0 0;0 0 1 (l1 + l2 +q2);0 0 0 1];
Tx_a2=[1 0 0 0;0 1 0 0;0 0 1 0;0 0 0 1];

%matrix 3
Rz_theta3=[cosd(theta3-90) -sind(theta3-90) 0 0;sind(theta3-90) cosd(theta3-90) 0 0;0 0 1 0;0 0 0 1];
Rx_alpha3=[1 0 0 0;0 cosd(alpha3) -sind(alpha3) 0;0 sind(alpha3) cosd(alpha3) 0;0 0 0 1];
Tz_d3=[1 0 0 0;0 1 0 0;0 0 1 0;0 0 0 1];
Tx_a3=[1 0 0 l3;0 1 0 0;0 0 1 0;0 0 0 1];

%%multiplying to get homogeneous matrices
A_1=Rz_theta1*Tz_d1*Tx_a1*Rx_alpha1
A_2=Rz_theta2*Tz_d2*Tx_a2*Rx_alpha2
A_3=Rz_theta3*Tz_d3*Tx_a3*Rx_alpha3

transformation = A_1*A_2*A_3

