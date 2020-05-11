function [x,y] = getSplitedXYMat(x_all,y_all,divPointsNo)
    idx = round(linspace(1,length(x_all),divPointsNo));
    x = zeros(divPointsNo,1);
    y = zeros(divPointsNo,1);
    x_all = x_all';
    y_all = y_all';
    idx = idx';
    
    for i=1:divPointsNo
        x(i) = x_all(idx(i));
        y(i) = y_all(idx(i));
    end
end