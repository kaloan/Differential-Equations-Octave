function res = phi3(x)
    for k=1:length(x)
        if x(k)>2&&x(k)<3
            res(k)=sin(pi*x(k))^2;
        elseif x(k)<0 res(k)=-phi1(-x(k));
        elseif x(k)>4 res(k)=-phi1(8-x(k));
        else res=0;
        end
    end
end


