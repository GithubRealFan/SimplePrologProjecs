same([], []).
same([H1|R1], [H2|R2]):-
    H1 = H2,
    same(R1, R2).

is_permutation(GRID) :-
    msort(GRID, SORTED), same(SORTED, [1,2,3,4,5,6,7,8,9]).

divisible(X,Y) :- 0 is X mod Y, !.
divisible(X,Y) :- X > Y+1, divisible(X, Y+1).

prime(2) :- true,!.
prime(X) :- X < 2,!,false.
prime(X) :- not(divisible(X, 2)).

gen(Cur, Top, Cur):- Cur < Top.
gen(Cur, Top, Next):-
  Cur < Top,
  succ(Cur, Cur1),  % or Cur1 is Cur+1
  gen(Cur1, Top, Next).

possible(X, Y, Z) :- 
    gen(123, 360, X), gen(124, 360, Y), gen(125, 360, Z).

acceptable(X, Y, Z) :-
    A1 is X div 100, A2 is (X mod 100) div 10, A3 is X mod 10,
    A4 is Y div 100, A5 is (Y mod 100) div 10, A6 is Y mod 10,
    A7 is Z div 100, A8 is (Z mod 100) div 10, A9 is Z mod 10,
    is_permutation([A1,A2,A3,A4,A5,A6,A7,A8,A9]),
    not(prime(X)), not(prime(Y)), not(prime(Z)),
    X < Y, Y < Z.

trait(X, Y, Z) :-
    possible(X, Y, Z), acceptable(X, Y, Z).