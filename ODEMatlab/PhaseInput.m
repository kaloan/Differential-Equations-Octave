plot([-10,10],[0,0],'k')
hold on
plot([0,0],[-10,10],'k')
axis([-10,10,-10,10])
[y,z]=meshgrid(-10:10);
u=y-3*z;
v=3*y-z;
quiver(y,z,u,v)
[a,b]=ginput(1);
while a<=10&&a>=-10&&b<=10&&b>=-10
    [t,x]=ode45(@sys1,[0,4],[a,b]);
    plot(x(:,1),x(:,2),'b')
    [t,x]=ode45(@sys1,[0,-4],[a,b]);
    plot(x(:,1),x(:,2),'r')
    [a,b]=ginput(1);
end