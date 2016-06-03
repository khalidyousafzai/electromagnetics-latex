#elliptic function
f=@(phi) sin(phi)./(3-2.*sin(phi)).^(3./2)
quadcc (f, 0, 2*pi)

M=10;
g=@(m) sin(2.*m.*pi./M)./(3-2.*sin(2.*m.*pi./M)).^(3./2)
m=0:M-1;
g(m)
sum( g(m))
sum( g(m)).*(2.*pi./M)

