#broadside array has del=0 while endfire has del=-1. Botht are uniform arrays.
#the equation below is a general equation for both types.
clear all
clf
format long


n=20;
lmda=1;
d=lmda./2;
B=2.*pi./lmda;

ang=@(x,del) B.*d.*(cos(x)+del);

uniformArray=@(x,del)  sin(n.*ang(x,del)./2)./(n.*sin(ang(x,del)./2));

#solves the Half Power Band Width. The zerow cross can be read from the table provided
broadsideHPBW=@(x) uniformArray(x,0)-0.707;

#plots the polar plot of broadside array

#hold off
#x=0:0.011:2*pi;
#polar (x,uniformArray(x,0),"k");

#print  -dpdf  emtAntennasAndRadiationBroadsideArray.pdf

# prints table of broadside array (angle in degrees, normalized electric field)

kread=fopen("figAntennaAndRadiationBroadside.dat","w");

for x=[0.01:0.01:2*pi+0.01];
fprintf(kread,"%i %s %i",x.*180./pi,"    ",uniformArray(x,0)); fprintf(kread,"\n")
endfor

fclose(kread);

# prints table of endfire array (angle in degrees, normalized electric field)

kread=fopen("figAntennaAndRadiationEndfire.dat","w");

for x=[0.01:0.013:2*pi+0.01];
fprintf(kread,"%i %s %i",x.*180./pi,"    ",uniformArray(x,-1)); fprintf(kread,"\n")
endfor

fclose(kread);

##################33333

#finding zero cross
kread=fopen("figAntennaAndRadiationBroadsideZerocross.dat","w");

for x=[0.01:0.01:2*pi+0.01];
fprintf(kread,"%i %s %i",x.*180./pi,"    ",uniformArray(x,0)-0.7071067812); fprintf(kread,"\n")
endfor

fclose(kread);

#
kread=fopen("figAntennaAndRadiationEndfireZerocross.dat","w");

for x=[0.01:0.01:2*pi+0.01];
fprintf(kread,"%i %s %i",x.*180./pi,"    ",uniformArray(x,-1)-0.7071067812); fprintf(kread,"\n")
endfor

fclose(kread);