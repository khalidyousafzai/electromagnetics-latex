#emtQuestionsOctaveVector

clear all
format long

A=[-2 1 -7]
B=[3 5 -2]

AnsA=2*A-3.*B
unitAn=AnsA./sqrt(dot(AnsA,AnsA))

AnsB=[3 0 0]+2.*A-5.*B
sqrt(dot(AnsB,AnsB))

AnsC=sqrt(dot(2*B,2*B))*sqrt(dot(3*A,3*A))*(B-A)

#================================================
disp("========================================")

clear all

A=[1,-2,3]
B=[3,-1,2]
C=[7,5,-4]

AnsA=A+0.5*[B-A]
AnsB=AnsA/sqrt(dot(AnsA,AnsA))

sqrt(dot(A-B,A-B))+sqrt(dot(B-C,B-C))+sqrt(dot(C-A,C-A))

#================================
disp("========================================")

clear all

A=[2 1 3]
b=[2/3 -2/3 1/3]

sqrt(dot(A-3.85247950810067*b,A-3.85247950810067*b))
3.85247950810067*b
#==============
disp("========================================")

clear all

A=[3 1 2]
B=[4 6 2]
C=[1 4 -2]

BA=B-A;
CA=C-A;

ang=dot(BA,CA)/(sqrt(dot(BA,BA))*sqrt(dot(CA,CA)));
ansA=180/pi*acos(ang)

AC=A-C;
BC=B-C;

ang=dot(AC,BC)/(sqrt(dot(AC,AC))*sqrt(dot(BC,BC)));
ansB=180/pi*acos(ang)

#=======================
disp("========================================")

clear all

A=[4 1 2]
B=[-2 4 3]
C=[2 3 -1]

BA=B-A
CA=C-A

ca=CA/sqrt(dot(CA,CA))
ansA=dot(CA,ca)

ansB=0.5*CA-0.5*BA


#============================
disp("========================================")

clear all

M=[5 -3 2]
P=[-7 2 -6]

%M=[10 -6 5]
%P=[0.1 0.2 0.3]

aP=P/sqrt(dot(P,P))

ansA=dot(M,aP)*aP
ansB=M-ansA
#=================================
disp("========================================")


clear all

rA=[2 -1 3]
rB=[-3 4 -5]
rC=[5 -2 3]

rBA=rB-rA;
rBC=rB-rC;

ansA=cross(rA,rB);
ansB=ansA/sqrt(dot(ansA,ansA))

ansC=cross(rBA,rBC);
ansD=ansC/sqrt(dot(ansC,ansC))

ansE=0.5*cross(rA,rB);
ansF=sqrt(dot(ansE,ansE))

ansG=0.5*sqrt(dot(ansC,ansC))
#==============================
disp("========================================")

clear all


rA=[-3 6 12];
rB=[12 20 -5];

ansA=cross(rA,rB)/sqrt(dot(cross(rA,rB),cross(rA,rB)))

ansB=rB/sqrt(dot(rB,rB));
ansC=cross(ansA,ansB)

ansD=0.5*(ansB+rA/sqrt(dot(rA,rA)));
ansD/sqrt(dot(ansD,ansD))
#=======================================
disp("========================================")

clear all

Ap=[2 45 12];
Bp=[5 -60 -6];

ac=pol2cart(Ap(2)*pi/180,Ap(1));
bc=pol2cart(Bp(2)*pi/180,Bp(1));

Ac=[ac Ap(3)];
Bc=[bc Bp(3)];

ansA=Bc-Ac;
ansB=ansA/sqrt(dot(ansA,ansA))

ansC=ansB(1)*cos(pi/180*Ap(2)) + ansB(2)*sin(pi/180*Ap(2));
ansD=-ansB(1)*cos(pi/180*Ap(2))+ansB(2)*cos(pi/180*Ap(2));

ansE=[ansC ansD ansB(3)]

ansF=ansB(1)*cos(pi/180*Bp(2)) + ansB(2)*sin(pi/180*Bp(2));
ansG=-ansB(1)*cos(pi/180*Bp(2))+ansB(2)*cos(pi/180*Bp(2));

ansH=[ansF ansG ansB(3)]
#====================
disp("========================================")

clear all

Ap=[5 30 6];
Bp=[10 75 12];

ac=pol2cart(Ap(2)*pi/180,Ap(1));
bc=pol2cart(Bp(2)*pi/180,Bp(1));

Ac=[ac Ap(3)];
Bc=[bc Bp(3)];

ansA=Bc-Ac

ansB=ansA/sqrt(dot(ansA,ansA))

ansC=-Bc/sqrt(dot(Bc,Bc))
#====================
disp("========================================")

clear all

Ac=[5 -3 2]
Bc=[10 2 -5]

ap=cart2pol(Ac(1),Ac(2));
bp=cart2pol(Bc(1),Bc(2));

Ap=[ap(2) ap(1) Ac(3)];
Bp=[bp(2) bp(1) Bc(3)];

AB=Ac-Bc;

ABp=[AB(1)*cos(Ap(2))+AB(2)*sin(Ap(2)) -AB(1)*sin(Ap(2))+AB(2)*cos(Ap(2)) AB(3)]


BA=Bc-Ac;
BAp=[BA(1)*cos(Bp(2))+BA(2)*sin(Bp(2)) -BA(1)*sin(Bp(2))+BA(2)*cos(Bp(2)) BA(3)];
BAp/norm(BAp)

B=[Bc(1)*cos(Bp(2))+Bc(2)*sin(Bp(2)) -Bc(1)*sin(Bp(2))+Bc(2)*cos(Bp(2)) Bc(3)];
-B/norm(B)
