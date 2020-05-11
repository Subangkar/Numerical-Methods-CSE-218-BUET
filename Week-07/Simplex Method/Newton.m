function xm = Newton(df,d2f,xi,es,max_itr)
    iterNo=0;
    ea = 100;

    while(ea>=es && iterNo <= max_itr)
        xi2 = xi - df(xi)/d2f(xi);

        ea = abs((xi2-xi)/xi2)*100;

        xi = xi2;
        iterNo = iterNo + 1;
    end

    iterNo = iterNo-1; 
    xm=xi2;
    
end