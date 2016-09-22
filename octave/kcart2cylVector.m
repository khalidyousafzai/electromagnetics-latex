function[result]=kcart2cylVector(x,y,z,phi)
result=[x*cos(phi)+y*sin(phi)   -x*sin(phi)+y*cos(phi)   z]
endfunction


