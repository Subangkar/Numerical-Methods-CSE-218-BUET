
    Z=[1/2 3 -5 4];
    C=[1 1 1 1 40;2 1 -1 -1 10;0 -1 0 1 10];
    
    [slack_size,lastColm]=size(C);
	t = zeros(1,slack_size);
	s=eye(slack_size);

    Z = [1 -Z];
    R = [0 C(:,lastColm)']';
    C = C(:,1:lastColm-1);

    
	Tabular_Matrix = [Z t; t' C s;];
	Tabular_Matrix = [Tabular_Matrix R]


MAX_Table=simplex_maxTable(Tabular_Matrix)

[zmax,xopt,yopt]=simplex_MAX(MAX_Table);



