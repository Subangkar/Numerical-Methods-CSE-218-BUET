function pnx = pn(x,x_train,b)
    n = length(x_train);
    
    pnx = b(1);
    xterms = 1;
    
    for i = 1:n-1
        xterms = xterms.*(x - x_train(i));
        pnx = pnx + b(i+1).*xterms; % b(j+1)*x(x-x0)*...*(x-xj)
    end
    
end