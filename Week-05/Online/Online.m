
A=[
2.04   -1   0   0;

-1  2.04   -1   0;

0  -1   2.04   -1;

0   0   -1   2.04;
];

b = [40.8 0.8 0.8 200.8]'

[l,u]=lu_trig(A);

d=forward_substitution(l,b)
x=backward_substitution(u,d);

disp(x);