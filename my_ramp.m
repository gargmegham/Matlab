function [x,n] = my_ramp(n0,n1,n2)
n=n1:n2;
x=(n-n0).*(n-n0>=0);