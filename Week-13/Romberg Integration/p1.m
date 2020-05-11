Itrue = 1;
MaxOrder = 16;
MaxErrorPercent = 1;
xmin = 0;
xmax = pi;


[I,Et] = Romberg(@f,xmin,xmax,Itrue,MaxOrder,MaxErrorPercent)