require_relative "h6"
require "test/unit"

class SimpleTests < Test::Unit::TestCase

  def test_constant_expression_zero
    e = construct_const(0)
    assert_equal(0, e.interpret)
  end

  def test_additive_expression
    e1 = construct_const(5)
    e2 = construct_const(4)
    e = construct_plus(e1,e2)
    assert_equal(9, e.interpret)
  end

  def test_exponential_expression
    e1 = construct_const(5)
    e2 = construct_const(4)
    e = construct_exp(e1,e2)
    assert_equal(625, e.interpret)
  end
end
