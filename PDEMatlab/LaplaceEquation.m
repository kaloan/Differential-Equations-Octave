[rho,phi]=meshgrid([0:0.1:2],[0:pi/120:2*pi]);
N=50;
xx=0:pi/250:2*pi;
yy=exp(sin(5*xx));
A0=trapz(xx,yy)/(2*pi);
for k=1:N
    yy=exp(sin(5*xx)).*cos(k*xx);
    A(k)=trapz(xx,yy)/(2^k*pi);
    yy=exp(sin(5*xx)).*sin(k*xx);
    B(k)=trapz(xx,yy)/(2^k*pi);
end

u=A0;
for k=1:N
    u=u+(A(k)*cos(k*phi)+B(k)*sin(k*phi)).*rho.^k;
end
x=rho.*cos(phi);
y=rho.*sin(phi);
surf(x,y,u);