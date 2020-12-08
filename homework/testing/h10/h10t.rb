require_relative "h10"
require "test/unit"

RESULT = summingPairs(INPUT,2020)

class SimpleTests < Test::Unit::TestCase
  def test_contains_checks
    assert_equal(true, RESULT.include?(Pair.new(374, 150)))
    assert_equal(true, RESULT.include?(Pair.new(626, 1030)))
    assert_equal(true, RESULT.include?(Pair.new(150, 1850)))
  end
end
