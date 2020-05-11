function [zmax,xopt,yopt] = simplex_MAX(maxTable)
    [r,c] = size(maxTable);
    zmax = maxTable(1,c);

    xopt=0;
    yopt=0;
    
    T = maxTable;
    

    for i=2:r
        %T(i,2);
        if(T(i,2)==1 && xopt==0)
            xopt=maxTable(i,c);
        elseif((T(i,2)~=0 && T(i,2)~=1) || (xopt~=0 && T(i,2)~=0))
            xopt=0;
            break;
        end
    end
    
    
    for i=2:r
        if(T(i,3)==1 && yopt==0)
            yopt=maxTable(i,c);
        elseif((T(i,3)~=0 && T(i,3)~=1) || (yopt~=0 && T(i,3)~=0))
            yopt=0;
            break;
        end
    end
    
    
end