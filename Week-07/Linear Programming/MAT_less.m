function Tabular_Matrix = MAT_less()


%%% Prob-2 Matrix %%%

    Z = [150 175];
    C = [7 11 77;10 8 80;1 0 9;0 1 6];

%%%%%%%%%%%%%%%%%%%%%%%%
%}



%%% Arbitary %%%

%%%%%%%%%%%%%%%%%%%%%%%%
%}







%{
%%%% A2 Matrix :: Ans = 9.3079 %%%%

    Z = [1.75 1.25];
    C = [1.2 2.25 14;1 1.1 8;2.5 1 9];

%%%%%%%%%%%%%%%%%%%%%%%
%}
    


%{
%%%% B1 Matrix :: Ans = 72 %%%%

    Z = [6 8];
    C = [5 2 40;6 6 60;2 4 32];

%%%%%%%%%%%%%%%%%%%%%%%
%}
    
    
%{
%%%% B2 Matrix :: Ans = 6.667 %%%%

     Z = [40 30];
     C = [1 2 1/6;1 1 9;3 2 2/4];

%%%%%%%%%%%%%%%%%%%%%%%
%}
    
    
%{
%%%% Okay Ans = 4400 %%%%

    Z = [7 8 10];
    C = [2 3 2 1000;1 1 2 800];

%%%%%%%%%%%%%%%%%%%%%%%
%}
    





	[slack_size,lastColm]=size(C);
	t = zeros(1,slack_size);
	s=eye(slack_size);

    Z = [1 -Z];
    R = [0 C(:,lastColm)']';
    C = C(:,1:lastColm-1);

    
	Tabular_Matrix = [Z t; t' C s;];
	Tabular_Matrix = [Tabular_Matrix R];

end