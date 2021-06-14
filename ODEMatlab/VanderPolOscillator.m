plot([-5,5],[0,0],'k')
hold on
axis([-5,5,-5,5])
plot([0,0],[-5,5],'k')
[x0,y0]=ginput(1);
while x0>=-5&&x0<=5&&y0>=-5&&y0<=5
    [t,x]=ode45(@VanderFunc,[0,10],[x0,y0]);
    plot(x(:,1),x(:,2))
    [t,x]=ode45(@VanderFunc,[0,-10],[x0,y0]);
    plot(x(:,1),x(:,2))
    [x0,y0]=ginput(1);
end