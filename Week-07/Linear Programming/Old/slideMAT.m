function tab = slideMAT()

    t = zeros(1,3);

    Z_MAT=[1 -13 -11];
    c = [4 5;5 3;1 2];
    s=eye(3);

    R = [0 1500 1575 420]';

    tab = [Z_MAT t; t' c s;];
    tab = [tab R];

end