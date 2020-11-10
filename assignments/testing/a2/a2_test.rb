require_relative "a2"
require_relative "a2_ulterm"
require "test/unit"

class ProvidedTests < Test::Unit::TestCase

  # Positive type checking tests
  def test_simple0
    assert_equal(true, STZero.new.typecheck, "Typecheck zero")
  end
  def test_simple1
    assert_equal(true, STSuc.new(STZero.new).typecheck, "Typecheck one")
  end
  def test_simple2
    assert_equal(true, STIsZero.new(STZero.new).typecheck, "Typecheck iszero zero")
  end
  def test_simple3
    assert_equal(true, STTrue.new.typecheck, "Typecheck true")
  end
  def test_simple4
    assert_equal(true, STFalse.new.typecheck, "Typecheck false")
  end
  def test_simple5
    assert_equal(true,
                 STTest.new(STTrue.new,STZero.new,STZero.new).typecheck,
                 "Typecheck test true zero zero")
  end
  def test_simple6
    assert_equal(true,
                 STAbs.new(STNat.new,STVar.new(0)).typecheck,
                 "Typecheck lambda x : nat . x")
  end
  def test_simple7
    assert_equal(true,
                 STApp.new(STAbs.new(STNat.new,STVar.new(0)),STZero.new).typecheck,
                 "Typecheck (lambda x : nat . x) (zero)")
  end

  # Negative typechecking tests  
  def test_simple8
    assert_equal(false,
                 STSuc.new(STFalse.new).typecheck,
                 "Successor of false should not typecheck.")
  end
  def test_simple9
    assert_equal(false,
                 STVar.new(0).typecheck,
                 "Free variables should not typecheck")
  end
  def test_simple10
    assert_equal(false,
                 STApp.new(STAbs.new(STNat.new,STVar.new(0)),STFalse.new).typecheck,
                 "Applying a boolean to a natural function should not typecheck")
  end

  def test_simple11
    assert_equal(ULAbs.new(ULAbs.new(ULVar.new(1))), STTrue.new.eraseTypes, "Erase types of true")
  end
  def test_simple12
    assert_equal(ULApp.new(
                   # Encoding of suc
                   ULAbs.new( # lambda n .
                     ULAbs.new( # lambda s.
                       ULAbs.new( # lambda z.
                         ULApp.new(ULVar.new(1),ULApp.new(ULApp.new(ULVar.new(2),ULVar.new(1)),ULVar.new(0)))))), # s (n s z)
                   # Encoding of zero
                   ULAbs.new( # lambda s .
                     ULAbs.new( # lambda z .
                       ULVar.new(0)))), # z
                 STSuc.new(STZero.new).eraseTypes,
                 "Erase types of one")
  end
  def test_simple13
    assert_equal(ULApp.new(ULAbs.new(          ULVar.new(0)),ULAbs.new(ULAbs.new(ULVar.new(0)))),
                 STApp.new(STAbs.new(STNat.new,STVar.new(0)),STZero.new).eraseTypes,
                 "Erase types of (lambda x : nat . x) (zero)")
  end
end
