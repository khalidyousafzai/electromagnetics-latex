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

##################################

#angular frequency, relative permittivity, permeability and conductivities

w=2*pi*10^9;
eRA=3;
eRB=6;
muRA=1;
muRB=1;
sigmaA=0;
sigmaB=0;

eO=10^(-9)/(36*pi);
muO=4*pi*10^(-7);

eA=eRA*eO;
eB=eRB*eO;
muA=muRA*muO;
muB=muRB*muO;



gammaA=sqrt(j*w*muA*(sigmaA+j*w*eA));
etaA=sqrt(j*w*muA/(sigmaA+j*w*eA));

gammaB=sqrt(j*w*muB*(sigmaB+j*w*eB));
etaB=sqrt(j*w*muB/(sigmaB+j*w*eB));

reflectionCoeff=(etaB-etaA)/(etaB+etaA);

gammaA
etaA
gammaB
etaB
reflectionCoeff

