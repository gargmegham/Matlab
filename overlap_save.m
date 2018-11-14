clear all
clc 
x=input('Enter first sequence     '); 
h=input('Enter second sequence    '); 
L=length(h); 
N=2^L; 
M=N-L+1; 
x1=[zeros(1,L-1) x]; 
N1=ceil(length(x1)/M); 
n=N*N1-(N1-1)*(L-1); 
x1=[x1 zeros(1,n-length(x))]; 
h1= [h zeros(1,N-L)]; 
for k=0:N1-1     
    xp=x1(M*k+1:M*k+M+L-1);    
    y(k+1,:)=cir_conv(xp,h1);
end
for p=1:N1          
    h1=y(p,L:N);         
    H(p,:)=h1; 
end
z=H'; 
Z=(z(:))'; 
Z(1:length(x)+length(h)-1);
stem(Z);