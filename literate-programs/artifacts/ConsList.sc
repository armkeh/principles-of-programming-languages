sealed trait ConsList[A]
case class Empty[A]() extends ConsList[A]
case class Cons[A](hd: A, tl: ConsList[A]) extends ConsList[A]

def sum(xs: ConsList[Int]): Int = xs match {
  case Empty() => 0
  case Cons(hd, tl) => hd + sum(tl)
}

def append[A](xs: ConsList[A], ys: ConsList[A]): ConsList[A] =
  xs match {
    case Empty() => ys
    case Cons(hd, tl) => Cons(hd, append(tl, ys))
  }
