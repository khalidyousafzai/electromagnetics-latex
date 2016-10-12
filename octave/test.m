clear all
format long



function y=f(yy)
rhoL=pi;
R=[0,1-yy,-1];
absR=sqrt(dot(R,R))
y=rhoL.*R./(4.*pi.*absR^3)
endfunction

a=-1.*quad("f",-1,0);
b=+1.*quad("f",0,1);

function y=g(yy)
rhoL=-1.*pi;
R=[0,1-yy,1];
absR=sqrt(dot(R,R));
y=rhoL.*R./(4.*pi.*absR^3);
endfunction

c=-1.*quad("g",-1,0);
d=+1.*quad("g",0,1);
