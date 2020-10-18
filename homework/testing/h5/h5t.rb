require_relative "h5"
require "test/unit"

# BEGIN constants for use in testing ---------------------------
# We use global variables, which is not recommended in Ruby,
# but which makes it simpler to share these values here.
$upto15 = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]

$upto15_fizzbuzzed = ["fizzbuzz","1","2","fizz","4","buzz",
                     "fizz","7","8","fizz","buzz",
                     "11","fizz","13","14","fizzbuzz"]

$fizzbuzz_rules = [[lambda { |x| x % 3 == 0 }, lambda { |x| "fizz" }],
                   [lambda { |x| x % 5 == 0 }, lambda { |x| "buzz" }]]
# END constants for use in testing -----------------------------

# BEGIN fizzbuzzLooper tests -----------------------------------
class TestLooper < Test::Unit::TestCase

  def test_simple
    assert_equal($upto15_fizzbuzzed,fizzbuzzLooper($upto15))
  end

end
# END fizzbuzzLooper tests -------------------------------------

# BEGIN fizzbuzzIterator tests ---------------------------------
class TestIterator < Test::Unit::TestCase

  def test_simple
    assert_equal($upto15_fizzbuzzed,fizzbuzzIterator($upto15))
  end

end
# END fizzbuzzIterator tests -----------------------------------

# BEGIN zuzzer tests -------------------------------------------
class TestZuzzer < Test::Unit::TestCase

  def test_simple
    assert_equal($upto15_fizzbuzzed,zuzzer($upto15,$fizzbuzz_rules))
  end

end
# END zuzzer tests ---------------------------------------------
