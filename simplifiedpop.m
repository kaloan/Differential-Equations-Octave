#Solving the system:
#|x'(t)=a*y-b*x
#|y'(t)=c*x^2-a*y

#tt=1:0.5:200;
#x0=300;
#y0=20;
#A = odeset('RelTol',1e-5,'AbsTol',1e-5,'InitialStep',1e-2,'MaxStep',1e-3);
#[t,p]=ode45(@pop1,[1 20],[x0 y0],A);
#plot(p(1),p(2))

x(1)=400;
y(1)=100;

a=0.05;
b=0.03;
c=0.0001;

h=0.5;
t=0:h:200;

for k=1:length(t)-1
  x(k+1)=x(k)+h*(a*y(k)-b*x(k));
  y(k+1)=y(k)+h*(c*x(k)^2-a*y(k));
  plot(x(k),y(k),'ko')
  title("Simplified population model")
  xlabel("Adults")
  ylabel("Children")
  hold on
  axis([0,1500,0,1500])
  pause(0.001);
endfor

