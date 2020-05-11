function [b,c] = get_Quad_CoEff(x,f)
    n = length(x);
    b = zeros(n-1);
    c = zeros(n-1);
    h = zeros(n-1);
    
    h(1) = x(2) - x(1);
    c(1) = 0;
    b(1) = (f(2)-f(1))/h(1);
    
    for i = 1:(n-2)
        h(i) = x(i+1) - x(i);
        c(i) = (f(i+1) - f(i) - b(i)*h(i))/(h(i)^2);
        b(i+1) = b(i) + 2*c(i)*h(i);
    end
    
    h(n-1) = x(n) - x(n-1);
    c(n-1) = (f(n) - f(n-1) - b(n-1)*h(n-1))/(h(n-1)^2);   
end