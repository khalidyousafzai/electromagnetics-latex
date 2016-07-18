clear all
clf
format long

z=0.5+j;
tau=(z-1)/(z+1);
zin=(1+tau*e^(-0.3*4*pi*j))/(1-tau*e^(-0.3*4*pi*j))

Z=zin*50

