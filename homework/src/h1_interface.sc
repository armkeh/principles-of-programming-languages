import $file.h1, h1._
// Fill in your constructors here.

def BT_node[A](l: BinTree[A], a: A, r: BinTree[A]): BinTree[A] = ???
def BT_leaf[A]: BinTree[A] = ???
def BT_flatten[A](t: BinTree[A]): List[A] = ???
def BT_orderedElems(t: BinTree[Int]): List[Int] = ???

def LT_node[A](l : LeafTree[A], r: LeafTree[A]): LeafTree[A] = ???
def LT_leaf[A](a: A): LeafTree[A] = ???
def LT_flatten[A](t: LeafTree[A]): List[A] = ???
def LT_orderedElems(t: LeafTree[Int]): List[Int] = ???
