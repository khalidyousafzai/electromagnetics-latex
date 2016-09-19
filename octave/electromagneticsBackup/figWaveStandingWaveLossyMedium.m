clear;
clf;

gamma=1+10*j;

z=0:-0.001:-1.4;

plot (z,abs(sinh(gamma.*z)));

khorcat=rot90([abs(sinh(gamma.*z));z],-1);

kkk=fopen("figWaveOctaveStandingWaveLossyMedium.txt","w");
fdisp(kkk,khorcat)
fclose(kkk);