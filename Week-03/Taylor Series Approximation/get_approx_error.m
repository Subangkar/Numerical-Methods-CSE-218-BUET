function approx_errorMat = get_approx_error(x_value)

approx_errorMat = zeros(50);
approx_errorMat(1) = 0;

%prev_approx=x_value; % ln(1+x)=x for 1 term
cur_approx=x_value;

for termNos=2:50
    prev_approx = cur_approx;
    cur_approx = cur_approx + (-1)^(termNos+1)*(x_value^termNos)/termNos;
%   approx_errorMat(termNos) = ((x_value^termNos)/termNos)/cur_approx;
    approx_errorMat(termNos) = ((abs(cur_approx-prev_approx))/cur_approx)*100;
  
end

