function deriv = vortex(t,p)
%vortex2000
J = 10;
c = 5;
x = p(1);
y = p(2);

deriv = [J*((y/(2*c^2)) - y/((x+c).^2+y.^2)  - y/((x-c).^2+y.^2));
    -J*(x/(2*c^2)-(x+c)/((x+c).^2+y.^2)-  (x-c)/((x-c).^2+y.^2)      )];


        