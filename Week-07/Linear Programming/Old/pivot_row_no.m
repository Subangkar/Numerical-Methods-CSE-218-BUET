function pivotRow = pivot_row_no(x)

[r,c] = size(x);

pivotRow=0;

[minVal,minColm] = min(x(1,1:c));

if minVal<0
    [~,pivotRow] = min(x(2:r,minColm));
end

end