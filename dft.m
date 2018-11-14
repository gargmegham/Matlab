function [y] = dft(x,N);
n=[0:1:N-1];
k=[0:1:N-1];
wn=exp(-j*2*pi/N);
t=n'*k;
wnt=wn.^t;
y=x*wnt;
end