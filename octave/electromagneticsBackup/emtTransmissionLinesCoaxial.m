clear all
clf
format long

f=480*10^6;

eR=2.25;
muR=1;
sigmaC=3.82*10^7;
sigma=10^(-5);

a=1*10^(-3);
b=3.49*10^(-3);

eZ=8.854*10^(-12);
muZ=4*pi*10^(-7);

e=eZ*eR;
mu=muZ*muR;
w=2*pi*f;

delta=1/sqrt(pi*f*mu*sigmaC)

########
C=2*pi*e/(log(b/a))
G=2*pi*sigma/log(b/2)
L=mu/(2*pi)*(log(b/a)+sigma/2*(1/a+1/b))
R=1/(2*pi*delta*sigmaC)*(1/a+1/b)

La=mu/(2*pi)*log(b/a)
Lb=mu/(2*pi)*(sigma/2*(1/a+1/b))

gamma=sqrt((G+j*w*C)*(R+j*w*L))
Z=sqrt((R+j*w*L)/(G+j*w*C))

abs(Z)
arg(Z)*180/pi
