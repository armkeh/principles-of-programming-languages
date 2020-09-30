:- begin_tests(h3).
:- include(h3).

% One way to "name" values is to use predictes such as these.
% Then a variable can be bound to the values here using the predicate.
largeLeafTree(T) :-
    T = branch(
         branch(
          branch(leaf(10),leaf(-2)),
          branch(leaf(3),leaf(400))),
         branch(
          branch(leaf(55),leaf(6)),
          branch(leaf(777),leaf(88888888)))).
largeLeafTreeFlat(L) :-    L = [10,-2,3,400,55,6,777,88888888].
largeLeafTreeOrdered(L) :- L = [-2,3,6,10,55,400,777,88888888].

largeBinTree(T) :-
    T = node(
         node(
          node(empty,1,empty),
          22,
          node(empty,-3,empty)),
         404,     
         node(
          node(empty,50,node(empty,6,empty)),
          7777777,
          node(node(empty,-88,empty),9001,empty))).
largeBinTreeFlat(L) :-    L = [1,22,-3,404,50,6,7777777,-88,9001].
largeBinTreeOrdered(L) :- L = [-88,-3,1,6,22,50,404,9001,7777777].


% The tests

test(flatten_leaf, nondet) :- flatten(leaf(5),[5]).
test(flatten_branch, nondet) :- flatten(branch(leaf(1),leaf(2)),[1,2]).
test(flatten_large_leaftree, nondet) :- largeLeafTree(X), largeLeafTreeFlat(L), flatten(X,L).

test(order_leaf, nondet) :- elemsOrdered(leaf(5),[5]).
test(order_branch, nondet) :- elemsOrdered(branch(leaf(1),leaf(2)),[1,2]).
test(order_large_leaftree, nondet) :- largeLeafTree(X), largeLeafTreeOrdered(L), elemsOrdered(X,L).

test(flatten_empty, nondet) :- flatten(empty,[]).
test(flatten_node, nondet) :- flatten(node(empty,5,empty),[5]).
test(flatten_large_bintree, nondet) :- largeBinTree(X), largeBinTreeFlat(L), flatten(X,L).

test(order_empty, nondet) :- elemsOrdered(empty,[]).
test(order_node, nondet) :- elemsOrdered(node(empty,5,empty),[5]).
test(order_large_bintree, nondet) :- largeBinTree(X), largeBinTreeOrdered(L), elemsOrdered(X,L).
