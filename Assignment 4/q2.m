%MATLAB CODE ASSIGNMENT 4 ENPM662
%ANSWER 2 (a) 2 (b) 2 (c)

%%2(a) generic jacobian form written by hand 
clc 
clear all
%writing the code for A matrices
%%declaring the variables and symbols for the matrix multiplication
syms theta1 theta2 theta3 l1 l2 l3 l4 %%declaring all the unknown values as symbols

%%declaring the values of the a variables for translation along Xn
a2=0;
a3=0;
a4=0;
a5=0;
%%declaring the values of the alpha variables for rotation about Xn
alpha1=-90;
alpha2=90;
alpha3=0;
alpha4=90;
alpha5=0;
%%declaring the value of theta for frame 3 to 4 transformation
theta5=90;

%%The general form of the matrices are obtained by multiplying the
%%following 

%%first A matrix A_1
Rz_theta1=[cosd(theta1) -sind(theta1) 0 0;sind(theta1) cosd(theta1) 0 0;0 0 1 0;0 0 0 1];
Rx_alpha1=[1 0 0 0;0 cosd(alpha1) -sind(alpha1) 0;0 sind(alpha1) cosd(alpha1) 0;0 0 0 1];
Tz_d1=[1 0 0 0;0 1 0 0;0 0 1 (0);0 0 0 1];
Tx_a1=[1 0 0 l1;0 1 0 0;0 0 1 0;0 0 0 1];

A_1=Rz_theta1*Tz_d1*Tx_a1*Rx_alpha1

%%second A matrix A_2
Rz_theta2=[cosd(theta2+90) -sind(theta2+90) 0 0;sind(theta2+90) cosd(theta2+90) 0 0;0 0 1 0;0 0 0 1];
Rx_alpha2=[1 0 0 0;0 cosd(alpha2) -sind(alpha2) 0;0 sind(alpha2) cosd(alpha2) 0;0 0 0 1];
Tz_d2=[1 0 0 0;0 1 0 0;0 0 1 (0);0 0 0 1];
Tx_a2=[1 0 0 a2;0 1 0 0;0 0 1 0;0 0 0 1];

A_2=Rz_theta2*Tz_d2*Tx_a2*Rx_alpha2

%%third A matrix A_3
Rz_theta3=[cosd(0) -sind(0) 0 0;sind(0) cosd(0) 0 0;0 0 1 0;0 0 0 1];
Rx_alpha3=[1 0 0 0;0 cosd(alpha3) -sind(alpha3) 0;0 sind(alpha3) cosd(alpha3) 0;0 0 0 1];
Tz_d3=[1 0 0 0;0 1 0 0;0 0 1 (l2);0 0 0 1];
Tx_a3=[1 0 0 a3;0 1 0 0;0 0 1 0;0 0 0 1];

A_3=Rz_theta3*Tz_d3*Tx_a3*Rx_alpha3

%%fourth A matrix A_4
Rz_theta4=[cosd(theta3+90) -sind(theta3+90) 0 0;sind(theta3+90) cosd(theta3+90) 0 0;0 0 1 0;0 0 0 1];
Rx_alpha4=[1 0 0 0;0 cosd(alpha4) -sind(alpha4) 0;0 sind(alpha4) cosd(alpha4) 0;0 0 0 1];
Tz_d4=[1 0 0 0;0 1 0 0;0 0 1 (l3);0 0 0 1];
Tx_a4=[1 0 0 a4;0 1 0 0;0 0 1 0;0 0 0 1];

A_4=Rz_theta4*Tz_d4*Tx_a4*Rx_alpha4

%%fifth A matriX A_5
Rz_theta5=[cosd(theta5) -sind(theta5) 0 0;sind(theta5) cosd(theta5) 0 0;0 0 1 0;0 0 0 1];
Rx_alpha5=[1 0 0 0;0 cosd(alpha5) -sind(alpha5) 0;0 sind(alpha5) cosd(alpha5) 0;0 0 0 1];
Tz_d5=[1 0 0 0;0 1 0 0;0 0 1 (l4);0 0 0 1];
Tx_a5=[1 0 0 a5;0 1 0 0;0 0 1 0;0 0 0 1];

A_5=Rz_theta5*Tz_d5*Tx_a5*Rx_alpha5

%%FINDING HOMOGENEOUS, ROTATION MATRICES AND ORIGINS FOR JACOBIAN CALCULATION
%%JOINT 1
H_1_0=A_1 %%Homogeneous Matrix for Joint 1
R_1_0=H_1_0(1:3,1:3) %%Rotation matrix for Joint 1
O_1_0=H_1_0(1:3,4); %%Origin for matrix 1
%%JOINT 2
H_2_0=A_1*A_2*A_3 %%Homogeneous Matrix for Joint 2
R_2_0=H_2_0(1:3,1:3) %%Rotation matrix for Joint 2
O_2_0=H_2_0(1:3,4); %%Origin for matrix 2
%%JOINT 3
H_3_0=A_1*A_2*A_3*A_4 %%Homogeneous Matrix for Joint 3
R_3_0=H_3_0(1:3,1:3)  %%Rotation matrix for Joint 3
O_3_0=H_3_0(1:3,4); %%Origin for matrix 3
%%JOINT 4
H_4_0=A_1*A_2*A_3*A_4*A_5  %%Homogeneous Matrix for Joint 4
R_4_0=H_4_0(1:3,1:3) %%Rotation matrix for Joint 4
O_4_0=H_4_0(1:3,4); %%Origin for matrix 4

fprintf("Answer B: ")
fprintf("The o matrices are given here :  ")
O_1_0=H_1_0(1:3,4)
O_2_0=H_2_0(1:3,4)
O_3_0=H_3_0(1:3,4)
O_4_0=H_4_0(1:3,4)
fprintf("The z matrices are given below : ")
z1=R_1_0*[0 0 1]' %%z1 matrix for jacobian calculation
z2=R_2_0*[0 0 1]' %%z2 matrix for jacobian calculation
z3=R_3_0*[0 0 1]' %%z3 matrix for jacobian calculation

fprintf("Answer C: ")
%%substituting the values of l given in the question 
l1=3;
l2=2;
l3=1;
%%substituting the values  of theta given in the question 
theta1=0;
theta2=45;
theta3=30;
l4=0.5;
%%substituting the values of a
a2=0;
a3=0;
a4=0;
a5=0;
%%substituting the values of alpha
alpha1=-90;
alpha2=90;
alpha3=0;
alpha4=90;
alpha5=0;
%%substituting the values of theta 
theta5=90;

%%The general form of the matrices are obtained by multiplying the
%%following 

%%first A matrix
Rz_theta1=[cosd(theta1) -sind(theta1) 0 0;sind(theta1) cosd(theta1) 0 0;0 0 1 0;0 0 0 1];
Rx_alpha1=[1 0 0 0;0 cosd(alpha1) -sind(alpha1) 0;0 sind(alpha1) cosd(alpha1) 0;0 0 0 1];
Tz_d1=[1 0 0 0;0 1 0 0;0 0 1 (0);0 0 0 1];
Tx_a1=[1 0 0 l1;0 1 0 0;0 0 1 0;0 0 0 1];

%%second A matrix
Rz_theta2=[cosd(theta2+90) -sind(theta2+90) 0 0;sind(theta2+90) cosd(theta2+90) 0 0;0 0 1 0;0 0 0 1];
Rx_alpha2=[1 0 0 0;0 cosd(alpha2) -sind(alpha2) 0;0 sind(alpha2) cosd(alpha2) 0;0 0 0 1];
Tz_d2=[1 0 0 0;0 1 0 0;0 0 1 (0);0 0 0 1];
Tx_a2=[1 0 0 a2;0 1 0 0;0 0 1 0;0 0 0 1];

%%third A matrix
Rz_theta3=[cosd(0) -sind(0) 0 0;sind(0) cosd(0) 0 0;0 0 1 0;0 0 0 1];
Rx_alpha3=[1 0 0 0;0 cosd(alpha3) -sind(alpha3) 0;0 sind(alpha3) cosd(alpha3) 0;0 0 0 1];
Tz_d3=[1 0 0 0;0 1 0 0;0 0 1 (l2);0 0 0 1];
Tx_a3=[1 0 0 a3;0 1 0 0;0 0 1 0;0 0 0 1];

%%fourth A matrix
Rz_theta4=[cosd(theta3+90) -sind(theta3+90) 0 0;sind(theta3+90) cosd(theta3+90) 0 0;0 0 1 0;0 0 0 1];
Rx_alpha4=[1 0 0 0;0 cosd(alpha4) -sind(alpha4) 0;0 sind(alpha4) cosd(alpha4) 0;0 0 0 1];
Tz_d4=[1 0 0 0;0 1 0 0;0 0 1 (l3);0 0 0 1];
Tx_a4=[1 0 0 a4;0 1 0 0;0 0 1 0;0 0 0 1];

%%fifth A matrix
Rz_theta5=[cosd(theta5) -sind(theta5) 0 0;sind(theta5) cosd(theta5) 0 0;0 0 1 0;0 0 0 1];
Rx_alpha5=[1 0 0 0;0 cosd(alpha5) -sind(alpha5) 0;0 sind(alpha5) cosd(alpha5) 0;0 0 0 1];
Tz_d5=[1 0 0 0;0 1 0 0;0 0 1 (l4);0 0 0 1];
Tx_a5=[1 0 0 a5;0 1 0 0;0 0 1 0;0 0 0 1];

%%Matrix multiplicaion
A_1=Rz_theta1*Tz_d1*Tx_a1*Rx_alpha1
A_2=Rz_theta2*Tz_d2*Tx_a2*Rx_alpha2
A_3=Rz_theta3*Tz_d3*Tx_a3*Rx_alpha3
A_4=Rz_theta4*Tz_d4*Tx_a4*Rx_alpha4
A_5=Rz_theta5*Tz_d5*Tx_a5*Rx_alpha5
%%Multipltying to get the T matrix we get

%%REVOLUTE MATRICES FOR JACOBIAN CALCULATION
%%JOINT 1
O_0_0=[0 0 0]'
H_1_0=A_1
R_1_0=H_1_0(1:3,1:3)
O_1_0=H_1_0(1:3,4)
%%JOINT 2
H_2_0=A_1*A_2*A_3
R_2_0=H_2_0(1:3,1:3)
O_2_0=H_2_0(1:3,4)
%%JOINT 3
H_3_0=A_1*A_2*A_3*A_4
R_3_0=H_3_0(1:3,1:3)
O_3_0=H_3_0(1:3,4)
%%JOINT 4
H_4_0=A_1*A_2*A_3*A_4*A_5
R_4_0=H_4_0(1:3,1:3)
O_4_0=H_4_0(1:3,4)

z0=eye(3)*[0 0 1]'
z1=R_1_0*[0 0 1]'
z2=R_2_0*[0 0 1]'
z3=R_3_0*[0 0 1]'

%%taking cross products of the vectors and calculating the Jacobian Matrix
q_dot=[3,4,5,0.5]'%given in the question
Jacobian=[cross(z0,O_4_0-O_0_0) cross(z1,O_4_0-O_1_0) cross(z2,O_4_0-O_2_0) z3;z0 z1 z2 [0 0 0]']
velocity_vectors=Jacobian*q_dot