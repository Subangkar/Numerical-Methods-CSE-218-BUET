function [row,col] = pivotElem(T)
    [r,c] = size(T);
    [minVal,col] = min(T(1,:));

    if minVal >= 0
        row=0;
        col=0;
    else
        PivotMAT = T(2:r,col);
        SolnMAT = T(2:r,c);

        [~,row] = posMin(PivotMAT,SolnMAT);

        %RatioMAT = (SolnMAT ./ PivotMAT);
        %[minVal,row] = min(RatioMAT);

        row=row+1;
    end
end