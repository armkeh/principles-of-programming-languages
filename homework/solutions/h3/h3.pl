flatten(leaf(X),[X]).
flatten(branch(L,R),Xs) :- flatten(L,Ls), flatten(R,Rs), append(Ls,Rs,Xs).

flatten(empty,[]).
flatten(node(L,A,R),Xs) :- flatten(L,Ls), flatten(R,Rs), append(Ls,[A|Rs],Xs).

isSorted([]).
isSorted([_]).
isSorted([H,N|T]) :- H =< N, isSorted([N|T]).

bubble([],[]).
bubble([X],[X]).
bubble([X1,X2|Xs],[X1|Ys]) :- X1 =< X2, bubble([X2|Xs],Ys).
bubble([X1,X2|Xs],[X2|Ys]) :- X1 > X2, bubble([X1|Xs],Ys).

bubbleSort(X,X) :- isSorted(X), !.
% Note: this is very inefficient, but hopefully easy to understand.
bubbleSort(X,Y) :- bubble(X,Z), bubbleSort(Z,Y).

orderedElems(leaf(X),[X]).
orderedElems(branch(L,R),X) :- flatten(branch(L,R),Y), bubbleSort(Y,X).

orderedElems(empty,[]).
orderedElems(node(L,A,R),X) :- flatten(node(L,A,R),Y), bubbleSort(Y,X).
