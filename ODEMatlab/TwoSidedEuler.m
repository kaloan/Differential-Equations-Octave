h=0.1;
x=0:-h:-4;
y(1)=2;
N=length(x);
for n=1:N-1
    y(n+1)=y(n)-h*cos(x(n)*y(n));
end
plot(x,y,'r')
hold on
x=0:h:5;
y1(1)=2;
N=length(x);
for n=1:N-1
    y1(n+1)=y1(n)+h*cos(x(n)*y1(n));
end
plot(x,y1,'b')
hold on