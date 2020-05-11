function snx = sn(x,x_train,f,b,c)

    n = length(x_train);
    l = length(x);
    snx = zeros(l,1);
    
    for idx = 1:l    
        i = 1;

        if (x(idx) >= x_train(n))
            i = n-1;
        else
            for intervalNo = 1:n-1
                if(x_train(intervalNo) < x(idx) && x(idx) <= x_train(intervalNo + 1))
                    i = intervalNo;
                    break;
                end
            end
        end

        snx(idx) = f(i) + b(i)*(x(idx)-x_train(i)) + c(i)*((x(idx)-x_train(i))^2);    
    end
    
   snx = snx';
    
end