clc 
clear all
%%code for 
%%answer 3 HW 5
%%rewriting the equations derived in the last question
syms q1 q2 q3 a1 a2 a3

alpha1 = 90;
alpha2 = -90;
alpha3 = 0;

%%matrix 1
Rz_theta1=[cosd(q1+90) -sind(q1+90) 0 0;sind(q1+90) cosd(q1+90) 0 0;0 0 1 0;0 0 0 1];
Rx_alpha1=[1 0 0 0;0 cosd(alpha1) -sind(alpha1) 0;0 sind(alpha1) cosd(alpha1) 0;0 0 0 1];
Tz_d1=[1 0 0 0;0 1 0 0;0 0 1 0;0 0 0 1];
Tx_a1=[1 0 0 0;0 1 0 0;0 0 1 0;0 0 0 1];

%%matrix 2
Rz_theta2=[cosd(0) -sind(0) 0 0;sind(0) cosd(0) 0 0;0 0 1 0;0 0 0 1];
Rx_alpha2=[1 0 0 0;0 cosd(alpha2) -sind(alpha2) 0;0 sind(alpha2) cosd(alpha2) 0;0 0 0 1];
Tz_d2=[1 0 0 0;0 1 0 0;0 0 1 a1+a2+q2;0 0 0 1];
Tx_a2=[1 0 0 0;0 1 0 0;0 0 1 0;0 0 0 1];

%matrix 3
Rz_theta3=[cosd(q3-90) -sind(q3-90) 0 0;sind(q3-90) cosd(q3-90) 0 0;0 0 1 0;0 0 0 1];
Rx_alpha3=[1 0 0 0;0 cosd(alpha3) -sind(alpha3) 0;0 sind(alpha3) cosd(alpha3) 0;0 0 0 1];
Tz_d3=[1 0 0 0;0 1 0 0;0 0 1 0;0 0 0 1];
Tx_a3=[1 0 0 a3;0 1 0 0;0 0 1 0;0 0 0 1];


%%multiplying to get homogeneous matrices
A_1=Rz_theta1*Tz_d1*Tx_a1*Rx_alpha1
A_2=Rz_theta2*Tz_d2*Tx_a2*Rx_alpha2
A_3=Rz_theta3*Tz_d3*Tx_a3*Rx_alpha3

% T0_1 = A_1
% T0_2 = A_1*A_2
% T0_3 = A_1*A_2*A_3

% %% 
% %%FINDING HOMOGENEOUS, ROTATION MATRICES AND ORIGINS
% %%FOR THE JACOBIAN CALCULATION
% 
% %%JOINT 1 - REVOLUTE JOINT

% 
H_1_0 = A_1;
R_1_0 = H_1_0(1:3,1:3)
O_1_0 = H_1_0(1:3,4);
% 
% %%JOINT 2 - REVOLUTE JOINT
H_2_0 = A_1*A_2;
R_2_0 = H_2_0(1:3,1:3);
O_2_0 = H_2_0(1:3,4);
% 
% %%JOINT 3 - REVOLUTE JOINT
H_3_0 = A_1*A_2*A_3;
R_3_0 = H_3_0(1:3,1:3);
O_3_0 = H_3_0(1:3,4);
% 
fprintf("The Transformation matrices are given as follows : ")

H_1_0
H_2_0
H_3_0

fprintf("The O matrices are given as follows : ")

O_0_0=[0 0 0]'

O_1_0 = H_1_0(1:3,4)
O_2_0 = H_2_0(1:3,4)
O_3_0 = H_3_0(1:3,4)


fprintf("The Z matrices are given as follows : ")
z0 = eye(3)*[0 0 1]'
z1 = R_1_0*[0 0 1]' 
z2 = R_2_0*[0 0 1]'


fprintf("The velocity jacobian matrices are given as follows : ")

J_v_1 = [cross(z0,(O_1_0-O_0_0)) [0 0 0]' [0 0 0]']
J_v_2 = [cross(z0,(O_2_0-O_0_0)) z1 [0 0 0]']
J_v_3 = [cross(z0,(O_3_0-O_0_0)) z1 cross(z2,(O_3_0-O_2_0))]


fprintf("The angular velocity (w) jacobian matrices are given as follows : ")

J_w_1 = [[0 0 1]' [0 0 0]' [0 0 0]']
J_w_2 = [[0 0 1]' [0 0 0]' [0 0 0]']
J_w_3 = [[0 0 1]' [0 0 0]' [0 0 1]']


