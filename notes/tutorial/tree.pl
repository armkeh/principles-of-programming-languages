% Inserting into the empty tree creates a node containing E,
% with empty subtrees.
binInsert(E,
          empty,
          node(empty,E,empty)).

% Inserting into a node
% inserts it into the left subtree.
% (This implementation arbitrarily chosen.)
%
binInsert(E,
          node(L,A,R),
          node(NL,A,R)) :- binInsert(E,L,NL). % NL for "New Left"

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


binDelete(E, node(empty, E, empty), empty).

binDelete(E, node(L,A,R), node(NL, A, R)) :- binDelete(E,L,NL).

% The definition of Leaf Join
leafJoin(leaf(E1),leaf(E2), branch(leaf(E1),leaf(E2))).
leafJoin(leaf(E1),branch(L,R), branch(L, branch(leaf(E1), R))).
leafJoin(branch(L,R), leaf(E2), brach(L, bracnh(leaf(E2), R))).
leafJoin(branch(L1,R1), branch(L2,R2), branch(branch(L1,R1),branch(L2,R2))).
leafJoin(branch(L1,R1), branch(L2,R2), branch(branch(L2,R2), branch(L1,R1))).
leafJoin(branch(L1,R1), branch(L2,R2), branch(branch(L1,R2), branch(L2,R1))).
