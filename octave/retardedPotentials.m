#retarded potentials

k=2.*10.^(-6)./(4.*pi.*8.854.*10.^(-12))
a=1.5
b=-1.5
n=2998.5

c=2.9979.*10.^8
w=pi.*10.^8

Ra=n-a
Rb=n-b
t=0
Ta=t-Ra./c
Tb=t-Rb./c

V=-k.*cos(w.*Ta)./Ra+k.*cos(w.*Tb)./Rb
