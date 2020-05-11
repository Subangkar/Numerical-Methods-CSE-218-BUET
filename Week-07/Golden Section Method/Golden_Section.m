function xmax=Golden_Section(f,xl,xu,es,max_itr)
    R=(sqrt(5)-1)/2;
    %d = R*(xu-xl);
    x1=0;
    x2=0;
    ea=abs(xu-xl);
    itr=0;
    
    while(ea>=es && itr<=max_itr)

        d = R*(xu-xl);
    
        x1=xl+d;
        x2=xu-d;
        fx1 = f(x1);
        fx2 = f(x2);

        if(fx1>fx2)
            xl=x2;
        end
        if(fx2>fx1)
            xu=x1;
        end

        ea=abs(xu-xl);

        itr=itr+1;
    end

    if(f(x1)>f(x2))
        xmax=x1;
    else
        xmax=x2;
    end

end