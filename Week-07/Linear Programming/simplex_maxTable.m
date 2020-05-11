function T = simplex_maxTable(M)
    T=M;
    [rT,cT] = size(T);
    [pR,pC] = pivotElem(T);
    itr=0;
    
    while(pR~=0)
        pivot = T(pR,pC);
        T;
        T(pR,:) = T(pR,:) ./ pivot; % make pivot==1
        
        for r=1:rT
            if(r~=pR)
                elim_fact = T(r,pC);
                T(r,:) = T(r,:) - (elim_fact .* T(pR,:)); % make pivotColm==0
            end
        end
        
        [pR,pC] = pivotElem(T);        
        itr = itr+1;
    end
    
end