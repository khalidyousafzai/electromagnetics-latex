diffBessel=@(x) 0.5.*(besselj(0,x)-besselj(2,x));

#=========

kread=fopen("figWaveguideOctaveBesselZeroFunction.dat","w");

for x=[0:0.1:10];
fprintf(kread,"%i %s %i",x,"    ",besselj(0,x)); fprintf(kread,"\n")
endfor

fclose(kread)
#=======================

kread=fopen("figWaveguideOctaveBesselOneFunction.dat","w");

for x=[0:0.1:10];
fprintf(kread,"%i %s %i",x,"    ",besselj(1,x)); fprintf(kread,"\n")
endfor

fclose(kread)
#=======================

#=======================

kread=fopen("figWaveguideOctaveBesselOneDifferentialFunction.dat","w");

for x=[0:0.1:10];
fprintf(kread,"%i %s %i",x,"    ",diffBessel(x)); fprintf(kread,"\n")
endfor

fclose(kread)
#=======================
