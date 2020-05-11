function b = NewtDivDifTable(x_train,y_train)
    n = length(x_train);
    
    divDifTable = ones(n,n);
    divDifTable(:,1) = y_train(:);
    for c = 2:n
        for r = 1:n-c+1
            divDifTable(r,c) = (divDifTable(r+1,c-1)-divDifTable(r,c-1))/(x_train(r+c-1)-x_train(r));
        end
    end
    
    b = divDifTable(1,:)';%Extracting the 1st row that has b0,b1,........,bn
end
