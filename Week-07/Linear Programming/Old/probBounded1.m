function tab = probBounded1()

    t = zeros(1,4);

    Z_MAT=[1 -2 -5];
    c = [1 2;1 2;1 0;0 1];
    s=eye(4);

    R = [0 20 16 2 8]';

    tab = [Z_MAT t; t' c s;];
    tab = [tab R];

end