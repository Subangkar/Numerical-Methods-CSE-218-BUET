function avgError = getAvgError(x_test,y_test,x_train,b)
    l = length(x_test);
    y_pnx = pn(x_test,x_train,b);
    avgError=0;
    for i=1:l
        avgError = avgError + abs((y_pnx(i)-y_test(i))/y_test(i))*100;
    end
    avgError = avgError/l;
end