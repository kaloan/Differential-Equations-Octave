syms x y
eqns = [y*exp(x) == 16; x^5 == x + x*y^2];
vpasolve(eqns, [x; y], [1; 1])