function minI = posMinIndex(P,A,n)
    minI=-1;
    minVal=A(1);
    
    if(P(1)>0)
        minI=1;
    else
        minVal = 99999999999;
    end

    for i=1:n

        if(P(i)>0 && A(i)<minVal)
            minI=i;
            minVal=A(i);
        end
    end
end