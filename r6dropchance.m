x=0:1:100;
chance=0.02;

p=zeros([length(x),1]);  ##probabilites
pc=zeros([length(x),1]); ##cumulative
pm=zeros([length(x),1]); ##multiplicative factors
pm(1)=1-chance;  ##multiplicative factor

p(1)=chance;
pc(1)=chance;
A(1)=p(1);

for k=1:length(x)-1
  
  ##p(k+1)=(1-pc(k))*chance*k;
  ##p(k+1)=(k*chance)*(1-chance)^k;
  ##pc(k+1)=pc(k)+p(k+1);
  ##pm=pm*(1-p(k));
  
  p(k+1)=pm(k)*chance*(k+1);
  pm(k+1)=pm(k)*(1-p(k+1));
  pc(k+1)=pc(k)+p(k);
  
endfor

plot(x,pc,'r','DisplayName','Calculated cumulative probability');
hold on
plot(x,p,'b','DisplayName','Probability at throw x');
plot(x,pm,'m','DisplayName','Multiplicative factor');
axis([0,100,0,1]);
lgd=legend;
set(lgd,'FontSize',16);