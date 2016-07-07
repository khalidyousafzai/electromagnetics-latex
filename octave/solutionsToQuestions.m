#plane waves of emt

clear all
clf

muR=4000
epR=1
sigma=1.03.*10^7
f=1591

mu=4.*pi.*10.^(-7).*muR;
ep=8.854.*10.^(-12).*epR;



gamma=@(f) sqrt(j.*2.*pi.*f.*mu.*(sigma+j.*2.*pi.*f.*ep));
neta=@(f) sqrt((2.*pi.*f.*mu.*j)./(sigma+j.*2.*pi.*f.*ep));
delta=@(f) 1./sqrt(pi.*f.*mu.*sigma);

gamma(f)
neta(f)
delta(f)

