:- begin_tests(a1p4).
:- include(a1p4).

test('Constant expression 0 is expression', nondet) :-
        isMixedExpr(constE(0)).
test('Additive expression 5 + 4 is expression', nondet) :-
        isMixedExpr(plusE(constE(5),constE(4))).
test('Exponential expression 5 ^ 4 is expression', nondet) :-
        isMixedExpr(expE(constE(5),constE(4))).

test('Constant expression 0', nondet) :-
        interpretMixedExpr(constE(0),0).
test('Additive expression 5 + 4', nondet) :-
        interpretMixedExpr(plusE(constE(5),constE(4)),9).
test('Exponential expression 5 ^ 4', nondet) :-
        interpretMixedExpr(expE(constE(5),constE(4)),625).

% New tests for this part specifically.
test('Constant expression true is expression', nondet) :-
        isMixedExpr(tt).
test('And expression true && false is expression', nondet) :-
        isMixedExpr(band(tt,ff)).
test('Constant expression true', nondet) :-
        interpretMixedExpr(tt,true).
test('And expression true && false', nondet) :-
        interpretMixedExpr(band(tt,ff),false).
