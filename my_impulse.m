function [y,n] = my_impulse(n0,n1,n2);
n=n1:n2;
y=(n-n0)==0;