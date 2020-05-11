function X = backward_substitution(U,d)

[maxRow,~] = size(U);
X = zeros(maxRow,1);

for row = maxRow:-1:1
    X(row) = (d(row) - sum(U(row,row:maxRow)*X(row:maxRow)))/U(row,row);
end