import $file.a1_testframework, a1_testframework._
import $file.a1p2, a1p2._

val tests = List(
  (interpretVarExpr(Const(0)), 0, "Constant expression 0"),
  (interpretVarExpr(Plus(Const(5),Const(4))), 9, "Additive expression 5 + 4"),
  (interpretVarExpr(Exp(Const(5),Const(4))), 625, "Exponential expression 5 ^ 4"),
  // New tests for this part specifically.
  (interpretVarExpr(Subst(Var('x), 'x, Const(0))), 0,
                    "Simple substitution x[x := 0] expression"),
  (interpretVarExpr(Subst(Subst(Plus(Var('x),Var('y)),
                                'x,
                                Const(5)),
                          'y,
                          Const(4))),
                    9, "Nested substitution ((x + y)[x := 5])[y := 4]"),
  )

runTests(tests)
