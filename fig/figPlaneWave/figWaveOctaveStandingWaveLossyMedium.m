clear;
clf;

gamma=1+5*pi*j;

z=0:-0.005:-1.4;

plot (z,abs(2.*sinh(gamma.*z)));

khorcat=rot90([abs(2.*sinh(gamma.*z));z],-1);

kkk=fopen("figWaveOctaveStandingWaveLossyMedium.txt","w");
fdisp(kkk,khorcat)
fclose(kkk);

khorcat