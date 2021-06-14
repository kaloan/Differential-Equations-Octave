a=[3,7,-5,-1,7];
b=[5,7,-15,2,-8];
for k=1:length(a)
    [t,x]=ode45(@sys1,[0,3],[a(k),b(k)]);
    plot(x(:,1),x(:,2))
    hold on
    [t,x]=ode45(@sys1,[0,-3],[a(k),b(k)]);
    plot(x(:,1),x(:,2),'r')
end
axis([-10,10,-10,10])