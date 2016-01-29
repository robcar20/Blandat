function f = phi(X,Y)

G = 6.6743*10^(-11);
solmassa = 1.9891*10^(30);
m1 = solmassa;
m2 = 0.4*m1;
d = 7*10^8;
r1 = [2/7*d 0 0];
r2 = [-5/7*d 0 0];


omega = [0 0 sqrt((G*(m1+m2))/d^3)];

wr = cross(omega,[X Y 0]);

f  = -(G*m1)./norm([X Y 0]-r1)-(G*m2)./norm([X Y 0]-r2)-0.5*dot(wr,wr);



