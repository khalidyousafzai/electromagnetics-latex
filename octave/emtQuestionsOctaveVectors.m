#emtQuestionsOctaveVector

clear all
clf
format long

A=[-2 1 -7]
B=[3 5 -2]

AnsA=2*A-3.*B
unitAn=AnsA./sqrt(dot(AnsA,AnsA))

AnsB=[3 0 0]+2.*A-5.*B
sqrt(dot(AnsB,AnsB))

AnsC=sqrt(dot(2*B,2*B))*sqrt(dot(3*A,3*A))*(B-A)

#================================================
clear all
clf

A=[1,-2,3]
B=[3,-1,2]
C=[7,5,-4]

AnsA=A+0.5*[B-A]
AnsB=AnsA/sqrt(dot(AnsA,AnsA))

sqrt(dot(A-B,A-B))+sqrt(dot(B-C,B-C))+sqrt(dot(C-A,C-A))

#================================
clear all
clf

A=[2 1 3]
b=[2/3 -2/3 1/3]

sqrt(dot(A-3.85247950810067*b,A-3.85247950810067*b))
3.85247950810067*b
#==============
clear all
clf

A=[3 1 2]
B=[4 6 2]
C=[1 4 -2]

BA=B-A
CA=C-A

ang=dot(BA,CA)/(sqrt(dot(BA,BA))*sqrt(dot(CA,CA)))
180/pi*acos(ang)

AC=A-C
BC=B-C

ang=dot(AC,BC)/(sqrt(dot(AC,AC))*sqrt(dot(BC,BC)))
180/pi*acos(ang)

#=======================
clear all
clf

A=[4 1 2]
B=[-2 4 3]
C=[2 3 -1]

BA=B-A
CA=C-A

ca=CA/sqrt(dot(CA,CA))
dot(CA,ca)

0.5*CA-0.5*BA

