clear all
clf

x=@(t) 3.*cos(t-45.*pi./180);
y=@(t) -4.*cos(t+30.*pi./180);
z=@(t) sqrt(x(t).^2+y(t).^2);

hold on
axis([-4 4 -4 4],"square")

t=-pi:0.1:pi;
plot(x(t),y(t))

plot(t,z(t))

