function iterNo = newton_raphson(f,fp,xi,es,max_iteration) % f=f(x) fp = f'(x)

iterNo=0;
ea = 100;

 while(ea>=es && iterNo <= max_iteration)
    xi2 = xi - f(xi)/fp(xi);
    
    ea = abs((xi2-xi)/xi2)*100;
%    ea = abs((xi2-xi)/(xi2+xi))*100;

    xi = xi2;
    iterNo = iterNo + 1;
 end
 
 %root=xi2;
 
 iterNo = iterNo - 1;