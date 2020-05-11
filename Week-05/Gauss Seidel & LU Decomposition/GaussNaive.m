function x = GaussNaive(A,b)
% GaussNaive: naive Gauss elimination
% x = GaussNaive(A,b): Gauss elimination without pivoting.
% input:
% A = coefficient matrix
% b = right hand side vector
% output:
% x = solution vector
[maxRow,maxColm] = size(A);
if maxRow~=maxRow, error('Matrix A must be square'); end
maxColm = maxRow+1;
Aug = [A b];
% forward elimination
for current_Row = 1:maxRow
    for row = current_Row+1:maxRow
        factor = Aug(row,current_Row)/Aug(current_Row,current_Row);
        Aug(row,current_Row:maxColm) = Aug(row,current_Row:maxColm)-factor*Aug(current_Row,current_Row:maxColm);
    end
end
% back substitution
x = zeros(maxRow,1);
x(maxRow) = Aug(maxRow,maxColm)/Aug(maxRow,maxRow);
for row = maxRow-1:-1:1
    x(row) = (Aug(row,maxColm)-Aug(row,row+1:maxRow)*x(row+1:maxRow))/Aug(row,row);
end