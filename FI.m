function p = FI(X,Y)

G = 6.6743*10^(-11);
solmassa = 1.9891*10^(30);
m1 = solmassa;
m2 = 0.4*m1;
d = 7*10^8;
x1 = 2/7*d
x2 = -5/7*d


omegakvad = (G*(m1+m2))/(d^3);


p = -(G*m1)./(sqrt((X-x1).^2+Y.^2))-(G*m2)./(sqrt((X-x2).^2+Y.^2))-0.5.*(X.^2+Y.^2)*omegakvad;



