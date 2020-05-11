function x = GaussPivot(U)
% GaussPivot: Gauss elimination pivoting
% x = GaussPivot(A,b): Gauss elimination with pivoting.
% input:
% A = coefficient matrix
% b = right hand side vector
% output:
% x = solution vector

[maxRow,maxColm]=size(U);

%if m~=maxRow, error('Matrix A must be square'); end

% forward elimination
for current_Row = 1:maxRow
% partial pivoting
[~,maxRowNo]=max(abs(U(current_Row:maxRow,current_Row))); % row no of passed mat

row_MaxPivot=maxRowNo+current_Row-1;

    if row_MaxPivot~=current_Row % replace
        U([current_Row,row_MaxPivot],:)=U([row_MaxPivot,current_Row],:);
    end
    
    for row = current_Row+1:maxRow % for making the colm 0 traverse row wise
        factor=U(row,current_Row)/U(current_Row,current_Row);
        U(row,current_Row:maxColm)=U(row,current_Row:maxColm)-factor*U(current_Row,current_Row:maxColm);
    end
end

% back substitution
U
x = zeros(maxRow,1);
x(maxRow)=U(maxRow,maxColm)/U(maxRow,maxRow);
for maxRowNo = maxRow-1:-1:1
    x(maxRowNo)=(U(maxRowNo,maxColm)-U(maxRowNo,maxRowNo+1:maxRow)*x(maxRowNo+1:maxRow))/U(maxRowNo,maxRowNo);
end