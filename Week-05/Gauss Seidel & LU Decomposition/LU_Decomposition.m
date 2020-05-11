function X = LU_Decomposition(A, b)


[L,U,b] = Decompose(A,b); % Ok till here

%%% Solving d by forward-substitution

d = forward_substitution(L,b)

%%%%%%%%%%%%%%%%%%%%%%%%


%%% Solving X by backward-substitution

X = backward_substitution(U,d);

%%%%%%%%%%%%%%%%%%%%%%%%