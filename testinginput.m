clear
function res=sys1(t,x)
  res=[x(1)*x(2)-2*x(1);x(1)^2+x(2)^2-9];
endfunction


plot([-10,10],[0,0],'k')
hold on
plot([0,0],[-10,10],'k')
axis([-10,10,-10,10])
[y,z]=meshgrid(-10:10);
#u=y-3*z;
#v=3*y-z;
u=(y.*z-2*y);
v=(y.^2+z.^2-9);
quiver(y,z,u,v)
[a,b]=ginput(1);
while a<=10&&a>=-10&&b<=10&&b>=-10
    plot(a,b,'ko')
    [t,x]=ode45(@sys1,[0,4],[a,b]);
    plot(x(:,1),x(:,2),'b')
    [t,x]=ode45(@sys1,[0,-4],[a,b]);
    plot(x(:,1),x(:,2),'r')
    [a,b]=ginput(1);
end