import $file.h3, h3._

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

// The tests are saved as tuples, the pieces of which will be passed
// to test.
val tests = List(
  (isPrime(2), true, "Two is prime"),
  (isPrime(53), true, "Fifty three is prime"),
  (isPrime(8), false, "Eight is not prime"),
  (isPrime(63), false, "Sixty-three is not prime"),
  (isPalindrome(List()), true, "Empty palindrome"),
  (isPalindrome(List(1,1)), true, "Pair palindrome"),
  (isPalindrome(List('s','t','e','p','o','n','n','o','p','e','t','s')), true, "step on no pets palindrome"),
  (isPalindrome(List(12,21)), false, "Palindrome elements are atomic"),
  (primePalindrome(11), true, "Eleven is prime palindrome"),
  (primePalindrome(929), true, "Nine twenty nine is prime palindrome"),
  (primePalindrome(13), false, "Thirteen is not prime palindrome"),
  (primePalindrome(22), false, "Twenty two is not prime palindrome"),
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
