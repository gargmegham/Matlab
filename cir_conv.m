function [y]=cir_conv(x,h) 
Nx = length(x); 
Nh = length(h); 
N = max(Nx,Nh) 
x = [x zeros(1,N-Nx)] 
h = [h zeros(1,N-Nh)] 
for i = 1:N     
    H(:,i)=x'      
    k(1)=x(N)     
    for j=1:N-1         
        k(j+1)=x(j)     
    end
    x=k 
end
hconv=H*h' 
y=hconv'