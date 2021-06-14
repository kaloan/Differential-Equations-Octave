clear
function res=p2func(t,x)
  res=[x(1)*x(2)-2*x(1);x(1)^2+x(2)^2-9];
endfunction

tstart=0;
tend=2;
x0=10;
y0=-8;

[t,x]=ode45(@p2func,[tstart,tend],[x0,y0]);
##for k=1:length(x)-5
##  plot(x(k:k+5,1),x(k:k+5,2))
##  hold on
##  plot(x(k+5,1),x(k+5,2),'o')
##  axis([-2,10,-8,8])
##  #M(k)=getframe;
##  hold off
##end
#movie(M,3)
hold on
plot(x(:,1),x(:,2))