%MATLAB CODE ASSIGNMENT 2 ENPM662
%ANSWER 2
clc 
clear all
%writing the code for A matrices
%%declaring the variables and symbols for the matrix multiplication
syms d1 d2 d3 l1 l2 l3

theta1 = -90;
theta2 = -90;
theta3 = 90;

a1=0;
a2=0;
a3=0;

alpha1=-90;
alpha2=-90;
alpha3=0;
%%The general form of the matrices are obtained by multiplying the
%%following 

%%first A matrix
Rz_theta1=[cosd(theta1) -sind(theta1) 0 0;sind(theta1) cosd(theta1) 0 0;0 0 1 0;0 0 0 1];
Rx_alpha1=[1 0 0 0;0 cosd(alpha1) -sind(alpha1) 0;0 sind(alpha1) cosd(alpha1) 0;0 0 0 1];
Tz_d1=[1 0 0 0;0 1 0 0;0 0 1 (l1+d1);0 0 0 1];
Tx_a1=[1 0 0 a1;0 1 0 0;0 0 1 0;0 0 0 1];
%%second A matrix
Rz_theta2=[cosd(theta2) -sind(theta2) 0 0;sind(theta2) cosd(theta2) 0 0;0 0 1 0;0 0 0 1];
Rx_alpha2=[1 0 0 0;0 cosd(alpha2) -sind(alpha2) 0;0 sind(alpha2) cosd(alpha2) 0;0 0 0 1];
Tz_d2=[1 0 0 0;0 1 0 0;0 0 1 (l2+d2);0 0 0 1];
Tx_a2=[1 0 0 a2;0 1 0 0;0 0 1 0;0 0 0 1];
%%third A matrix
Rz_theta3=[cosd(theta3) -sind(theta3) 0 0;sind(theta3) cosd(theta3) 0 0;0 0 1 0;0 0 0 1];
Rx_alpha3=[1 0 0 0;0 cosd(alpha3) -sind(alpha3) 0;0 sind(alpha3) cosd(alpha3) 0;0 0 0 1];
Tz_d3=[1 0 0 0;0 1 0 0;0 0 1 (l3+d3);0 0 0 1];
Tx_a3=[1 0 0 a3;0 1 0 0;0 0 1 0;0 0 0 1];
%%Matrix multiplicaion
A_1=Rz_theta1*Tz_d1*Tx_a1*Rx_alpha1
A_2=Rz_theta2*Tz_d2*Tx_a2*Rx_alpha2
A_3=Rz_theta3*Tz_d3*Tx_a3*Rx_alpha3
%%Multipltying to get the T matrix we get
T=A_1*A_2*A_3