h=0.1;
tau=0.004;
x=0:h:7;
t=0:tau:1;
N=length(x);
M=length(t);
u=zeros([N,M]);

%u(1,:)=sin(6*t);
%u(N,:)=-7*cos(7*t);
for m=1:M
    u(1,m)=sin(6*t(m));
    u(N,m)=-7*cos(7*t(m));
end
%u(:,1)=x.*(6-x);
for n=1:N
    u(n,1)=x(n)*(6-x(n));
end

for m=1:M-1
    for n=2:N-1
        u(n,m+1)=u(n,m)+tau/h^2*(u(n+1,m)-2*u(n,m)+u(n-1,m))-5*tau*sin(pi*x(n)/7);
    end
end

for m=1:M
    plot(x,u(:,m));
    axis([0,7,-10,10]);
    MM(m)=getframe;
end
movie(MM,2);