kread=fopen("k.dat","w");

for x=[2,3,4,5,6,7,8,9];
y=x^2-3*x+2;
fprintf(kread,"%i %s %i",x,"    ",y); fprintf(kread,"\n")
endfor

fclose(kread)
