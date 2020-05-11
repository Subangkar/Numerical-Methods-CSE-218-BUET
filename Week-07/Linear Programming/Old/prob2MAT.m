function tab = prob2MAT()

    t = zeros(1,4);

    Z_MAT=[1 -150 -175];
    c = [7 11;10 8;1 0;0 1];
    s=eye(4);

    R = [0 77 80 9 6]';

    tab = [Z_MAT t; t' c s;];
    tab = [tab R];

end