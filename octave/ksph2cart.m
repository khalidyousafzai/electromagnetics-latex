function [result]=ksph2cart(r,theta,phi)
x=r*sin(theta)*cos(phi);
y=r*sin(theta)*sin(phi);
z=r*cos(theta);
result=[x y z];
endfunction

