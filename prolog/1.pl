% 1.1
rev(Xs, Ys) :- rev_h(Xs, [], Ys).
rev_h([], Acc, Acc).
rev_h([H|T], Acc, Ys) :- rev_h(T, [H|Acc], Ys).

% 1.2
lastmem([X], X).
lastmem([_|B], L) :- lastmem(B, L).
