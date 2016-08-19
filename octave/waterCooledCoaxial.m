# 
#a=0.005
#b=0.007
#c=0.019
#d=0.020
#I=2000

a=0.025
b=0.028
c=0.035
d=0.037
I=10000

u=4*pi*10^(-7)
J=I./(pi.*(b.^2-a.^2))

fluxINNER=u.*J.*((b.^2-a.^2)./2-a.^2.*log(b./a))./2

fluxOUTER=u.*I./(2.*pi.*(d.^2-c.^2)).*(d.^2.*log(d/c)-(d.^2-c.^2)./2)
fluxBETWEEN=u.*I./(2.*pi).*log(c/b)
