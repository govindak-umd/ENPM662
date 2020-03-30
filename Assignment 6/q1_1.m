%%HW 6
%%Q1 
%%a subsection
clc 
clear all
Jw = [1 0 0 0;0 2 3 0;1 0 0 5]
t1 = [2 4 6 5]'
t2 = [2 5 6 5]'
%%testing for the first torque value
r1=rank(Jw)
r2=rank(cat(2,Jw',t1))
r1==r2 %%indicating the equality between r1 and r2
%%testing for the first torque value
r3=rank(Jw)
r4=rank(cat(2,Jw',t2))
r3==r4 %%indicating the equality between r3 and r4

%%bsubsection
F1=(inv(Jw*Jw')*Jw)*t1
F2=(inv(Jw*Jw')*Jw)*t2
%%getting back the values of tau
newt1 =Jw'*F1 %%tau1
newt2 =Jw'*F2 %%tau2