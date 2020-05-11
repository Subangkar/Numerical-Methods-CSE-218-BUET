function meanError = getAvgError(x_test,y_test,x_train,f,b,c)
    y_snx = sn(x_test,x_train,f,b,c);
    
    meanError = mean(abs(y_snx-y_test));    
end