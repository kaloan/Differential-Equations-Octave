clear;

%Problem
h=0.2; 
tau=h ^2/4;
x=0:h:2;
t=0:tau:0.5;
u=zeros(length(t),length(x));

%Filling
u(1,:)=(2-x).*e.^x;
u(:,1)=2*cos (6*t);
u(:,length(x))=t.^2 + 2*sin(7*t);

%Differential scheme
for j =1:length(t)-1
  for i =2:length(x)-1
    u (j +1,i)=(1-2*tau/h^2)*u(j,i) + tau/h^2*(u(j ,i +1) + u(j, i-1));
  end 
end 

%Plotting
for k=1:length(t)
  str= ["t=" num2str(t(k))];
  plot(x,u(k,:),'LineWidth',2,'DisplayName',str);
  axis([0,2,-3,3]);
  lgd=legend;
  legend boxoff
  set(lgd,'FontSize',16);
  pause(0.01);
end 
