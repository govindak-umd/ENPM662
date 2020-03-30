%Answer to Question 4
clc 
clear all%clearing all previous outputs and variables

syms a d cos(theta) sin(theta) cos(alpha) sin(alpha) %Defining all the variables through syms
r_z_theta=[cos(theta) -sin(theta) 0 0;sin(theta) cos(theta) 0 0;0 0 1 0;0 0 0 1];%defining rotation through theta around the z axis
trform_z_d=[1 0 0 0;0 1 0 0;0 0 1 d;0 0 0 1];%translation by d along the z axis
trform_x_a=[1 0 0 a;0 1 0 0;0 0 1 0;0 0 0 1];%translation by a along the x axis
r_x_alpha=[1 0 0 0;0 cos(alpha) -sin(alpha) 0;0 sin(alpha) cos(alpha) 0;0 0 0 1];%defining rotation through alpha around the x axis

H=r_z_theta*trform_z_d*trform_x_a*r_x_alpha %the combination of rotation and transformation matrix as 
%described in the problem

%below given are all the other combinations of the Homogeneous matrices
H_1= r_z_theta*trform_z_d*trform_x_a*r_x_alpha
H_2= r_z_theta*trform_z_d*r_x_alpha*trform_x_a
H_3= r_z_theta*trform_x_a*trform_z_d*r_x_alpha
H_4= r_z_theta*trform_x_a*r_x_alpha*trform_z_d
H_5= r_z_theta*r_x_alpha*trform_z_d*trform_x_a
H_6=r_z_theta*r_x_alpha*trform_x_a*trform_z_d
H_7= trform_z_d*r_z_theta*trform_x_a*r_x_alpha
H_8= trform_z_d*r_z_theta*r_x_alpha*trform_x_a
H_9= trform_z_d*trform_x_a*r_z_theta*r_x_alpha
H_10= trform_z_d*trform_x_a*r_x_alpha*r_z_theta
H_11= trform_z_d*r_x_alpha*r_z_theta*trform_z_d
H_12= trform_z_d*r_x_alpha*trform_z_d*r_z_theta
H_13=trform_x_a*r_z_theta*trform_z_d*r_x_alpha
H_14=trform_x_a*r_z_theta*r_x_alpha*trform_z_d
H_15=trform_x_a*trform_z_d*r_z_theta*r_x_alpha
H_16=trform_x_a*trform_z_d*r_x_alpha*r_z_theta
H_17=trform_x_a*r_x_alpha*r_z_theta*trform_z_d
H_18=trform_x_a*r_x_alpha*trform_z_d*r_z_theta
H_19=r_x_alpha*r_z_theta*trform_z_d*trform_x_a
H_20=r_x_alpha*r_z_theta*trform_x_a*trform_z_d
H_21=r_x_alpha*trform_z_d*r_z_theta*trform_x_a
H_22=r_x_alpha*trform_z_d*trform_x_a*r_z_theta
H_23=r_x_alpha*trform_x_a*r_z_theta*trform_z_d
H_24=r_x_alpha*trform_x_a*trform_z_d*r_z_theta

% checking the equality between H and various other combinations
fprintf('Comparing H and H_1: r_z_theta*trform_z_d*trform_x_a*r_x_alpha')
isequal(H,H_1)
fprintf('Comparing H and H_2=r_z_theta*trform_z_d*r_x_alpha*trform_x_a')
isequal(H,H_2)
fprintf('Comparing H and H_3= r_z_theta*trform_x_a*trform_z_d*r_x_alpha')
isequal(H,H_3)
fprintf('Comparing H and H_4= r_z_theta*trform_x_a*r_x_alpha*trform_z_d')
isequal(H,H_4)
fprintf('Comparing H and H_5= r_z_theta*r_x_alpha*trform_z_d*trform_x_a')
isequal(H,H_5)
fprintf('Comparing H and H_6=r_z_theta*r_x_alpha*trform_x_a*trform_z_d')
isequal(H,H_6)
fprintf('Comparing H and H_7= trform_z_d*r_z_theta*trform_x_a*r_x_alpha')
isequal(H,H_7)
fprintf('Comparing H and H_8= trform_z_d*r_z_theta*r_x_alpha*trform_x_a')
isequal(H,H_8)
fprintf('Comparing H and H_9= trform_z_d*trform_x_a*r_z_theta*r_x_alpha')
isequal(H,H_9)
fprintf('Comparing H and H_10= trform_z_d*trform_x_a*r_x_alpha*r_z_theta')
isequal(H,H_10)
fprintf('Comparing H and H_11= trform_z_d*r_x_alpha*r_z_theta*trform_z_d')
isequal(H,H_11)
fprintf('Comparing H and H_12= trform_z_d*r_x_alpha*trform_z_d*r_z_theta')
isequal(H,H_12)
fprintf('Comparing H and H_13=trform_x_a*r_z_theta*trform_z_d*r_x_alpha')
isequal(H,H_13)
fprintf('Comparing H and H_14=trform_x_a*r_z_theta*r_x_alpha*trform_z_d')
isequal(H,H_14)
fprintf('Comparing H and H_15=trform_x_a*trform_z_d*r_z_theta*r_x_alpha')
isequal(H,H_15)
fprintf('Comparing H and H_16=trform_x_a*trform_z_d*r_x_alpha*r_z_theta')
isequal(H,H_16)
fprintf('Comparing H and H_17=trform_x_a*r_x_alpha*r_z_theta*trform_z_d')
isequal(H,H_17)
fprintf('Comparing H and H_18=trform_x_a*r_x_alpha*trform_z_d*r_z_theta')
isequal(H,H_18)
fprintf('Comparing H and H_19=r_x_alpha*r_z_theta*trform_z_d*trform_x_a')
isequal(H,H_19)
fprintf('Comparing H and H_20=r_x_alpha*r_z_theta*trform_x_a*trform_z_d')
isequal(H,H_20)
fprintf('Comparing H and H_21=r_x_alpha*trform_z_d*r_z_theta*trform_x_a')
isequal(H,H_21)
fprintf('Comparing H and H_22=r_x_alpha*trform_z_d*trform_x_a*r_z_theta')
isequal(H,H_22)
fprintf('Comparing H and H_23=r_x_alpha*trform_x_a*r_z_theta*trform_z_d')
isequal(H,H_23)
fprintf('Comparing H and H_24=r_x_alpha*trform_x_a*trform_z_d*r_z_theta')
isequal(H,H_24)






