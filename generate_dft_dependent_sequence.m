x=[1 1 2 2 3 3 4 4];
N=8;
z=dft(x,N);
subplot(2,1,1);
stem(abs(x));
subplot(2,1,2);
stem(angle(z));