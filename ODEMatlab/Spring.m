[t,y]=ode45(@ho,[0,80],[1,-1]);
%plot(t,y(:,1))

yy=-5:0.05:0;
x=sin(2*pi*yy);
for k = 1:length(y)
    plot(x,(5+y(k,1))/5*yy)
    hold on
    plot([-1,1,1,-1,-1],[-5,-5,-7,-7,-5]-y(k,1))
    axis([-5,5,-10,0])
    M(k)=getframe;
    hold off
end
movie(M,3)