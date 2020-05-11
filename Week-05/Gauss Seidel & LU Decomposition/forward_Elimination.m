function U = forward_Elimination(A)

[maxRow,maxColm] = size(A);
U=A;

for current_Row=1:maxRow
    current_Colm = current_Row;         % coz sq Matrix
    [~,maxRowDistFromHere] = max(abs(U(current_Row:maxRow,current_Colm))); % ~ to ignore
    row_with_MaxPivot = current_Row+maxRowDistFromHere-1; %% current rowif is counted twice

    if(row_with_MaxPivot~=current_Row) % if other row has max then replace
        U([current_Row,row_with_MaxPivot],:) = U([row_with_MaxPivot,current_Row],:);% pivoting for U
    end
        
    for row=current_Row+1:maxRow
        factor = U(row,current_Colm)/U(current_Row,current_Colm); % ?????
        U(row,current_Colm:maxColm) = U(row,current_Colm:maxColm) - factor*U(current_Row,current_Colm:maxColm);
    end
        
end
