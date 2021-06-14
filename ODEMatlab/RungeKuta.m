[x,y]=ode45(@func1,[0,5],2);
plot(x,y,'g')
hold on
[x1,y1]=ode45(@func1,[0,-4],2);
plot(x1,y1,'y')