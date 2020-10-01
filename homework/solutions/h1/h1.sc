sealed trait LeafTree[A]
case class Leaf[A](a: A) extends LeafTree[A]
case class Branch[A](l: LeafTree[A], r: LeafTree[A]) extends LeafTree[A]

sealed trait BinTree[A]
case class Empty[A]() extends BinTree[A]
case class Node[A](l: BinTree[A], a: A, r: BinTree[A]) extends BinTree[A]

sealed trait StructTree[A,B]
case class StructLeaf[A,B](b: B) extends StructTree[A,B]
case class StructNode[A,B](l: StructTree[A,B], a: A, r: StructTree[A,B])
  extends StructTree[A,B]



def flatten[A](xs: LeafTree[A]): List[A] = xs match {
  case Leaf(a) => List(a)
  case Branch(l,r) => flatten(l) ++ flatten(r)
/*      translates to flatten(l).++(flatten(r))
  which translates to flatten(l).concat(flatten(r)) */
  }

def flatten[A](xs: BinTree[A]): List[A] = xs match {
  case Empty() => List()
  case Node(l,a,r) => flatten(l) ++ List(a) ++ flatten(r)
}


// Credit to http://learnyouahaskell.com/recursion,
// which I translated here.
def quickSort(xs: List[Int]): List[Int] = xs match {
  case Nil => Nil
  case x :: xs =>
    {
      val pivot = x
      val smaller = for(i <- xs if i <= x) yield i
      val bigger = for(i <- xs if i > x) yield i
      val smallSorted = quickSort(smaller)
      val bigSorted = quickSort(bigger)
      return smallSorted ++ List(x) ++ bigSorted
    }
}

// The most elegant solution is to reuse flatten,
// and sort the resulting list.
def orderedElems(xs: LeafTree[Int]): List[Int] = quickSort(flatten(xs))
def orderedElems(xs: BinTree[Int]): List[Int] = quickSort(flatten(xs))
