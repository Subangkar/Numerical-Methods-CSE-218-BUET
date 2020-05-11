function [root,iterNo] = secant(f,xl,xu,es,max_iteration)
 x1=xl;
 x2=xu;
 
iterNo=0;
ea = abs((x2-x1)/x2)*100;

 while(ea>=es && iterNo <= max_iteration)
    fx2 = f(x2);
    fx1 = f(x1);

    x3 = x2 - (fx2*(x2-x1))/(fx2-fx1);
    
    ea = abs((x3-x2)/x3)*100;

    x1=x2;
    x2=x3;
    
    iterNo = iterNo + 1;
 end
 
 root=x3;