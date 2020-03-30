clc 
clear all
%%code for 
%%answer 2 part a HW 5
%%rewriting the equations derived in the last question
%%every row has one alpha value

alpha1 = -30;
alpha2 = -90;
alpha3 = 0;
alpha4 = -90;
alpha5 = 0;

%%link lengths 
l1 = 1.5;
l2 = 1;
l3 = 0.5;

%%configuration q
theta1 = 150;
theta2 = 45;
theta3 = 30;
l4= 2;

%%matrix 1
Rz_theta1=[cosd(theta1-90) -sind(theta1-90) 0 0;sind(theta1-90) cosd(theta1-90) 0 0;0 0 1 0;0 0 0 1];
Rx_alpha1=[1 0 0 0;0 cosd(alpha1) -sind(alpha1) 0;0 sind(alpha1) cosd(alpha1) 0;0 0 0 1];
Tz_d1=[1 0 0 0;0 1 0 0;0 0 1 l1;0 0 0 1];
Tx_a1=[1 0 0 0;0 1 0 0;0 0 1 0;0 0 0 1];

%%matrix 2
Rz_theta2=[cosd(theta2+90) -sind(theta2+90) 0 0;sind(theta2+90) cosd(theta2+90) 0 0;0 0 1 0;0 0 0 1];
Rx_alpha2=[1 0 0 0;0 cosd(alpha2) -sind(alpha2) 0;0 sind(alpha2) cosd(alpha2) 0;0 0 0 1];
Tz_d2=[1 0 0 0;0 1 0 0;0 0 1 l2;0 0 0 1];
Tx_a2=[1 0 0 0;0 1 0 0;0 0 1 0;0 0 0 1];

%matrix 3
Rz_theta3=[cosd(-30) -sind(-30) 0 0;sind(-30) cosd(-30) 0 0;0 0 1 0;0 0 0 1];
Rx_alpha3=[1 0 0 0;0 cosd(alpha3) -sind(alpha3) 0;0 sind(alpha3) cosd(alpha3) 0;0 0 0 1];
Tz_d3=[1 0 0 0;0 1 0 0;0 0 1 0;0 0 0 1];
Tx_a3=[1 0 0 0;0 1 0 0;0 0 1 0;0 0 0 1];

%%matrix 4
Rz_theta4=[cosd(theta3-90) -sind(theta3-90) 0 0;sind(theta3-90) cosd(theta3-90) 0 0;0 0 1 0;0 0 0 1];
Rx_alpha4=[1 0 0 0;0 cosd(alpha4) -sind(alpha4) 0;0 sind(alpha4) cosd(alpha4) 0;0 0 0 1];
Tz_d4=[1 0 0 0;0 1 0 0;0 0 1 0;0 0 0 1];
Tx_a4=[1 0 0 0;0 1 0 0;0 0 1 0;0 0 0 1];

%%matrix 5
Rz_theta5=[cosd(0) -sind(0) 0 0;sind(0) cosd(0) 0 0;0 0 1 0;0 0 0 1];
Rx_alpha5=[1 0 0 0;0 cosd(alpha5) -sind(alpha5) 0;0 sind(alpha5) cosd(alpha5) 0;0 0 0 1];
Tz_d5=[1 0 0 0;0 1 0 0;0 0 1 (l3+l4);0 0 0 1];
Tx_a5=[1 0 0 0;0 1 0 0;0 0 1 0;0 0 0 1];

%%multiplying to get homogeneous matrices
A_1=Rz_theta1*Tz_d1*Tx_a1*Rx_alpha1
A_2=Rz_theta2*Tz_d2*Tx_a2*Rx_alpha2
A_3=Rz_theta3*Tz_d3*Tx_a3*Rx_alpha3
A_4=Rz_theta4*Tz_d4*Tx_a4*Rx_alpha4
A_5=Rz_theta5*Tz_d5*Tx_a5*Rx_alpha5

%% 
%%FINDING HOMOGENEOUS, ROTATION MATRICES AND ORIGINS
%%FOR THE JACOBIAN CALCULATION

%%JOINT 1 - REVOLUTE JOINT
O_0_0=[0 0 0]'

H_1_0 = A_1
R_1_0 = H_1_0(1:3,1:3)
O_1_0 = H_1_0(1:3,4)

%%JOINT 2 - REVOLUTE JOINT
H_2_0 = A_1*A_2
R_2_0 = H_2_0(1:3,1:3)
O_2_0 = H_2_0(1:3,4)

%%JOINT 3 - REVOLUTE JOINT
H_3_0 = A_1*A_2*A_3*A_4
R_3_0 = H_3_0(1:3,1:3)
O_3_0 = H_3_0(1:3,4)

%%JOINT 4 - PRISMATIC JOINT
H_4_0 = A_1*A_2*A_3*A_4*A_5
R_4_0 = H_4_0(1:3,1:3)
O_4_0 = H_4_0(1:3,4)

fprintf("Answer B : ")
fprintf("The O matrices are given as follows : ")

O_1_0 = H_1_0(1:3,4)
O_2_0 = H_2_0(1:3,4)
O_3_0 = H_3_0(1:3,4)
O_4_0 = H_4_0(1:3,4)

fprintf("The Z matrices are given as follows : ")
z0 = eye(3)*[0 0 1]' 
z1 = R_1_0*[0 0 1]' 
z2 = R_2_0*[0 0 1]'
z3 = R_3_0*[0 0 1]'

Jacobian = [cross(z0,O_4_0-O_0_0) cross(z1,O_4_0-O_1_0) cross(z2,O_4_0-O_2_0) z3;z0 z1 z2 [0 0 0]']
wrench = [1 0 0 0 0 0]'
Torque = (Jacobian)'*(wrench)

