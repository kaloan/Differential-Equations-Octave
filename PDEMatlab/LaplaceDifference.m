clear
h=0.05;
xx=0:h:3;
yy=0:h:2;
[x,y]=meshgrid(xx,yy);
t=meshgrid(xx,yy);
%t=[x,y];
t=t';
%[N,M]=[size(x),size(y)];
N=length(xx);
M=length(yy);
u=zeros([N,M]);
%u(:,1)=-sin(pi*xx/3);
%u(:,M)=xx.*(3-xx).*sin(2*pi*xx);
u(:,1)=-sin(pi*t(:,1)/3);
u(:,M)=t(:,1).*(3-t(:,1)).*sin(2*pi*t(:,1));
%u(1,:)=-sin(pi*xx/3);
%u(M,:)=xx.*(3-xx).*sin(2*pi*xx);
%u(1,:)=0;
%u(N,:)=0;
uu=u;
p=true;
while p
    for n=2:N-1
        for m=2:M-1
            u(n,m)=(uu(n+1,m)+uu(n-1,m)+uu(n,m-1)+uu(n,m+1))/4;
        end
    end
    if max(max(abs(u-uu)))<0.001
        p=false;
    end
    uu=u;
end
u=u';
surf(x,y,u)