%% inlmnupg vektorfält

clear all 
clc 
clf 
d = 8;

x = linspace(-6*10^(d),3*10^(d),50);
y = linspace(-1*10^(d),1*10^(d),50);

[X Y] = meshgrid(x,y);

Z = FI(X,Y);

figure(1)
hold on
contour(X,Y,Z,100);
daspect([1,1,1])

[FX,FY] = gradient(-Z);
quiver(X,Y,FX,FY);


figure(2)
mesh(X,Y,Z)




%% 
clc
clear all 
clf
figure(3)
[t s] = ode15s('vortex',[0 500],[.1 -.1])
plot(s(:,1),s(:,2))
[t s] = ode15s('vortex',[0 500],[.2 -.5])
plot(s(:,1),s(:,2))



