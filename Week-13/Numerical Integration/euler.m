function [x,y] = euler(dydx,x_span,y_init,h)
    ti = x_span(1);
    tf = x_span(2);
    x = (ti:h:tf)';
    n = length(x);

    if x(n)<tf
        x(n+1) = tf;
        n = n+1;
    end
    
    y = zeros(n,1);
    y(1) = y_init;
    for i = 1:n-1
        y(i+1) = y(i) + dydx(x(i),y(i))*h;
    end
    
end