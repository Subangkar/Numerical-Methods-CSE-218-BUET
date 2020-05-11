function area = simpson13(f,x)
    %x
    area = (x(3)-x(1))/6*(f(x(1))+4*f(x(2))+f(x(3)));

end