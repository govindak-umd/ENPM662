%MATLAB CODE ASSIGNMENT 4 ENPM662
%ANSWER 1 (b)
clc
clear%%clearing all previous outputs and stored variables
syms t d %%declaring the symbols 
%%stating the values of the variables aready available or calculated
p_0=[t ;(2*(t^2));(3*(t^3)+1)]%%position of the particle in frame Zero
R0_1=[sin((pi*t)/4) cos((pi*t)/4) 0;-cos((pi*t)/4) sin((pi*t)/4) 0;0 0 1]%%Rotation matrix around the z axis as calculated in part (i)
p_1=[t*sin((pi*t)/4)-(cos((pi*t)/4)*(2*(t^2)+d));(t*cos((pi*t)/4)+(sin((pi*t)/4)*(2*(t^2)+d)));3*(t^3)+1]%%posiiton of the particle in frame 1 as calculated in part(i)
p_1_diff=diff(p_1)
%%We have the equation p_0=R0_1*p_1
%%Differentiating both the sides we get : 
%% p_0_diff = (R0_1*p_1_diff + R0_1_diff*p_1) //This is by chain rule of differentiation 
%% p_0_diff - (R0_1_diff*p_1) = (R0_1*p_1_diff)
%%Calculating the known components
p_0_diff=diff(p_0)
R0_1_diff=diff(R0_1)
R0_1_diff*p_1
%%Now to remove the R0_1 component on R.H.S we multiply it's inverse on
%%both the sides
%%Hence, (R0_1_inv)*(p_0_diff - (R0_1_diff*p_1) = R0_1_inv*(R0_1*p_1_diff)
R0_1_inv=inv(R0_1);%% calculating the inverse of R0_1
%% Hence calculating the final velocity value
velocity=R0_1_inv*(p_0_diff-(R0_1_diff*p_1))