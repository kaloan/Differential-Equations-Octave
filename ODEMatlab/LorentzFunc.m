function res = LorentzFunc12(t,x)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
s=10;
b=8.3;
r=28;
res=[s*(x(2)-x(1));
    x(1)*(r-x(3))-x(2);
    x(1)*x(2)-b*x(3)]
end

