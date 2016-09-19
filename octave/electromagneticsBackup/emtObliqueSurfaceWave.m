muA=4.*pi.*10.^(-7);
epA=8.854.*10.^(-12);

muB=4.*pi.*10.^(-7);
epB=1.*8.854.*10.^(-12);
#epB=78.*8.854.*10.^(-12);
#sB=0;
sB=5.8.*10.^(7);

#w=100.*10.^(6);
w=2.*pi.*10.^(9)

gmS=j.*w.*muB.*(sB+j.*w.*epB)
A=-w.^2.*muA.*epA
B=w.^2.*epA.^2./(sB+j.*w.*epB).^2

gammA=sqrt((A+B.*gmS)./(1+B))
kA=sqrt(-gammA.^2-w.^2.*muA.*epA)
kB=-1.*(sB+j.*w.*epB).*kA./(w.*epA)
kC=sqrt(-1.*gammA.^2+gmS)

atan(abs(kA./gammA)).*180./pi