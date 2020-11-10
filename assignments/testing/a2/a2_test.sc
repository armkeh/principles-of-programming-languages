import $file.a2, a2._
import $file.a2_ulterm, a2_ulterm._

/* Given an expected result and a computed result,
   check if they are equal in value.
   If so, return 0. Otherwise, inform the user, and return 1,
   so the number of failures can be counted. */
def test[A](given: A, expected: A, the_test: String) =
  if (!(given equals expected)) {
    println("+---------------------------------------------------")
    println("| " + the_test + " failed.")
    println("| Expected " + expected + ", got " + given + ".")
    println("+---------------------------------------------------")
    1
  } else {
    0
  }

val providedTests : List[Tuple3[Unit => Any, Any, String]] = List(

  // Positive typechecking test cases
  (_ => typecheck(STZero),                       true, "Typecheck zero"),
  (_ => typecheck(STSuc(STZero)),                true, "Typecheck one"),
  (_ => typecheck(STIsZero(STZero)),             true, "Typecheck iszero zero"),
  (_ => typecheck(STTrue),                       true, "Typecheck true"),
  (_ => typecheck(STFalse),                      true, "Typecheck false"),
  (_ => typecheck(STTest(STTrue,STZero,STZero)), true, "Typecheck test true zero zero"),
  (_ => typecheck(STAbs(STNat,STVar(0))),        true, "Typecheck lambda x : nat . x"),
  (_ => typecheck(STApp(STAbs(STNat,STVar(0)),STZero)), true, "Typecheck (lambda x : nat . x) (zero)"),

  
  // Negative typechecking test cases
  (_ => typecheck(STSuc(STFalse)), false,
    "Successor of false should not typecheck."),
  (_ => typecheck(STVar(0)), false,
    "Free variables should not typecheck"),
  (_ => typecheck(STApp(STAbs(STNat,STVar(0)),STFalse)), false,
    "Applying a boolean to a natural function should not typecheck"),

  // Type erasure tests
  (_ => eraseTypes(STTrue), ULAbs(ULAbs(ULVar(1))), "Erase types of true"),
  (_ => eraseTypes(STSuc(STZero)),
    ULApp(
      // Encoding of suc
      ULAbs( // lambda n .
        ULAbs( // lambda s.
          ULAbs( // lambda z.
            ULApp(ULVar(1),ULApp(ULApp(ULVar(2),ULVar(1)),ULVar(0)))))), // s (n s z)
      // Encoding of zero
      ULAbs( // lambda s .
        ULAbs( // lambda z .
          ULVar(0)))), // z
    "Erase types of one"),
  (_ => eraseTypes(STApp(STAbs(STNat,STVar(0)),STZero)),
    ULApp(ULAbs(ULVar(0)), ULAbs(ULAbs(ULVar(0)))),
    "Erase types of (lambda x : nat . x) (zero)"),
)

def runTests[A](tests: List[Tuple3[Unit => A,A,String]]): Unit = {
  // Apply test to each element of tests, and sum the return values.
  // This is essentially a for loop.
  val failed = tests.foldLeft(0) {
    (failures, next) => next match {
      // Deconstruct the tuple to get its parts
      case (given, expected, the_test) => {
        val failure = try {
          test(given(), expected, the_test)
        } catch {
          case e: Exception => {
            print("Test " + the_test + "encountered exception: ")
            println(e)
            1
          }
        }
        failures + failure
      }
    }
  }
  
  println("+---------------------------------------------------")
  println("| " + failed + " tests failed")
  println("+---------------------------------------------------")
}

runTests(providedTests)
