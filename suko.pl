sum_list([], 0).
sum_list([H|T], Sum) :-
   sum_list(T, Rest),
   Sum is H + Rest.

same([], []).
same([H1|R1], [H2|R2]):-
    H1 = H2,
    same(R1, R2).

indices([], _, []).
indices([A|B], E, [C|D]) :- nth0(A, E, C), indices(B, E, D).

possible( GRID ) :- permutation(TMP, [9,8,7,6,5,4,3,2,1]), reverse(TMP, GRID).

acceptable(A, B, C, D, L1, S1, L2, S2, L3, S3, GRID) 
	:- same([V1,V2,V3,V4,V5,V6,V7,V8,V9], GRID),
    	sum_list([V1,V2,V4,V5], A), sum_list([V2,V3,V5,V6], B), sum_list([V4,V5,V7,V8], C), sum_list([V5,V6,V8,V9], D), 
    	indices(L1, GRID, P1), sum_list(P1, Q1), Q1 = S1,
    	indices(L2, GRID, P2), sum_list(P2, Q2), Q2 = S2,
    	indices(L3, GRID, P3), sum_list(P3, Q3), Q3 = S3.

suko(A, B, C, D, L1, S1, L2, S2, L3, S3, GRID) 
	:-  possible(GRID), acceptable(A, B, C, D, L1, S1, L2, S2, L3, S3, GRID).
    