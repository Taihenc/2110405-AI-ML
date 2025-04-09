% Define natural numbers using successor notation
natural_number(0).
natural_number(s(X)) :- natural_number(X).

% 2.1
minus(X,0,X) :- natural_number(X).
minus(s(X),s(Y),Z) :- minus(X,Y,Z).

add(0,X,X) :- natural_number(X).
add(s(X),Y,s(Z)) :- add(X,Y,Z).

multiply(0,X,0) :- natural_number(X).
multiply(s(X),Y,Z) :- multiply(X,Y,W),add(W,Y,Z).

% 2.2
power(X,0,s(0)) :- natural_number(X).
power(X,s(Y),Z) :- power(X,Y,W),multiply(W,X,Z).
