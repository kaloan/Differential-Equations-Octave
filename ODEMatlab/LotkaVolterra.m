plot(4,3,'bo')
hold on
axis([0,10,0,10]);
[x0,y0]=ginput(1);
while x0>=0&&x0<=10&&y0>=0&&y0<=10
    [t,x]=ode23s(@LotkaFunc,[0,6],[x0,y0]);
    plot(x(:,1),x(:,2))
    [x0,y0]=ginput(1);
end
hold off
plot(t,x(:,1),'g')
hold on
plot(t,x(:,2),'r')