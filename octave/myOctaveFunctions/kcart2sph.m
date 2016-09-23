function [r,theta,phi]=kcart2sph(x,y,z)
r=sqrt(x^2+y^2+z^2);
theta=acos(z/r);
[phi,rho]=cart2pol(x,y);
endfunction

