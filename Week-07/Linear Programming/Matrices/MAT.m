function tab = MAT()

%{
%%% Okay Ans = 66.667 %%%
     t = zeros(1,3);

     Z_MAT=[1 -3 -2];
     c = [2 1;2 3;3 1];
     s=eye(3);

     R = [0 18 42 24]';
%}


%{
%%%% Okay Ans = 66.667 %%%%
     t = zeros(1,2);

     Z_MAT=[1 -7 -8 -10];
     c = [2 3 2;1 1 2];
     s=eye(2);

     R = [0 1000 800]';
%%%%%%%%%%%%%%%%%%%%%%%
%}
    
%{
%%%% Okay Ans = 66.667 %%%%
     t = zeros(1,3);

     Z_MAT=[1 -40 -30];
     c = [1 2;1 1;3 2];
     s=eye(3);

     R = [0 1/6 9 2/4]';
%%%%%%%%%%%%%%%%%%%%%%%
%}



%%%% Okay Ans = 72 %%%%
    t = zeros(1,3);

    Z_MAT=[1 -6 -8];
    c = [5 2;6 6;2 4];
    s=eye(3);

    R = [0 40 60 32]';
%%%%%%%%%%%%%%%%%%%%%%%
%}
    
    
    
    
    
   
     tab = [Z_MAT t; t' c s;];
     tab = [tab R];

end