function T = simplex_max(T)

    [rmax,cmax] = size(T);
    [pivR,pivC]=pivot_row_colm(T);
    itr=0;
    pivot = T(pivR,pivC)
    while(itr<5 && pivR~=0 && T(pivR,pivC)~=0)
        
        T(pivR,1:cmax) = T(pivR,1:cmax) ./ pivot;

        for r=1:rmax
            if(r~=pivR)
                fact = T(r,pivC);%/T(pivR,pivC);
                T(r,1:cmax) = T(r,1:cmax) - fact*T(pivR,1:cmax);
            end
          %  disp(T)
        end
     %   T
        [pivR,pivC]=pivot_row_colm(T)
        %pivot = T(pivR,pivC)
        %itr=itr+1;
    end
end