clear
[t,x]=ode45(@LorentzFunc12,[0,30],[5,15,18]);
%plot3(x(:,1),x(:,2),x(:,3));
%hold on
%axis([-20,20,-20,20,-20,20])
%hold on
for k=2:length(x)
   plot3(x(1:k,1),x(1:k,2),x(1:k,3));
   hold on
   axis([-50,50,-50,50,-50,50])
   plot3(x(k,1),x(k,2),x(k,3),'ro');
   M(k)=getframe;
   hold off
end
movie(M,3);