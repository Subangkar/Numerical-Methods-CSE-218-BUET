function [root,iterNo] = false_position(f,xl,xu,es,max_iteration)

iterNo=0;
ea = abs((xu-xl)/xu)*100;

 while(ea>=es && iterNo <= max_iteration)
     
    fxu = f(xu);
    fxl = f(xl);
     
    xr = xu - (fxu*(xu-xl))/(fxu-fxl);
    
    if fxu*f(xr)<0 
        xl=xr;
    else
        xu=xr;
    end
    
    ea = abs((xu-xl)/xu)*100;
    
    iterNo = iterNo + 1;
 end
 
 root=xu;