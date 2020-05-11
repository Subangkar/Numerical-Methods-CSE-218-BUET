function [minRatio,minRow] = posMin(PivotMAT,SolnMAT)
    minRow=-1;
    [lastRow,~]=size(PivotMAT);
    minRatio = 99999999999999;
    
%{    
    if(P(1)>0)
        minRow = 1;
        minVal=A(1);
    end
%}
    
    for i=1:lastRow       
        if(PivotMAT(i)>0)
            curRatio=(SolnMAT(i)/PivotMAT(i));
            if(curRatio>0 && curRatio < minRatio)
                minRow=i;
                minRatio=curRatio;
            end
        end
    end
end