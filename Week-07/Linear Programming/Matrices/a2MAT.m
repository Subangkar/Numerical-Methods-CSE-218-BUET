function tab = a2MAT()

    t = zeros(1,3);

    Z_MAT=[1 -1.75 -1.25];
    c = [1.2 2.25;1 1.1;2.5 1];
    s=eye(3);

    R = [0 14 8 9]';

    tab = [Z_MAT t; t' c s;];
    tab = [tab R];

end