clear all
clc 
x=input('Enter first sequence');
h=input('Enter second sequence');
L=length(h); 
N=2^L; 
M=N-L+1; 
x1=[x zeros(1,L-1)];
N1=ceil(length(x1)/M);
x2=[x1 zeros(1,M*N1-length(x))]; 
h1= [h zeros(1,N-L)]; 
for k=0:N1-1     
    xp=x2(M*k+1:M*k+M);     
    xk=[xp zeros(1,L-1)];    
    y(k+1,:)=cir_conv(xk,h1);
end
for p=1:N1-1   
    for q=1:L-1   
        h1=[y(p,M+q)+y(p+1,q)];        
        H(:,q)=h1;   
    end
    P=[H y(p+1,L:M)];
    Q(p,:)=P;
end   
Y=[y(1,1:M);Q];
z=Y';
Z=(z(:))';
Z(1:length(x)+length(h)-1);
stem(Z);