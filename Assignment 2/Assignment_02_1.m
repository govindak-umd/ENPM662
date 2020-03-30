%MATLAB CODE ASSIGNMENT 2 ENPM662
%ANSWER 1
clc 
clear all
%writing the code for A matrices
%%declaring the variables and symbols for the matrix multiplication
syms theta1 theta2 theta3 l1 l2 l3 d4 l4
d1=0;
d2=0;
d3=0;
alpha1=0;
alpha2=0;
alpha3=-90;
alpha4=0;
theta4=-90;
%%The general form of the matrices are obtained by multiplying the
%%following 

%%first A matrix
Rz_theta1=[cosd(theta1) -sind(theta1) 0 0;sind(theta1) cosd(theta1) 0 0;0 0 1 0;0 0 0 1];
Rx_alpha1=[1 0 0 0;0 cosd(alpha1) -sind(alpha1) 0;0 sind(alpha1) cosd(alpha1) 0;0 0 0 1];
Tz_d1=[1 0 0 0;0 1 0 0;0 0 1 d1;0 0 0 1];
Tx_a1=[1 0 0 l1;0 1 0 0;0 0 1 0;0 0 0 1];
%%second A matrix
Rz_theta2=[cosd(theta2) -sind(theta2) 0 0;sind(theta2) cosd(theta2) 0 0;0 0 1 0;0 0 0 1];
Rx_alpha2=[1 0 0 0;0 cosd(alpha2) -sind(alpha2) 0;0 sind(alpha2) cosd(alpha2) 0;0 0 0 1];
Tz_d2=[1 0 0 0;0 1 0 0;0 0 1 d2;0 0 0 1];
Tx_a2=[1 0 0 l2;0 1 0 0;0 0 1 0;0 0 0 1];
%%third A matrix
Rz_theta3=[cosd(theta3) -sind(theta3) 0 0;sind(theta3) cosd(theta3) 0 0;0 0 1 0;0 0 0 1];
Rx_alpha3=[1 0 0 0;0 cosd(alpha3) -sind(alpha3) 0;0 sind(alpha3) cosd(alpha3) 0;0 0 0 1];
Tz_d3=[1 0 0 0;0 1 0 0;0 0 1 d3;0 0 0 1];
Tx_a3=[1 0 0 l3;0 1 0 0;0 0 1 0;0 0 0 1];
%%fourth A matrix
Rz_theta4=[cosd(theta4) -sind(theta4) 0 0;sind(theta4) cosd(theta4) 0 0;0 0 1 0;0 0 0 1];
Rx_alpha4=[1 0 0 0;0 cosd(alpha4) -sind(alpha4) 0;0 sind(alpha4) cosd(alpha4) 0;0 0 0 1];
Tz_d4=[1 0 0 0;0 1 0 0;0 0 1 (d4+l4);0 0 0 1];
Tx_a4=[1 0 0 0;0 1 0 0;0 0 1 0;0 0 0 1];
%%Matrix multiplicaion
A_1=Rz_theta1*Tz_d1*Tx_a1*Rx_alpha1
A_2=Rz_theta2*Tz_d2*Tx_a2*Rx_alpha2
A_3=Rz_theta3*Tz_d3*Tx_a3*Rx_alpha3
A_4=Rz_theta4*Tz_d4*Tx_a4*Rx_alpha4
%%Multipltying to get the T matrix we get
T=A_1*A_2*A_3*A_4