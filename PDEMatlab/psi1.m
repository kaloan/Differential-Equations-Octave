function res=psi1(x)
for k=1:length(x)
    if x(k)>1&&x(k)<2
        res(k)=(x(k)-1)*(2-x(k));
    else res(k)=0;
    end
end
end

