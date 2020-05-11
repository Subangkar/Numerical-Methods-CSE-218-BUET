function area = trapezoid(f,a,b,n)
    h=(b-a)/n;
    area = (h/2)*(f(a)+f(b));
    for i=1:n-1
        area = area + h*(f(a+i*h));
    end
end