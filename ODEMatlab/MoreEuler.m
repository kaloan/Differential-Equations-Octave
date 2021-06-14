h=0.05;
x=0:h:4;
y(1)=1;
for n=1:length(x)-1
    y(n+1)=y(n)+h*exp(x(n)^2)*sin(y(n))
end
plot(x,y)
hold on
plot([0,4],[pi,pi],'c')
axis([0,4,0,5])
[x1,y1]=ode45(@wexpo,[0,4],1);
plot(x1,y1,'r')
[x2,y2]=ode23s(@wexpo,[0,4],1);
plot(x2,y2,'g')