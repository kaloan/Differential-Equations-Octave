clear
opts = odeset('InitialStep',5e-4,'MaxStep',1e-2);

%Cauchy problem
tstart=0;
tend=2;
x0=10;
y0=-8;

%Animation
[t,x]=ode45(@p2func,[tstart,tend],[x0,y0]);
for k=1:length(x)-1
 plot(x(k:k+1,1),x(k:k+1,2),'b')
 hold on
 plot([-15,15],[0,0],'k')
 plot([0,0],[-15,15],'k')
 plot(x(k+1,1),x(k+1,2),'bo')
 axis([-15,15,-15,15])
 hold off
 pause(0.1)
end

hold on

%%PHASE LOOK

%Legend dummies
%l1 = plot([NaN,NaN], 'r');
%l2 = plot([NaN,NaN], 'k');
%l3 = plot([NaN,NaN], 'g');
%lgd=legend([l1, l2, l3], {'Initial conditions','Solutions','Equilibrium solutions'});
%set(lgd,'FontSize',16);

%Vector field
[ x , y ] = meshgrid( -15:1:15 , -15:1:15 );
xd = x.*y-2*x ; yd= x.*x+y.*y-9 ;
quiver ( x , y , xd , yd )
pause(0.5)


%Static solutions
statx=[-sqrt(5) 0 0 sqrt(5)];
staty=[2 -3 3 2];
for k=1:4
plot(statx(k),staty(k),'go');
end

%Random solutions
xr=rand(1,14);
yr=rand(1,14);
xs0=24*xr-12;
ys0=24*yr-12;
%xs=[xs0,statx];
%ys=[ys0,staty];

%Around the statics
for k=1:length(statx)
  for it=1:3
    pointsx(it*k)=statx(k)+rand-0.5;
    pointsy(it*k)=staty(k)+rand-0.5;
  end
end

xs=[xs0,statx,pointsx];
ys=[ys0,staty,pointsy];

for k=1:length(xs)
  [t,z]=ode45(@p2func,[0 4],[xs(k),ys(k)],opts);
  %plot(xs(k),ys(k),'r*')
  plot(z(:,1),z(:,2),'k')
  [t,z]=ode45(@p2func,[0 -4],[xs(k),ys(k)],opts);
  plot(z(:,1),z(:,2),'k')
end

l1 = plot([NaN,NaN], 'r');
l2 = plot([NaN,NaN], 'k');
l3 = plot([NaN,NaN], 'g');
lgd=legend([l1, l2, l3], {'Initial conditions','Solutions','Equilibrium solutions'});
set(lgd,'FontSize',16);

%System
function res=p2func(t,x)
  res=[x(1)*x(2)-2*x(1);x(1)^2+x(2)^2-9];
end