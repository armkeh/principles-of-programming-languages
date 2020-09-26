isBinTree(empty).
isBinTree(node(L,_,R)) :- isBinTree(L), isBinTree(R).

isLeafTree(leaf(_)).
isLeafTree(branch(L,R)) :- isLeafTree(L), isLeafTree(R).

% Inserting into trees.

% Inserting into the empty tree creates a node containing E,
% with empty subtrees.
binInsert(E,
          empty,
          node(empty,E,empty)).

% Inserting into a node
% inserts it into the left subtree.
% (This implementation arbitrarily chosen.)
binInsert(E,
          node(L,A,R),
          node(NL,A,R)) :- binInsert(E,L,NL).



% Inserting into BinTrees *nondeterministically*.
% This version could be made to produce all possible valid inserts!

% There's only one way to insert into the empty tree.
binInsertND(E,empty,node(empty,E,empty)).

% But there are at least 2 ways we can insert into a nonempty tree.
binInsertND(E,node(L,A,R),node(NL,A,R)) :- binInsertND(E,L,NL).
binInsertND(E,node(L,A,R),node(L,A,NR)) :- binInsertND(E,R,NR).



% Inserting into a leaf results in a branch with two leaves.
leafInsert(E,
           leaf(A),
           branch(leaf(A),leaf(E))).

% Inserting into a branch inserts it into the right subtree.
% (again, this is an arbitrary choice.)
leafInsert(E,
           branch(L,R),
           branch(L,NR)) :- leafInsert(E,R,NR).



% Inserting into LeafTrees nondeterministically.

% We have two choices for inserting into a leaf.
leafInsertND(E,
             leaf(A),
             branch(leaf(A),leaf(E))).
leafInsertND(E,
             leaf(A),
             branch(leaf(E),leaf(A))).


% And there are at least 2 ways we can insert into a branch.
leafInsertND(E,
             branch(L,R),
             branch(L,NR)) :- leafInsertND(E,R,NR).
leafInsertND(E,
             branch(L,R),
             branch(NL,R)) :- leafInsertND(E,L,NL).
