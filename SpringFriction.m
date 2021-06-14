clear

function res=dampenedquad(t,x)
  m=10;
  mrev=1/m;
  k=0.15;
  omega=5;
  res=[x(2);-mrev*(k*x(2)*abs(x(2))+omega^2*x(1))];
endfunction

function res=dampenedlin(t,x)
  m=10;
  mrev=1/m;
  k=0.4;
  omega=5;
  res=[x(2);-mrev*(k*x(2)+omega^2*x(1))];
endfunction


x0=58;
xdot0=3;


[t x]=ode45(@dampenedquad,[0:0.05:200],[x0 xdot0],'InitialStep',1e-5,'MaxStep',1e-4);
subplot(2,1,1)
quad=plot(t,x(:,1),'r')
hold on
title("Motion of a spring",'FontSize',22);
xlabel("t",'FontSize', 20);
ylabel("x(t)",'FontSize',20);

[t y]=ode45(@dampenedlin,[0:0.05:200],[x0 xdot0],'InitialStep',1e-5,'MaxStep',1e-4);
lin=plot(t,y(:,1),'b')

lgd=legend([quad,lin],{"Quadratic drag","Linear drag"});
set(lgd,'FontSize',16);

subplot(2,1,2)
plot(t,abs((x(:,1)-y(:,1))),'g')
title("Difference between models",'FontSize',22);
xlabel("t",'FontSize', 20);
ylabel("Absolute difference",'FontSize',20);
