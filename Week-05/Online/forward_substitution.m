function MAT = forward_substitution(L,b)

[maxRow,~] = size(L);
MAT = zeros(maxRow,1);

for row = 1:maxRow
    MAT(row) = b(row) - sum(L(row,1:row-1)*MAT(1:row-1));
    % dr = br - d(1).l(r,1) - d(2).l(r,2) - d(3).l(r,3) - ... - d(r-1).l(r,r-1)
end
