es=0.0001;
xi=1;


x=linspace(0,1.5,15);
plot(x,f(x),'-ro');

x_fmax = Newton(@df,@d2f,xi,es,50)

fmax = f(x_fmax)

%disp(fmax);