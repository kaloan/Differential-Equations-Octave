#Equation for angle is phi''(t) + k*phi'(t) + g/l*sin(phi(t))=0

#CONSTANTS
g=9.8; #gravitational constant
l=1; #pendulum length
v=-2; #initial linear speed
k=0.15; #friction coefficient
h=0.05; #step
t=0:h:10; #time

#STARTING VALUES
phi(1)=pi/6; #initial angle
phi(2)=phi(1) + v/l*h; #get angle at time h (derived from v=omega*R)
x(1)=l*sin(phi(1));
y(1)=-l*cos(phi(1));
x(2)=l*sin(phi(2));
y(2)=-l*cos(phi(2));

plot(x(1),y(1),'ro')
axis([-1,1,-1.5,0])
plot(x(2),y(2),'ro')

#FILL ARRAYS
for n=2:length(t)-1 #approximate for times t=(n+1)*h
    phi(n+1)=2*phi(n)-phi(n-1)-h*k*(phi(n)-phi(n-1))-h^2*(g/l*sin(phi(n))); #numerical solution of the differential equation
    x(n+1)=l*sin(phi(n+1)); #x coordinate in cartesian
    y(n+1)=-l*cos(phi(n+1)); #y coordinate in cartesian
    plot(x(n+1),y(n+1),'ro')
    axis([-l,l,-1.5*l,1.5*l])
    hold off
    pause(0.001);
end


#MORE PLOTTING
#plot(t,phi)
#plot(t,x)
#plot(t,y)
#for n=1:length(1)
 # plot(x(n),y(n),'ro')
 # sleep(0.001);
#end
#plot(x,y,'.')
#axis([-1,1,-1.5,0])