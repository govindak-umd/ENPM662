clc
clear all
r=rotx(30);%%assuming
p=[1 2 3]';%%assuming
q=[2 2 5]';%%assuming
% lhs=norm(r*p-r*q)
% rhs=norm(p-q)
% %%checking the equality
% rhs==lhs
(cross(p,q))
lhs=r*(cross(p,q))
rhs=cross((r*p),(r*q))