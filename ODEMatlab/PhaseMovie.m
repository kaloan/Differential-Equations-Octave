[t,x]=ode45(@sys1,[0,9],[4,5]);
for k=1:length(x)-8
    plot(x(k:k+8,1),x(k:k+8,2))
    hold on
    plot(x(k+8,1),x(k+8,2),'o')
    axis([-10,10,-10,10])
    M(k)=getframe;
    hold off
end
movie(M,3)