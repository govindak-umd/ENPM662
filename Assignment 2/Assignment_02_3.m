%MATLAB CODE ASSIGNMENT 2 ENPM662
%ANSWER 3

%clearing all previous outputs and variables
clc
clear all
%writing the code for A matrices
%%declaring the variables and symbols for the matrix multiplication

%initializing the symbols for the theta column
syms theta1 theta2 theta3 theta4 theta5 theta6

%initializing the symbols for the d column
l1=13;
l2=0;
l3=-2;
l4=8;
l5=0;
l6=3;

alpha1=-90;
alpha2=0;
alpha3=90;
alpha4=-90;
alpha5 =90;
alpha6=0;


a1=0;
a2=8;
a3=0;
a4=0;
a5=0;
a6=0;


%%The general form of the matrices are obtained by multiplying the
%%following

%%first A matrix
Rz_theta1=[cosd(theta1) -sind(theta1) 0 0;sind(theta1) cosd(theta1) 0 0;0 0 1 0;0 0 0 1];
Rx_alpha1=[1 0 0 0;0 cosd(alpha1) -sind(alpha1) 0;0 sind(alpha1) cosd(alpha1) 0;0 0 0 1];
Tz_d1=[1 0 0 0;0 1 0 0;0 0 1 l2;0 0 0 1];
Tx_a1=[1 0 0 a2;0 1 0 0;0 0 1 0;0 0 0 1];
%%second A matrix
Rz_theta2=[cosd(theta2) -sind(theta2) 0 0;sind(theta2) cosd(theta2) 0 0;0 0 1 0;0 0 0 1];
Rx_alpha2=[1 0 0 0;0 cosd(alpha2) -sind(alpha2) 0;0 sind(alpha2) cosd(alpha2) 0;0 0 0 1];
Tz_d2=[1 0 0 0;0 1 0 0;0 0 1 l3;0 0 0 1];
Tx_a2=[1 0 0 a3;0 1 0 0;0 0 1 0;0 0 0 1];
%%third A matrix
Rz_theta3=[cosd(theta3) -sind(theta3) 0 0;sind(theta3) cosd(theta3) 0 0;0 0 1 0;0 0 0 1];
Rx_alpha3=[1 0 0 0;0 cosd(alpha3) -sind(alpha3) 0;0 sind(alpha3) cosd(alpha3) 0;0 0 0 1];
Tz_d3=[1 0 0 0;0 1 0 0;0 0 1 l4;0 0 0 1];
Tx_a3=[1 0 0 a4;0 1 0 0;0 0 1 0;0 0 0 1];
%%fourth A matrix
Rz_theta4=[cosd(theta4) -sind(theta4) 0 0;sind(theta4) cosd(theta4) 0 0;0 0 1 0;0 0 0 1];
Rx_alpha4=[1 0 0 0;0 cosd(alpha4) -sind(alpha4) 0;0 sind(alpha4) cosd(alpha4) 0;0 0 0 1];
Tz_d4=[1 0 0 0;0 1 0 0;0 0 1 l4;0 0 0 1];
Tx_a4=[1 0 0 a4;0 1 0 0;0 0 1 0;0 0 0 1];
%%fifth A matrix
Rz_theta5=[cosd(theta5) -sind(theta5) 0 0;sind(theta5) cosd(theta5) 0 0;0 0 1 0;0 0 0 1];
Rx_alpha5=[1 0 0 0;0 cosd(alpha5) -sind(alpha5) 0;0 sind(alpha5) cosd(alpha5) 0;0 0 0 1];
Tz_d5=[1 0 0 0;0 1 0 0;0 0 1 l5;0 0 0 1];
Tx_a5=[1 0 0 a5;0 1 0 0;0 0 1 0;0 0 0 1];
%%sixth A matrix
Rz_theta6=[cosd(theta6) -sind(theta6) 0 0;sind(theta6) cosd(theta6) 0 0;0 0 1 0;0 0 0 1];
Rx_alpha6=[1 0 0 0;0 cosd(alpha6) -sind(alpha6) 0;0 sind(alpha6) cosd(alpha6) 0;0 0 0 1];
Tz_d6=[1 0 0 0;0 1 0 0;0 0 1 l6;0 0 0 1];
Tx_a6=[1 0 0 a6;0 1 0 0;0 0 1 0;0 0 0 1];

%%Matrix multiplicaion
A_1=Rz_theta1*Tz_d1*Tx_a1*Rx_alpha1
A_2=Rz_theta2*Tz_d2*Tx_a2*Rx_alpha2
A_3=Rz_theta3*Tz_d3*Tx_a3*Rx_alpha3
A_4=Rz_theta4*Tz_d4*Tx_a4*Rx_alpha4
A_5=Rz_theta5*Tz_d5*Tx_a5*Rx_alpha5
A_6=Rz_theta6*Tz_d6*Tx_a6*Rx_alpha6



