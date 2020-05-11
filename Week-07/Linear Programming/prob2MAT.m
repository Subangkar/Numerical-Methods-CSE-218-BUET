function Tabular_Matrix = prob2MAT()

    Z = [150 175];
    C = [7 11 77;10 8 80;1 0 9;0 1 6];


    
    
    [slack_size,lastColm]=size(C);
	t = zeros(1,slack_size);
	s=eye(slack_size);

    
    Z = [1 -Z];
    R = [0 C(:,lastColm)']';
    C = C(:,1:lastColm-1);

    
	Tabular_Matrix = [Z t; t' C s;];
	Tabular_Matrix = [Tabular_Matrix R];
end