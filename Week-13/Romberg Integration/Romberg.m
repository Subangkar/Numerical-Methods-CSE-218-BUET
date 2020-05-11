function [Ic,Et] = Romberg(f,a,b,It,MaxOrderNo,MaxEt)

%     It = integral(f,a,b);
    maxRow = MaxOrderNo/2;
    
    n = 1;
    I = zeros(maxRow,maxRow);
    I(1,1) = trapezoid(f,a,b,n);
    i = 0;
    while i<maxRow
        I(1,:)
        i = i+1;   
        Ic = I(1,i);
        Et = abs((Ic-It)/It)*100;
        if(Et<MaxEt) 
            return;
        end
        
        
        n = 2^i;
        I(i+1,1) = trapezoid(f,a,b,n);
        
        for k = 2:i+1
            j = 2+i-k;
            I(j,k) = (4^(k-1)*I(j+1,k-1)-I(j,k-1))/(4^(k-1)-1);
        end

    end

    Ic = I(1,maxRow);

end