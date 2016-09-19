#broadside array has del=0 while endfire has del=-1. Botht are uniform arrays.
#the equation below is a general equation for both types.
clear all
clf
format long


n=20;
lmda=1;
d=lmda./4;
B=2.*pi./lmda;

ang=@(x,del) B.*d.*(cos(x)-del);

travellingWave=@(x,del) abs(sin(x)./n.*sin(n.*ang(x,del)./2)./(sin(ang(x,del)./2)));


travellingWave=@(x) travellingWave(x,1);

hold off
x=0:0.011:2*pi;
polar (x,travellingWave(x,1),"k");

#x=1.5:0.001:1.65;
#plot (x,broadside(x)-n.*0.7071067812)


print  -dpdf  emtAntennasAndRadiationtravellingWave.pdf


travellingWavekkk=rot90([travellingWave(x);x.*180./pi],-1);

kkk=fopen("figAntennatravellingWaveHPBW.txt","w");
fdisp(kkk,[travellingWavekkk])
fclose(kkk);

#hold off

#x=0:0.011:18;
#polar (x,uniformArray(x,-1));
#print  -dpdf  emtAntennasAndRadiationendfireArray.pdf
