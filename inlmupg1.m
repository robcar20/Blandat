%% inlmnupg vektorfält

clear all 
clc 
clf 
d = 8;

x = linspace(-7.5*10^(d),7*10^(d),30);
y = linspace(-7*10^(d),7*10^(d),30);

[X Y] = meshgrid(x,y);

Z = FI(X,Y);

figure(1)
hold on
contour(X,Y,Z,30);
daspect([1,1,1])


[FX,FY] = gradient(-Z);
quiver(X,Y,FX,FY,1.3);

figure(2)
surf(X,Y,Z)

%%

figure(2)
mesh(X,Y,Z)




%% 
clc
clear all 
clf
figure(3)
[t s] = ode15s('vortex',[0 50],[.1 -.1])
%plot(s(:,1),s(:,2))
[t s] = ode15s('vortex',[0 50],[.1 -.15])
%plot(s(:,1),s(:,2))


n = size(s(:,1))
U = zeros(n(1),1);
V = zeros(n(1),1);
for i = 1:n(1)
    k = vortex(0,[s(i,1) s(i,2)])
    U(i,1) = k(1);
    V(i,1) = k(2);
end
quiver(s(:,1),s(:,2),U,V,0.3)


%XY = stream2(x,y,u,v,.1,-1);
%streamline(XY);

%%


clear all 
clc 
clf 
d = 8;

r1 = linspace(1*10^8,3*10^8,50);
r2 = linspace(1*10^8,4*10^8,50);
theta = linspace(0,2*pi,50);

p=7*10^8;
d1 = 2/7*p;
d2 = -5/7*p;

x1 = d1+r1.*cos(theta);
x2 = d2+r2.*cos(theta);
y1 = r1.*sin(theta);
y2 = r2.*sin(theta);



[X1 Y1] = meshgrid(r1,theta);

Z1 = FI(X1,Y1);

figure(1)
hold on
contour(X1,Y1,Z1,70);
daspect([1,1,1])
[FX1,FY1] = gradient(-Z1);
quiver(X1,Y1,FX1,FY1);

[X2 Y2] = meshgrid(r2,theta);
Z2 = FI(X2,Y2);
contour(X2,Y2,Z2,70);
daspect([1,1,1])
[FX2,FY2] = gradient(-Z2);
quiver(X2,Y2,FX2,FY2);


%%
clf 
clc
clear all

p=7*10^8;
d1 = 2/7*p;
d2 = -5/7*p;


th = linspace(0,2*pi,50);
r1 = linspace(0.8*10^8,3*10^8,20);
r2 = linspace(2*10^8,4*10^8,20);
[TH1,R1] = meshgrid(th,r1);
[X1,Y1] = pol2cart(TH1,R1);
[TH2,R2] = meshgrid(th,r2);
[X2,Y2] = pol2cart(TH1,R1);

X1 = X1+d1;
X2 = X2+d2;


Z1 = FI(X1,Y1);
hold on

daspect([1,1,1])
[FX1,FY1] = gradient(-Z1);
quiver(X1,Y1,FX1,FY1,2);

Z2 = FI(X2,Y2);

[FX2,FY2] = gradient(-Z2);
quiver(X2,Y2,FX2,FY2,2);
hold on
contour(X1,Y1,Z1,20);
contour(X2,Y2,Z2,20);




