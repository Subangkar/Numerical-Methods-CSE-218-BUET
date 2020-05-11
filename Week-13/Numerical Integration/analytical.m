function [x,y] = analytical(x_span,h) %x_min,x_max
%     x = x_min:h:x_max;
    x = x_span(1):h:x_span(2);
%     y = (4/1.3)*(exp(0.8*x)-exp(-0.5*x))+2*exp(-0.5*x);
    y = (x.^5)/5-(x.^3)/3+3*x+2;
end