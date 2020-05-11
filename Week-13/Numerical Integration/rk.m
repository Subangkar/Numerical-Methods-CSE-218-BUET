function [x,y] = rk(dydx,x_span,y_init,h,a2)

    ti = x_span(1);
    tf = x_span(2);
    x = (ti:h:tf)';
    n = length(x);

    a1 = 1-a2;
    p1 = 0.5/a2;
    q11 = 0.5/a2;
    
    if x(n)<tf
        x(n+1) = tf;
        n = n+1;
    end
    
    y = zeros(n,1);
    y(1) = y_init;
    for i = 1:n-1
        k1 = dydx(x(i),y(i));
        k2 = dydx(x(i)+p1*h,y(i)+q11*k1*h);
        
        y(i+1) = y(i) + (a1*k1+a2*k2)*h;
    end
    
end