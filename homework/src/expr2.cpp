#include <stdio.h>

int pow(int x, int y){
  int r = 1;
  while (y-- > 0) {
    r *= x;
  }
  return r;
}

class IExpr {
  public:
    virtual int interpret() = 0; // The = 0 makes this a pure virtual method.
    // And the pure virtual method makes this an abstract class.
    // (It cannot be constructed, only used as a superclass.)
};

class Cons : public IExpr {
    int val;
  public:
    Cons(int c);
    int interpret();
};

Cons::Cons(int c) {
  val = c;
}

int Cons::interpret() {
  return val;
}

class Neg : public IExpr {
    IExpr* subexpr;
  public:
    Neg(IExpr* e);
    int interpret();
};

Neg::Neg(IExpr* e) {
  subexpr = e;
}

int Neg::interpret() {
  return - subexpr->interpret();
}

class Abs : public IExpr {
    IExpr* subexpr;
  public:
    Abs(IExpr* e);
    int interpret();
};

Abs::Abs(IExpr* e) {
  subexpr = e;
}

int Abs::interpret() {
  int r = subexpr->interpret();
  return r > -r ? r : -r;
}

class Plus : public IExpr {
    IExpr* subexpr1;
    IExpr* subexpr2;
  public:
    Plus(IExpr* e1, IExpr* e2);
    int interpret();
};

Plus::Plus(IExpr* e1, IExpr* e2){
  subexpr1 = e1;
  subexpr2 = e2;
}

int Plus::interpret() {
  int r1 = subexpr1->interpret();
  int r2 = subexpr2->interpret();
  return r1 + r2;
}

class Times : public IExpr {
    IExpr* subexpr1;
    IExpr* subexpr2;
  public:
    Times(IExpr* e1, IExpr* e2);
    int interpret();
};

Times::Times(IExpr* e1, IExpr* e2){
  subexpr1 = e1;
  subexpr2 = e2;
}

int Times::interpret() {
  int r1 = subexpr1->interpret();
  int r2 = subexpr2->interpret();
  return r1 * r2;
}

class Minus : public IExpr {
    IExpr* subexpr1;
    IExpr* subexpr2;
  public:
    Minus(IExpr* e1, IExpr* e2);
    int interpret();
};

Minus::Minus(IExpr* e1, IExpr* e2){
  subexpr1 = e1;
  subexpr2 = e2;
}

int Minus::interpret() {
  int r1 = subexpr1->interpret();
  int r2 = subexpr2->interpret();
  return r1 - r2;
}

class Exp : public IExpr {
    IExpr* subexpr1;
    IExpr* subexpr2;
  public:
    Exp(IExpr* e1, IExpr* e2);
    int interpret();
};

Exp::Exp(IExpr* e1, IExpr* e2){
  subexpr1 = e1;
  subexpr2 = e2;
}

int Exp::interpret() {
  int r1 = subexpr1->interpret();
  int r2 = subexpr2->interpret();
  return pow(r1, r2);
}

int main() {
  Cons five = Cons(5);
  Cons six = Cons(6);
  Neg e1 = Neg(&five);
  Exp e2 = Exp(&five, &six);

  printf("neg 5 evaluates to %d\n", e1.interpret());
  printf("exp 5 6 evaluates to %d\n", e2.interpret());
  return 0;
}
