%A = [3 -9.1 -0.2;0.3 -0.2 10;0.1 7 -0.3];
A = [ 3 -.1 -.2; 0.1 7 -.3; 0.3 -0.2 10]
b = [7.85; -19.3; 71.4;];


%A = [ 3 2; 1 -1];
%b = [23 1];

%b = [-4 3 2 -14 2];

%A = [0.1 7 -0.3; 3 -0.1 -0.2; 0.3 -0.2 10;];
%b = [-19.3; 7.85; 71.4;];

%A = [3 3 2 3 5;1 2 3 4 5; 1 4 3 8 1;7 4 2 3 2;4 4 4 4 4];
%b = [11 35 50 63 60];


A = [9 7 8;2 4 7;3 31 5;]
b = [5; 9; 6;]

%[l,u]=Decompose(A);

%[l,u]=lu(A);
%A=[9 7 8;2 4 7;3 31 5];
%b=[5;9;6];

%A=[ 0 1 6;2 4 3;7 1 0;];
%b=[2; 3; 3;];

%A=[ 1 2 3;2 3 4;3 4 5;];
%b=[3; 5; 2; ];

%[l ,u, b] = Decompose(A,b)

%(l*u)

%forward_Elimination([A b])

LU_Decomposition(A,b)

%A=[1 1;1 -1];
%b= [9 1];

Gauss_Seidel(A,b,0.02,50)

%GaussNaive(A,b)
