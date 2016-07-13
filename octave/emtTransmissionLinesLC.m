clear all
clf
format long

w=5*10^8;

R=0.15;
L=0.25*10^(-6);
G=8*10^(-6);
C=80*10^(-12);


Z=R+j*w*L;
Y=G+j*w*C;

gamma=sqrt(Y*Z);
eta=sqrt(Z/Y);


gamma
eta

lambda=2*pi/imag(gamma)
v=w/imag(gamma)

ploarZ= abs(eta), arg(eta)*180/pi
