#broadside array has del=0 while endfire has del=-1. Botht are uniform arrays.
#the equation below is a general equation for both types.
clear all
clf
format long


n=20;
lmda=1;
d=lmda./2;
B=2.*pi./lmda;

function y=f(x)
y=30*(cos(pi./2.*cos(x))).^2./sin(x);
endfunction

[v, ier, nfun, err] = quad ("f", 0, pi)

x=0.1:0.1:0.9
f(pi*x)

sum=0;
for entry=x;
sum=sum+f(entry*pi);
end;

sum.*0.1.*pi

#plot (x,f(x*pi));