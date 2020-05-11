function x = Gauss_Seidel(A,b,es,max_Itertion_Nos)

[maxRow,maxColm] = size(A);

x = zeros(maxRow,1);

ea = zeros(maxRow,1);
ea(1:100 , 1)=100;

iterNo = 0;
while( max(ea) >= es && iterNo < max_Itertion_Nos )
  
    for i = 1:maxRow
        xio = x(i);
        ai = A(i , 1:maxColm );
        
    
        [~,maxRowDistFromHere] = max(abs(A(i:maxRow,i))); % ~ to ignore
        rMax = i+maxRowDistFromHere-1; %% current rowif is counted twice

        if(rMax~=i) % if other row has max then replace
            A([i,rMax],:) = A([rMax,i],:);% pivoting for A
            b([i,rMax],:) = b([rMax,i],:);
        end
        
        if(A(i,i)==0)
            disp('Division By 0');
            break;
        end
        
        x(i) = ( b(i) - ( sum(ai * x) - A(i,i) * x(i) ) ) / A(i,i);
        ea(i) = abs((x(i) - xio)/x(i)) * 100;
    end
    
    iterNo = iterNo + 1;
end