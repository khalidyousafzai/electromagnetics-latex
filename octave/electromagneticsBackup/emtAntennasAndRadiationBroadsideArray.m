#broadside array has del=0 while endfire has del=-1. Botht are uniform arrays.
#the equation below is a general equation for both types.
clear all
clf
format long


n=20;
lmda=1;
d=lmda./2;
B=2.*pi./lmda;

ang=@(x,del) B.*d.*(cos(x)-del);

uniformArray=@(x,del)  1./n.*sin(n.*ang(x,del)./2)./(sin(ang(x,del)./2));


broadsideHPBW=@(x) uniformArray(x,0)-0.707;

hold off
x=0:0.011:2*pi;
polar (x,uniformArray(x,0),"k");

#x=1.5:0.001:1.65;
#plot (x,broadside(x)-n.*0.7071067812)


print  -dpdf  emtAntennasAndRadiationBroadsideArray.pdf


broadsidekkk=rot90([broadsideHPBW(x);x],-1);

kkk=fopen("figAntennaBroadsideHPBW.txt","w");
fdisp(kkk,[broadsidekkk])
fclose(kkk);

#hold off

#x=0:0.011:18;
#polar (x,uniformArray(x,-1));
#print  -dpdf  emtAntennasAndRadiationendfireArray.pdf
