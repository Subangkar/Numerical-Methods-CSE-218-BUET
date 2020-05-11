clear


iterNo = 1:1:50;

x_value = 1.5;

rel_error_Mat = get_approx_error(x_value-1); % 1+x = x_value

iterNo = iterNo(2:50);
rel_error_Mat = rel_error_Mat(2:50);

rel_error_Mat;

plot(iterNo,rel_error_Mat,'-bo');
grid on