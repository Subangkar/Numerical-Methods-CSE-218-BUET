x_min=0;
x_max=4;
h=0.5;
x_span = [x_min,x_max];
x_init = 0;
y_init = 2;


[analytical_x,analytical_y] = analytical(x_span,h);
% scatter(analytical_x,analytical_y,55,'r','filled');
plot(analytical_x,analytical_y,'-*k');
hold on

[euler_x,euler_y] = euler(@f,x_span,y_init,h);
%scatter(euler_x,euler_y,55,'b','filled');
plot(euler_x,euler_y,'-ob');
hold on

% heun Method
a2=1/2;
[heun_x,heun_y] = rk(@f,x_span,y_init,h,a2);
plot(heun_x,heun_y,'-sc');
hold on


a2=1;
[mid_x,mid_y] = rk(@f,x_span,y_init,h,a2);
plot(mid_x,mid_y,'-xr');
hold on


a2=2/3;
[ralston_x,ralston_y] = rk(@f,x_span,y_init,h,a2);
plot(ralston_x,ralston_y,'-dm');



hold off

clear all;