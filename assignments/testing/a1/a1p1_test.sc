import $file.a1_testframework, a1_testframework._
import $file.a1p1, a1p1._

val tests = List(
  (interpretExpr(Const(0)), 0, "Constant expression 0"),
  (interpretExpr(Plus(Const(5),Const(4))), 9, "Additive expression 5 + 4"),
  (interpretExpr(Exp(Const(5),Const(4))), 625, "Exponential expression 5 ^ 4"),
  )

runTests(tests)
