function [pivotRow,pivotColm] = pivot_row_colm(x)

    [r,c] = size(x);

    pivotRow=0;

    [minVal,pivotColm] = min(x(1,1:c));

    if minVal<0
        A = x(2:r,c);
        rMat = (A./x(2:r,pivotColm));
        pivotRow = posMinIndex(x(2:r,pivotColm),rMat,r-1)+1;%min( (A./x(2:r,pivotColm) ));%+1 coz starting from 2
    end

end