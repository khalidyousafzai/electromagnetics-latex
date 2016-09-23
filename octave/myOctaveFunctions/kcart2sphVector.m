function[result]=kcart2sphVector(x,y,z,theta,phi)
result=[x*sin(theta)*cos(phi)+y*sin(theta)*sin(phi)+z*cos(theta)  x*cos(theta)*cos(phi)+y*cos(theta)*sin(phi)-z*sin(theta)  -x*sin(phi)+y*cos(phi)]
endfunction
