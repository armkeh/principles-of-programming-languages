:- begin_tests(a1p3).
:- include(a1p3).

test('Constant expression 0 is expression', nondet) :-
        isVarExpr(constE(0)).
test('Additive expression 5 + 4 is expression', nondet) :-
        isVarExpr(plusE(constE(5),constE(4))).
test('Exponential expression 5 ^ 4 is expression', nondet) :-
        isVarExpr(expE(constE(5),constE(4))).

test('Constant expression 0', nondet) :-
        interpretVarExpr(constE(0),0).
test('Additive expression 5 + 4', nondet) :-
        interpretVarExpr(plusE(constE(5),constE(4)),9).
test('Exponential expression 5 ^ 4', nondet) :-
        interpretVarExpr(expE(constE(5),constE(4)),625).

% New tests for this part specifically.
test('Simple substitution x[x := 0] is expression', nondet) :-
        isVarExpr(subst(var(x),x,constE(0))).
test('Nested substitution ((x + y)[x := 5])[y := 4] is expression', nondet) :-
        isVarExpr(subst(subst(plusE(var(x),var(y)),
                              x,
                              constE(5)),
                        y,
                        constE(4))).
test('Simple substitution x[x := 0]', nondet) :-
        interpretVarExpr(subst(var(x),x,constE(0)),0).
test('Nested substitution ((x + y)[x := 5])[y := 4]', nondet) :-
        interpretVarExpr(subst(subst(plusE(var(x),var(y)),
                                     x,
                                     constE(5)),
                               y,
                               constE(4)),
                         9).
