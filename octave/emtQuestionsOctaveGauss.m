#emtQuestionsOctaveGauss

#==============================
disp("========================================")

clear all
format long

k=1/(4*pi*8.854187818*10^(-12));

N=[0 -3 2];
O=[0 0 0];

NO=N-O;

ansA=12.*10.^(-9).*NO/(4.*pi.*(dot(NO,NO)).^(3./2))
#==============================
disp("========================================")

clear all
format long

function y=f(z)
rho=5;
y=2.*2.*pi.*rho.*rho./(4.*pi.*(rho.^2+z.^2).^(3./2));
endfunction

aa=quad("f",0,Inf)
#==============================
disp("========================================")

clear all
format long

rA=5;
rB=9;
rC=14;

rhoA=20;
rhoB=-8;

qA=4.*pi.*rA.^2.*rhoA
qB=4.*pi.*rB.^2.*rhoB

q=qA+qB

rhoC=-1.*q/(4.*pi.*rC.^2)
