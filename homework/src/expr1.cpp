#include <stdio.h>

int pow(int x, int y){
  int r = 1;
  while (y-- > 0) {
    r *= x;
  }
  return r;
}

enum UOp { neg, abs };
enum BOp { plus, times, minus, exp };

class IExpr {

  enum Arity { constant, unary, binary };

  // An operator is either a UOp or a BOp.
  // Do be careful with such an untagged union!
  union Op {UOp uop; BOp bop;};

  // An IExpr2 is a pair of IExpr's.
  struct IExpr2 {IExpr* fst; IExpr* snd;};

  // The arguments are either:
  // - a single integer (in case of constant),
  // - a single IExpr (in case of unary operator), or
  // - two IExpr's (in case of binary operator).
  // Again, be careful with untagged union type!
  union Arg {int value; IExpr* subexpr; IExpr2 subexprs;};

  Arity ar;
  Op op;
  Arg arg;

  public:
    IExpr(int c);
    IExpr(UOp op, IExpr* e);
    IExpr(BOp op, IExpr* e1, IExpr* e2);
    int interpret();
};

IExpr::IExpr(int c) {
  ar = constant;
  arg.value = c;
}

IExpr::IExpr(UOp uop, IExpr* e) {
  ar = unary;
  op.uop = uop;
  arg.subexpr = e;
}

IExpr::IExpr(BOp bop, IExpr* e1, IExpr* e2) {
  ar = binary;
  op.bop = bop;
  arg.subexprs.fst = e1;
  arg.subexprs.snd = e2;
}

int IExpr::interpret() {
  switch(ar) {
    case constant : { return arg.value; }

    case unary : {
      // Single subexpression to evaluate
      int r = arg.subexpr->interpret();
      switch(op.uop) {
        case neg : { return - r; }
        case abs : { return r > -r ? r : -r; }
      }
    }

    case binary : {
      // Two subexpressions to evaluate
      int r1 = arg.subexprs.fst->interpret();
      int r2 = arg.subexprs.snd->interpret();
      switch(op.bop) {
        case plus  : { return r1 + r2; }
        case times : { return r1 * r2; }
        case minus : { return r1 - r2; }
        case exp   : { return pow(r1,r2); }
      }
    }
  }
}

int main() {
  IExpr five(5);
  IExpr six(6);
  IExpr e1(neg, &five);
  IExpr e2(exp, &five, &six);

  printf("neg 5 evaluates to %d\n", e1.interpret());
  printf("exp 5 6 evaluates to %d\n", e2.interpret());
  return 0;
}
