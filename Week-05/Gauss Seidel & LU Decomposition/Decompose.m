function [L,U,b] = Decompose(A,b)

[maxRow,maxColm] = size(A);
U=A;
L=eye(maxRow);

for current_Row=1:maxRow
    current_Colm = current_Row;         % coz sq Matrix
    [~,maxRowDistFromHere] = max(abs(U(current_Row:maxRow,current_Colm))); % ~ to ignore
    row_with_MaxPivot = current_Row+maxRowDistFromHere-1; %% current rowif is counted twice

%    current_Row
%    row_with_MaxPivot
%    U

    if(row_with_MaxPivot~=current_Row) % if other row has max then replace
        U([current_Row,row_with_MaxPivot],:) = U([row_with_MaxPivot,current_Row],:);% pivoting for U
        b([current_Row,row_with_MaxPivot],:) = b([row_with_MaxPivot,current_Row],:);
    end

    for row=current_Row+1:maxRow
        factor = U(row,current_Colm)/U(current_Row,current_Colm); % ?????
        L(row,current_Colm) = factor; % keep values @ colm before 1 @ this row
        U(row,current_Colm:maxColm) = U(row,current_Colm:maxColm) - factor*U(current_Row,current_Colm:maxColm);
    end
    
    
end
