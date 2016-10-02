#emtQuestionsOctaveGauss

#==============================
disp("========================================")
disp("Q4.1a")
clear all
format long

Q=10^(-6);
e=[5 -3 2];
p=[5 45 4];
m=[5 45 6];

E=kpol2cartField(e(1),e(2),e(3),p(2)*pi/180);
P=pol2cart(p(2).*pi./180,p(1), p(3));
M=pol2cart(m(2).*pi./180,m(1), m(3));

MP=M-P;
a=MP/sqrt(dot(MP,MP));
L=10^(-6).*a;

energy=-1*Q.*dot(E,L)
#==============================
disp("========================================")
disp("Q4.1b")
clear all
format long

Q=10^(-6);
e=[5 -3 2];
p=[5 45 4];
m=[5 45.3 4];

E=kpol2cartField(e(1),e(2),e(3),p(2)*pi/180);
P=pol2cart(p(2).*pi./180,p(1), p(3));
M=pol2cart(m(2).*pi./180,m(1), m(3));

MP=M-P;
a=MP/sqrt(dot(MP,MP));
L=10^(-6).*a;

energy=-1*Q.*dot(E,L)
#==============================
disp("========================================")
disp("Q4.1c")
clear all
format long

Q=10^(-6);
e=[5 -3 2];
p=[5 45 4];
m=[7 45 4];

E=kpol2cartField(e(1),e(2),e(3),p(2)*pi/180);
P=pol2cart(p(2).*pi./180,p(1), p(3));
M=pol2cart(m(2).*pi./180,m(1), m(3));

MP=M-P;
a=MP/sqrt(dot(MP,MP));
L=10^(-6).*a;

energy=-1*Q.*dot(E,L)
#==============================
disp("========================================")
disp("Q4.1d")
clear all
format long

Q=10^(-6);
e=[5 -3 2];
p=[5 45 4];
m=[10 66 12];

E=kpol2cartField(e(1),e(2),e(3),p(2)*pi/180);
P=pol2cart(p(2).*pi./180,p(1), p(3));
M=pol2cart(m(2).*pi./180,m(1), m(3));

MP=M-P;
a=MP/sqrt(dot(MP,MP));
L=10^(-6).*a;

energy=-1*Q.*dot(E,L)
#==============================
disp("========================================")
disp("Q4.2")
clear all
format long

Q=2;
P=[3 4 6]

E=[100 -250 50]

aa=[1 0 0];
a=aa/sqrt(dot(aa,aa));
L=10^(-3).*a;

energy=-1*Q.*dot(E,L)

aa=[0 1 0];
a=aa/sqrt(dot(aa,aa));
L=10^(-3).*a;

energy=-1*Q.*dot(E,L)

aa=[1 1 1];
a=aa/sqrt(dot(aa,aa));
L=10^(-3).*a;

energy=-1*Q.*dot(E,L)
disp("========================================")
disp("Q4.2")
clear all
format long

Q=12;
N=[3 2 4]
P=[5 6 -2]
E=0.2*3*[sin(0.1*3) -2*cos(0.15*3) 0.02*4]

PN=P-N;
a=PN/sqrt(dot(PN,PN));

energy=-1*Q*2.5*10^(-6)*dot(E,a)

