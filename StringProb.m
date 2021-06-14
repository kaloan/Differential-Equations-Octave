clear;

%PHI
function res = myphi(x)
    for k=1:length(x)
        if x(k)>=1/2&&x(k)<=7/2
            res(k)=(2*x(k)-1)*(2*x(k)-7)*cos(pi*x(k));
        else res(k)=0;
       end
    end
end


%Summation terms
N=40;
xx=0:0.01:8;
yy=myphi(xx);
A0=1/8*trapz(xx,yy);

for k=1:N
    xx=0:0.01:8;
    yy=myphi(xx).*cos(k*pi*xx/8);
    Ak(k)=1/4*trapz(xx,yy);
end


%Summing and animation

t=0:0.2:16;
x=0:0.01:8;

for m=1:length(t)
    u=0;
    u=u+A0;
    for k=1:N
        u=u+Ak(k)*sin(k*pi*t(m)/8)*cos(k*pi*x/8);
    end
    str= ["t=" num2str(t(m))];
    plot(x,u)
    ###plot(x,u,'DisplayName',str)
    axis([0,8,-10,10]);
    ###lgd=legend;
    ###legend boxoff
    ###set(lgd,'FontSize',16);
    ###dim=[0.75 0.75 0.2 0.1];
    ####annotation('textbox',dim,'String',str,'FitBoxToText','off');
    text(0.8*8,0.8*10,str,'FontSize',14);
    pause(0.005);
end