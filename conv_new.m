function [y,n1] = conv_new(x,n,h,m);
n1= min(n)+min(m): max(n)+max(m);
y=conv(x,h);
end