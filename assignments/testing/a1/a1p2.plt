:- begin_tests(a1p2).
:- include(a1p2).

test('Constant expression 0 is expression', nondet) :-
        isExpr(constE(0)).
test('Additive expression 5 + 4 is expression', nondet) :-
        isExpr(plusE(constE(5),constE(4))).
test('Exponential expression 5 ^ 4 is expression', nondet) :-
        isExpr(expE(constE(5),constE(4))).

test('Constant expression 0', nondet) :-
        interpretExpr(constE(0),0).
test('Additive expression 5 + 4', nondet) :-
        interpretExpr(plusE(constE(5),constE(4)),9).
test('Exponential expression 5 ^ 4', nondet) :-
        interpretExpr(expE(constE(5),constE(4)),625).
