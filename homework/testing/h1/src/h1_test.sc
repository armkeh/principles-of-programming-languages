import $file.h1_interface, h1_interface._

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



// Construct some simple trees of each type.
val bt_empty = BT_leaf
val bt_1 = BT_node(BT_leaf, 1, BT_leaf)
val bt_231 = BT_node(BT_node(BT_leaf, 2, BT_leaf), 3, BT_node(BT_leaf, 1, BT_leaf))

val lt_1 = LT_leaf(1)
val lt_231 = LT_node(LT_leaf(2), LT_node(LT_leaf(3), LT_leaf(1)))

// The tests are saved as tuples, the pieces of which will be passed
// to test.
val tests = List(
  (BT_flatten(bt_empty), List(), "Flattening an empty BinTree"),
  (BT_flatten(bt_1), List(1), "Flattening a BinTree singleton"),
  (BT_flatten(bt_231), List(2,3,1), "Flattening 2 / 3 \\ 1"),
  (BT_orderedElems(bt_231), List(1,2,3), "Ordering elements of 2 / 3 \\ 1"),
  (LT_flatten(lt_1), List(1), "Flattening a LeafTree singleton"),
  (LT_flatten(lt_231), List(2,3,1), "Flattening 2 /\\ (3 /\\ 1)"),
  (LT_orderedElems(lt_231), List(1,2,3), "Ordering elements of 2 /\\ (3 /\\ 1)"),
  )

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
