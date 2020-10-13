import $file.a1_testframework, a1_testframework._
import $file.a1p4, a1p4._

val tests = List(
  (interpretMixedExpr(Const(0)), Some(Left(0)), "Constant expression 0"),
  (interpretMixedExpr(Plus(Const(5),Const(4))), Some(Left(9)), "Additive expression 5 + 4"),
  (interpretMixedExpr(Exp(Const(5),Const(4))), Some(Left(625)), "Exponential expression 5 ^ 4"),
  // New tests for this part specifically.
  (interpretMixedExpr(TT),Some(Right(true)),"Constant expression true"),
  (interpretMixedExpr(Band(TT,FF)),Some(Right(false)),"And expression true && false"),
  )

runTests(tests)
