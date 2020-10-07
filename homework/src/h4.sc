sealed trait Stream[+A]
case object SNil extends Stream[Nothing]
case class Cons[A](a: A, f: Unit => Stream[A]) extends Stream[A]
