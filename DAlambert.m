t=0:0.1:10;
x=0:0.05:4;
for k=1:length(t)
    u=(phi3(x+t(k))+phi3(x-t(k)))/2 +intpsi(x-t(k),x+t(k))/2;
    plot(x,u)
    axis([0,4,-2,2]);
    M(k)=getframe;
end
movie(M,2)