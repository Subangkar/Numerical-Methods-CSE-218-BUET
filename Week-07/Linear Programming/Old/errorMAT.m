function tab = errorMAT()

    t = zeros(1,3);

    Z_MAT=[1 -3 -2];
    c = [2 1;2 3;3 1];
    s=eye(3);

    R = [0 18 42 24]';

    tab = [Z_MAT t; t' c s;];
    tab = [tab R];

end