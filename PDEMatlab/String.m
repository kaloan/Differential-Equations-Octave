N=25;
for k=1:N
    xx=0:0.01:4;
    yy=phi2(xx).*sin(k*pi*xx/4);
    Ak(k)=trapz(xx,yy)/2;
    zz=psi2(xx).*sin(k*pi*xx/4);
    Bk(k)=2/(k*pi)*trapz(xx,zz);
end

t=0:0.1:8;
x=0:0.05:4;
for m=1:length(t)
    u=0;
    for k=1:N
        u=u+Ak(k)*cos(k*pi*t(m)/4)*sin(k*pi*x/4);
        u=u+Bk(k)*sin(k*pi*t(m)/4)*sin(k*pi*x/4);
    end
    plot(x,u)
    axis([0,4,-5,5]);
    M(m)=getframe;
end
movie(M,3)