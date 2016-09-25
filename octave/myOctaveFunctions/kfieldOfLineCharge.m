function result=kfieldOfLineCharge(rhoL,zU,zL,x,y,z)
k=1/(4*pi*8.854187818*10^(-12));
rho=sqrt(x.^2+y.^2);
Erho=k.*rhoL./rho.*((zU-z)./sqrt(rho.^2+(zU-z).^2)-(zL-z)./sqrt(rho.^2+(zL-z).^2));
Ez=k.*rhoL.*(1./sqrt(rho.^2+(zU-z).^2)-1./sqrt(rho.^2+(zL-z).^2));
result=[Erho Ez];
endfunction
