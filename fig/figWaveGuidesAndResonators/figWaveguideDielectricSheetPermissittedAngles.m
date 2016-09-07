clear all
close all
clf

hold on

m=0;

na=1.5;
nb=1;
lam=0.01;
d=0.01;

k=2.*pi.*na.*d./lam;
#k=1;

funcA=@(t) tan(k.*cos(pi.*t./180)-m.*pi)
funcB=@(t) sqrt(na.^2.*(sin(pi.*t./180)).^2-nb.^2)./(na.*cos(pi.*t./180))

t=0:90;
plot (t,funcA(t));
plot (t,funcB(t));

plot ([0 90],[0 0]);
plot([78,78],[0,-0.2]);
plot([45.3,45.3],[0,1]);

axis([0 90 -2 6]);
set(gca, "xaxislocation", "zero","xdir", "reverse");
print  -dpdf  emtWaveguideDielectricSlabPermittedAngles.pdf


test=81.69
funcA(test)
funcB(test)
funcA(test)-funcB(test)
