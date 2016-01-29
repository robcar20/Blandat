clc;
clf;
d = 0.2
[t,x] = ode15s('vortex',[0 15],[1; 1]);
%plot(x(:,1),x(:,2));
hold on

n = size(x(:,1));

U = zeros(n(1),1);
V = zeros(n(1),1);
for i = 1:n
    k = vortex(0,[x(i,1) x(i,2)]);
    U(i,1) = k(1);
    V(i,1) = k(2);
end
quiver(x(:,1),x(:,2),U(:,1),V(:,1),d)



[t,x] = ode15s('vortex',[0 15],[-1; 1]);
%plot(x(:,1),x(:,2));

n = size(x(:,1))

U = zeros(n(1),1);
V = zeros(n(1),1);
for i = 1:n
    k = vortex(0,[x(i,1) x(i,2)]);
    U(i,1) = k(1);
    V(i,1) = k(2);
end
quiver(x(:,1),x(:,2),U(:,1),V(:,1),d)



[t,x] = ode15s('vortex',[0 23],[-.5; 1]);
%plot(x(:,1),x(:,2));

n = size(x(:,1))

U = zeros(n(1),1);
V = zeros(n(1),1);
for i = 1:n
    k = vortex(0,[x(i,1) x(i,2)]);
    U(i,1) = k(1);
    V(i,1) = k(2);
end
quiver(x(:,1),x(:,2),U(:,1),V(:,1),d)



[t,x] = ode15s('vortex',[0 23],[.5; 1]);
%plot(x(:,1),x(:,2));

n = size(x(:,1))

U = zeros(n(1),1);
V = zeros(n(1),1);
for i = 1:n
    k = vortex(0,[x(i,1) x(i,2)]);
    U(i,1) = k(1);
    V(i,1) = k(2);
end
quiver(x(:,1),x(:,2),U(:,1),V(:,1),d)









[t,x] = ode15s('vortex',[0 23],[-1.7; 1]);
%plot(x(:,1),x(:,2));

n = size(x(:,1))

U = zeros(n(1),1);
V = zeros(n(1),1);
for i = 1:n
    k = vortex(0,[x(i,1) x(i,2)]);
    U(i,1) = k(1);
    V(i,1) = k(2);
end
quiver(x(:,1),x(:,2),U(:,1),V(:,1),d)



[t,x] = ode15s('vortex',[0 23],[1.7; 1]);
%plot(x(:,1),x(:,2));

n = size(x(:,1))

U = zeros(n(1),1);
V = zeros(n(1),1);
for i = 1:n
    k = vortex(0,[x(i,1) x(i,2)]);
    U(i,1) = k(1);
    V(i,1) = k(2);
end
quiver(x(:,1),x(:,2),U(:,1),V(:,1),d)



[t,x] = ode15s('vortex',[0 50],[0; 10]);
%plot(x(:,1),x(:,2));

n = size(x(:,1))

U = zeros(n(1),1);
V = zeros(n(1),1);
for i = 1:n
    k = vortex(0,[x(i,1) x(i,2)]);
    U(i,1) = k(1);
    V(i,1) = k(2);
end
quiver(x(:,1),x(:,2),U(:,1),V(:,1),d)




[t,x] = ode15s('vortex',[0 15],[-4; -8.7]);
%plot(x(:,1),x(:,2));

n = size(x(:,1))

U = zeros(n(1),1);
V = zeros(n(1),1);
for i = 1:n
    k = vortex(0,[x(i,1) x(i,2)]);
    U(i,1) = k(1);
    V(i,1) = k(2);
end
quiver(x(:,1),x(:,2),U(:,1),V(:,1),d)

[t,x] = ode15s('vortex',[0 15],[4; -8.7]);
%plot(x(:,1),x(:,2));

n = size(x(:,1))

U = zeros(n(1),1);
V = zeros(n(1),1);
for i = 1:n
    k = vortex(0,[x(i,1) x(i,2)]);
    U(i,1) = k(1);
    V(i,1) = k(2);
end
quiver(x(:,1),x(:,2),U(:,1),V(:,1),d)



[t,x] = ode15s('vortex',[0 12],[-6; -8.7]);
%plot(x(:,1),x(:,2));

n = size(x(:,1))

U = zeros(n(1),1);
V = zeros(n(1),1);
for i = 1:n
    k = vortex(0,[x(i,1) x(i,2)]);
    U(i,1) = k(1);
    V(i,1) = k(2);
end
quiver(x(:,1),x(:,2),U(:,1),V(:,1),d)


[t,x] = ode15s('vortex',[0 12],[6; -8.7]);
%plot(x(:,1),x(:,2));

n = size(x(:,1))

U = zeros(n(1),1);
V = zeros(n(1),1);
for i = 1:n
    k = vortex(0,[x(i,1) x(i,2)]);
    U(i,1) = k(1);
    V(i,1) = k(2);
end
quiver(x(:,1),x(:,2),U(:,1),V(:,1),d)




