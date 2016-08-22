#ebersMollModel

clf
hold on

hFE=100;
hFC=0.01;
VT=0.025;
VA=50;
VDD=5;
aR=hFC./(1+hFC);


iC=@(iB,vCE) iB.*hFE.*((e.^(vCE./VT)-1./aR)./(e.^(vCE./VT)+hFE./hFC)).*(1+vCE./VA);
shift=VT.* log(1./aR)
iB=0.001;
vCE=shift:0.01:VDD;
plot(vCE,iC(iB,vCE),"color","black","linewidth",2)

IC=iC(iB,VDD);
%axis
plot([shift,VDD+0.5],[0,0],"color","black","linewidth",1);
plot([shift,shift],[0,2*IC],"color","black","linewidth",1)

axis([0,VDD,0,1.2*IC])
grid off
axis off

print -demf ebersMollModel.emf
print -deps ebersMollModel.eps
print -dtikz ebersMollModel.tikz

%=================================
%=================================
clf
hold on

iB=0.001;
vCE=shift:0.01:VDD;
plot(-vCE,iC(iB,vCE),"color","black","linewidth",2)

IC=iC(iB,VDD);
%axis
plot([-shift,-VDD],[0,0],"color","black","linewidth",1)
plot([-shift,-shift],[0,2*IC],"color","black","linewidth",1);

axis([-VDD,0,0,1.2*IC])
grid off
axis off

print -demf ebersMollModelMirrored.emf
print -deps ebersMollModelMirrored.eps

%================================
%================================
clf
hold on

iB=0.001;
vCE=shift:0.01:VDD-shift;
plot(VDD-vCE,iC(iB,vCE),"color","black","linewidth",2)

IC=iC(iB,VDD);
%axis
plot([shift,VDD+0.5],[0,0],"color","black","linewidth",1);
plot([shift,shift],[0,2*IC],"color","black","linewidth",1)

axis([0,VDD,0,1.2*IC])
grid off
axis off

print -demf ebersMollModelMirroredShifted.emf
print -deps ebersMollModelMirroredShifted.eps
%==============================================
%==============================================
clf
hold on


iB=0.000008;                 
vCE=0:0.01:VDD-shift;
plot(VDD-vCE,iC(iB,vCE),"color","black","linewidth",2)

IC=iC(iB,VDD);
%axis
plot([shift,VDD+0.5],[0,0],"color","black","linewidth",1);
plot([shift,shift],[0,2*IC],"color","black","linewidth",1)

%overlapped npn

baseCurrents=[0.2,0.4,0.6,0.73,0.8,1,1.2,1.4,1.6,1.8];
for iB=baseCurrents.*10.^(-5);
vCE=shift:0.01:VDD;
plot(vCE,iC(iB,vCE),"color","black","linewidth",1)
endfor

collectorCurrents=[0.2,0.4,0.6,0.8,1,1.2,1.4,1.6,1.8,2,2.2,2.4,2.6,2.8];
for iC=collectorCurrents.*10.^(-3);
plot([shift,shift-0.02],[iC,iC],"color","black","linewidth",1)
endfor


axis([0,VDD+0.25,0,2*IC])
grid off
axis off

print -demf ebersMollModelMirroredShiftedOverlapped.emf
print -deps ebersMollModelMirroredShiftedOverlapped.eps


