import $file.h4, h4._

// Included in case the student did not define it.
// But renamed in case they did.
def testTake[A](n: Int, s: => Stream[A]): List[A] = s match {
  case SNil => Nil
  case Cons(a,f) => n match {
    case n if n > 0 => a :: testTake(n-1,f())
    case _ => Nil
    }
  }

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

// We can define a stream of all natural numbers by
// first defining streams which start at a given integer.
def intsFrom(n: Int): Stream[Int] = Cons(n, _ => intsFrom(n+1))
val nats = intsFrom(0)

// Filter test streams
val evenNats = filter((x: Int) => x % 2 == 0, nats)
val natsGtr100 = filter((x: Int) => x > 100, nats)


// The tests are saved as tuples, the pieces of which will be passed
// to test.
val tests = List(
  (testTake(10,evenNats),
    List(0,2,4,6,8,10,12,14,16,18),
    "First 10 even nats"),
  (testTake(10,natsGtr100),
    List(101,102,103,104,105,106,107,108,109,110),
    "First 10 nats greater than 100"),
  (testTake(10,zip(evenNats,natsGtr100)),
    List((0,101),(2,102),(4,103),(6,104),
         (8,105),(10,106),(12,107),(14,108),(16,109),(18,110)),
    "zip test"),
  (testTake(20,merge(evenNats,natsGtr100)),
    List(0,101,2,102,4,103,6,104,8,105,
      10,106,12,107,14,108,16,109,18,110),
    "merge test"),
  (all((x: Int) => x < 100, nats), false, "not all nats less than 100"),
  (exists((x: Int) => x > 100, nats), true, "exists nat greater than 100"),
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
