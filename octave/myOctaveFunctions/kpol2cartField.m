function result=kpol2cartField(Erho,Ephi,Ez,phi)
Ex=Erho*cos(phi)-Ephi*sin(phi);
Ey=Erho*sin(phi)+Ephi*cos(phi);
result=[Ex Ey Ez];
endfunction
