function tab = probBounded2()

    t = zeros(1,5);

    Z_MAT=[1 -3 -5 -2];
    c = [1 1 2;2 4 3;1 0 0;0 1 0; 0 0 1];
    s=eye(5);

    R = [0 7 15 4 3 3]';

    tab = [Z_MAT t; t' c s;];
    tab = [tab R];

end