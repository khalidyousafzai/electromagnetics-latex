#waterDielectricLoss from the excellent url        http://www1.lsbu.ac.uk/water/complex_dielectric.html
#the data below is at 25 degree centigrade
#the two data files produced are used by figWaveOctaveDielectricLoss.tex to generate pdf of the figure

clear
clf

es=78.4;
ew=5.85;
eh=3.65;
ei=2.4;

td=8.26*10^(-12);
tw=1.05*10^(-12);
th=0.135*10^(12);

#dielectric constant is e, loss factor is lf and loss tangent =lt
#
e=@(w) ei+(es-ew)./(1+w.^(2).*td.^2)+(ew-ei)./(1+w.^(2).*tw.^2);
lf=@(w) w.*td.*(es-ew)./(1+w.^2.*td.^2)+w.*tw.*(ew-ei)./(1+w.^2.*tw.^2);
lt=@(w) lf(w)./e(w);

hold on
axis ("nolabel","off")

for i=1:140
w(i)=10^(i/10);
endfor


semilogx(w,e(w))
semilogx(w,lf(w))


#print  -dpdf  waterDielectricLoss.pdf
#print  -deps  waterDielectricLoss.eps
#print  -dtikz  waterDielectricLoss.tikz

#concatenate the two matrices, rotate clockwise 90 degrees and then save as text file

khorcatEW=rot90([e(w);w],-1);
khorcatLFW=rot90([lf(w);w],-1);

kkk=fopen("figWaveOctaveWaterDielectricLossEW.txt","w");
fdisp(kkk,khorcatEW)
fclose(kkk);

kkk=fopen("figWaveOctaveWaterDielectricLossLFW.txt","w");
fdisp(kkk,khorcatLFW)
fclose(kkk);
