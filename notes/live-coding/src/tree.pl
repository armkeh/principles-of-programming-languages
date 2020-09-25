isBinTree(empty).
isBinTree(node(L,_,R)) :- isBinTree(L), isBinTree(R).

isLeafTree(leaf(_)).
isLeafTree(branch(L,R)) :- isLeafTree(L), isLeafTree(R).

% Inserting into trees.

binInsert(E,empty,node(empty,E,empty)).
binInsert(E,node(L,A,R),node(binInsert(E,L),A,R)).



% Inserting into trees *nondeterministically*.
% These versions produce all possible valid inserts!

binInsertND(E,empty,node(empty,E,empty)).
binInsertND(E,node(L,A,R),node(binInsert(E,L),A,R)).
% …
