sumtree(empty,0).
sumtree(branch(T1,V,T2),N) :-
        concurrent(2,[sumtree(T1,N1),sumtree(T2,N2)],[]),
        N is V + N1 + N2.

% Sample trees
t1 :- branch(empty,5,empty).
t2 :- branch(branch(empty,1,empty),2,t1).
