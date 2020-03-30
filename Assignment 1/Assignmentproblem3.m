%%verification of the answer obtained for question 3
clc
clear all%clearing all the previous outputs and stored variables
%%first Homogeneous matrix
h0_1=[0 -1 0 0;-1 0 0 0;0 0 -1 4;0 0 0 1]
%%second homogeneous matrix
h0_2=[0 0 1 0;0 -1 0 3;1 0 0 0;0 0 0 1]
%%third homogeneous matrix
h1_2=[0 1 0 -3;0 0 -1 0;-1 0 0 4;0 0 0 1]
fprintf('now multiplying the matrices on the RHS: ');
rhs=h0_1*h1_2%the product of the multiplication on the R.H.S
fprintf('now multiplying the matrices on the LHS: ');
lhs=h0_2%the product of the multiplication on the L.H.S
fprintf('the boolean representing the equality can be seen below ');
lhs==rhs%Verifying Equality


