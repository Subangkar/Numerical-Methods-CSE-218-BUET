function area = simpson38(f,x)
   area = (x(4)-x(1))/8*(f(x(1))+3*f(x(2))+3*f(x(3))+f(x(4)));
end