#elliptic function
f=@(phi) sin(phi)./(3-2.*sin(phi)).^(3./2);
HyElliptic=quadcc (f, 0, 2*pi)

M=10;
g=@(m) sin(2.*m.*pi./M)./(3-2.*sin(2.*m.*pi./M)).^(3./2);
m=0:M-1;
g(m);
sum( g(m));
HyNumerical=sum( g(m)).*(2.*pi./M)

#Hz component
#elliptic function
k=@(phi) (1-sin(phi))./(3-2.*sin(phi)).^(3./2);
HzElliptic=quadcc (k, 0, 2*pi)

M=10;
h=@(m) (1-sin(2.*m.*pi./M))./(3-2.*sin(2.*m.*pi./M)).^(3./2);
m=0:M-1;
h(m);
sum( h(m));
HzNumerical=sum( h(m)).*(2.*pi./M)
