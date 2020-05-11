
x=5:1:50;
es=0.05;
max_itertin_no = 5000;


ip = linspace(1,2,50-5+1);
in = linspace(1,2,50-5+1);

for i=5:50
    ip(i-4) = secant(@fx,i,i+1,es,max_itertin_no)
end

disp('Secant ::: ');
%ip



for i=5:50
    in(i-4) = newton_raphson(@fx,@fxp,i,es,max_itertin_no)
end

disp('Newton ::: ');
%in


plot(x,zeros(50-5+1),'-g',x,ip,'-*b',x,in,'-or');


