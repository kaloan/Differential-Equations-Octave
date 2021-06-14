function res = LorentzFunc12(t,x)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
s=10;
b=8.3;
r=28;
res=[10*(x(2)-x(1));
    x(1)*(28-x(3))-x(2);
    x(1)*x(2)-2.6*x(3)]
end

