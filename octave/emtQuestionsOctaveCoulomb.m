#emtQuestionsOctaveCoulomb

#==============================
disp("========================================")

clear all
format long

x=0.1;

A=[0 0 0];
B=[x 0 0];
C=[x*cos(pi/3) x*sin(pi/3) 0];


z=sqrt(0.15^2-(x/2)^2-(x/3*sin(pi/3))^2);
N=[x/2 x/3*sin(pi/3) z];


Qa=20*10^(-9);
Q=25*10^(-9);


k=1/(4*pi*8.854187818*10^(-12));


NA=N-A;
NB=N-B;
NC=N-C;


aNA=NA/sqrt(dot(NA,NA));
aNB=NB/sqrt(dot(NB,NB));
aNC=NC/sqrt(dot(NC,NC));


FA=k*Q*Qa/(dot(NA,NA))*aNA;
FB=k*Q*Qa/(dot(NB,NB))*aNB;
FC=k*Q*Qa/(dot(NC,NC))*aNC;


F=FA+FB+FC


#==============================
disp("========================================")

clear all
format long

x=0.25;

N=[0 0 0];
B=[x 0 0];
C=[x x 0];
D=[0 x 0]

Q=30*10^(-9);

k=1/(4*pi*8.854187818*10^(-12));

NB=N-B;
NC=N-C;
ND=N-D;

aNB=NB/sqrt(dot(NB,NB));
aNC=NC/sqrt(dot(NC,NC));
aND=ND/sqrt(dot(ND,ND));

FB=k*Q*Q/(dot(NB,NB))*aNB;
FC=k*Q*Q/(dot(NC,NC))*aNC;
FD=k*Q*Q/(dot(ND,ND))*aND;

F=FB+FC+FD

sqrt(dot(F,F))
#==============================
disp("========================================")

clear all
format long

N=[2 5 3];
A=[2 1 -3];
B=[-3 -5 4];

NA=N-A;
NB=N-B;

Qa=15*10^(-9);
Qb=-6*10^(-9);

k=1/(4*pi*8.854187818*10^(-12));

aNA=NA/sqrt(dot(NA,NA));
aNB=NB/sqrt(dot(NB,NB));

EA=k*Qa/(dot(NA,NA))*aNA;
EB=k*Qb/(dot(NB,NB))*aNB;


E=EA+EB

#==============================
disp("========================================")

clear all
format long

N=[2 0 0];
A=[0 0 3];
B=[0 0 -3];

NA=N-A;
NB=N-B;

Qa=20*10^(-6);
Qb=20*10^(-6);

k=1/(4*pi*8.854187818*10^(-12));

aNA=NA/sqrt(dot(NA,NA));
aNB=NB/sqrt(dot(NB,NB));

EA=k*Qa/(dot(NA,NA))*aNA;
EB=k*Qb/(dot(NB,NB))*aNB;


E=EA+EB

Q=sqrt(dot(E,E))*2^2/k

#==============================
disp("========================================")

clear all
format long

A=[6,3,7]
N=[5,4,2]
Q=6*10^(-6)
k=1/(4*pi*8.854187818*10^(-12));

nc=cart2pol(N)
Nc=[nc(2) nc(1) nc(3)]
[r,theta,phi]=kcart2sph(N(1),N(2),N(3))


NA=N-A
aNA=NA/sqrt(dot(NA,NA))
E=k*Q*aNA/dot(NA,NA)

kcart2cylVector(E(1),E(2),E(3),Nc(2))
kcart2sphVector(E(1),E(2),E(3),theta,phi)
#==============================
disp("========================================")

clear all
format long

A=[0,0,0.25];
B=[0,0,-0.25];
C=[0,0,0];
N=[3,1,2];
Qa=50*10^(-9);
Qb=50*10^(-9);
Qc=-35*10^(-9);
k=1/(4*pi*8.854187818*10^(-12));

[r,theta,phi]=kcart2sph(N(1),N(2),N(3));

NA=N-A;
NB=N-B;
NC=N-C;

aNA=NA/sqrt(dot(NA,NA));
aNB=NB/sqrt(dot(NB,NB));
aNC=NC/sqrt(dot(NC,NC));
Ea=k*Qa*aNA/dot(NA,NA);
Eb=k*Qb*aNB/dot(NB,NB);
Ec=k*Qc*aNC/dot(NC,NC);

E=Ea+Eb+Ec

kcart2sphVector(E(1),E(2),E(3),theta,phi)
#==============================
disp("========================================")

clear all
format long

function rhoH=myFunc(rho,phi,z)
rhoH=(rho+0.002).*z.^2.*tan(phi)
endfunction

triplequad(@(rho,phi,z) rho.*(rho+0.002).*z.^2.*tan(phi),0,0.008,0.5236,1.309,2,5)
#==============================
disp("========================================")

clear all
format long

triplequad(@(rho,phi,z) rho.*e.^(-rho.^2),0,Inf,0,2*pi,0,1)

#==============================
disp("========================================")

clear all
format long
triplequad(@(r,theta,phi) r.^(2.5).*sin(theta),0,1,0,pi,0,2*pi)
triplequad(@(r,theta,phi) r.^(2.5).*sin(theta),0,1,0,pi*25/180,0,pi/3)
#==============================
disp("========================================")

clear all

epsilon=8.854187818*10^(-12);

qL=5*10^(-9);
Qa=-2*10^(-9);

L=[4,0,0];
A=[0,3,0];
B=[0,0,-1];
N=[4,8,1];

NL=N-L;
NA=N-A;


EL=qL*NL/(2*pi*epsilon*dot(NL,NL))
Ea=Qa*NA/(4*pi*epsilon*(dot(NA,NA))^(3/2))

E=EL+Ea
#==============================
disp("========================================")

clear all

epsilon=8.854187818*10^(-12);

qL=2*10^(-9);
Qa=7*10^(-9);

L=[0,8/5,4/5];
A=[6,1,2];
N=[6,8,4];

NL=N-L;
NA=N-A;


EL=qL*NL/(2*pi*epsilon*dot(NL,NL))
Ea=Qa*NA/(4*pi*epsilon*(dot(NA,NA))^(3/2))

E=EL+Ea
#==============================
disp("========================================")

clear all



rhoL=5*10^(-9);

zU=100000;
zL=0;
x=0;
y=0;
z=-2;

a=[x/sqrt(x.^2+y.^2) y/sqrt(x.^2+y.^2)];

N=[x,y,z];

ansCylindrical=kfieldOfLineCharge(rhoL,zU,zL,x,y,z);
ansCartesian=[a.*ansCylindrical(1) ansCylindrical(2)]
x=5;
y=2;
z=6;
a=[x/sqrt(x.^2+y.^2) y/sqrt(x.^2+y.^2)];
N=[x,y,z];

ansCylindrical=kfieldOfLineCharge(rhoL,zU,zL,x,y,z);
ansCartesian=[a.*ansCylindrical(1) ansCylindrical(2)]
#==============================
disp("========================================")

clear all



rhoL=2*10^(-6);

zU=10;
zL=2;
x=2;
y=12;
z=8;

a=[x/sqrt(x.^2+y.^2) y/sqrt(x.^2+y.^2)];

N=[x,y,z];

ansCylindrical=kfieldOfLineCharge(rhoL,zU,zL,x,y,z);
ansCartesian=[a.*ansCylindrical(1) ansCylindrical(2)]

