clear
#Initial conditions
y0=3;
yprim0=1;

#Step calculations
h1=0.05;
h2=0.01;
h3=0.002;
x1=0:h1:6;
x2=0:h2:6;
x3=0:h3:6;
y1(1)=y2(1)=y3(1)=y0;
y1(2)=yprim0*h1+y0;
y2(2)=yprim0*h2+y0;
y3(2)=yprim0*h3+y0;


#Filling arrays
for k=2:length(x1)-1
  y1(k+1)=(2-(1+sin(2*x1(k)))*h1-4*h1^2)*y1(k)+((1+sin(2*x1(k)))*h1-1)*y1(k-1);
endfor

for k=2:length(x2)-1
  y2(k+1)=(2-(1+sin(2*x2(k)))*h2-4*h2^2)*y2(k)+((1+sin(2*x2(k)))*h2-1)*y2(k-1);
endfor

for k=2:length(x3)-1
  y3(k+1)=(2-(1+sin(2*x3(k)))*h3-4*h3^2)*y3(k)+((1+sin(2*x3(k)))*h3-1)*y3(k-1);
endfor


#Plotting
plot(x1,y1,'r','DisplayName','h=0.05')
hold on
plot(x2,y2,'g','DisplayName','h=0.01')
plot(x3,y3,'b','DisplayName','h=0.002')
lgd=legend;
set(lgd,'FontSize',16);


