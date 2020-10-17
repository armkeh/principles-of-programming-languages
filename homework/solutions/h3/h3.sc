// An imperative-style prime check.
def isPrime(n: Int): Boolean = {
  if (n < 2) return false

  // For efficiency, we can check up to only sqrt of n.
  val sqrt_n = (math.sqrt(n.toDouble)).toInt
  
  for (i <- 2 to sqrt_n if n % i == 0) return false

  return true
}

def isPalindrome[A](xs: List[A]): Boolean = xs match {
  case Nil => true
  case _ :: Nil => true
  case (x :: xs) => x == xs.last && isPalindrome(xs.dropRight(1))
}

def digitList(n: Int): List[Int] = {
  // Treat negatives as if they were positive.
  val abs_n = n.abs

  if(0 <= abs_n && abs_n <= 9)
    List(abs_n)
  else
    digitList(abs_n / 10) ++ List(abs_n % 10)
}

def isPrimePalindrome(n: Int): Boolean = isPrime(n) && isPalindrome(digitList(n))
