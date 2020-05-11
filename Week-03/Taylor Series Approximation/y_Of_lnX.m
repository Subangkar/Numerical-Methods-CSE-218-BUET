function y_matrix = y_Of_lnX(x_matrix,termNo) % calculates ln(1+x) for every x

[size_row,size_colm] = size(x_matrix);
y_matrix = x_matrix;

for x_idx=1:size_colm
    y_matrix(x_idx)=lnX(x_matrix(x_idx),termNo);
end