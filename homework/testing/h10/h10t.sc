import $file.h10, h10._
import $file.collection, collection._

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


val result = summingPairs(input,2020)

//  The tests are saved as tuples, the pieces of which will be passed
// to test.
val tests = List(
  (result.contains(Tuple2(374,150)), true, "374,150"),
  (result.contains(Tuple2(626,1030)), true, "626,1030"),
  (result.contains(Tuple2(150,1850)), true, "150,1850"))

// Apply test to each element of tests, and sum the return values.
// This is essentially a for loop.
val failed = tests.foldLeft(0) {
  (failures, next) => next match {
    // Deconstruct the tuple to get its parts
    case (given, expected, the_test) => failures + test(given, expected, the_test)
  }
}

println("+---------------------------------------------------")
println("| " + failed + " tests failed")
println("+---------------------------------------------------")
