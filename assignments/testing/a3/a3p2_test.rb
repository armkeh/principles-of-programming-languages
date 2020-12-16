require "test/unit"
require_relative "a3"
include GCL

class SimpleTests < Test::Unit::TestCase
  def test_assign_zero
    constant_one = GCConst.new(1)
    assign_constant_one = GCAssign.new(:z, constant_one)
    updated_state = stackEval([assign_constant_one], [], emptyState)

    assert_equal(1, updated_state.call(:z), "Assigning 1 to z did not work.")
  end

  def test_two_possible_assignments_part1
    constant_one = GCConst.new(1)
    constant_two = GCConst.new(2)
    assign_constant_one = GCAssign.new(:y, constant_one)
    assign_constant_two = GCAssign.new(:y, constant_two)
    branch = GCIf.new([[GCTrue.new, assign_constant_one],
                       [GCTrue.new, assign_constant_two]])
    
    # Run the program 50 times, to make relatively sure
    # both possible results (y = 1 and y = 2) are seen.
    results = []
    50.times do results.push(GCL::stackEval([branch], [], emptyState).call(:y)) end

    assert_equal(true,results.include?(1), "An if statement which randomly assigns 1 or 2 never assigned 1.")
  end

  def test_two_possible_assignments_part2
    constant_one = GCConst.new(1)
    constant_two = GCConst.new(2)
    assign_constant_one = GCAssign.new(:y, constant_one)
    assign_constant_two = GCAssign.new(:y, constant_two)
    branch = GCIf.new([[GCTrue.new, assign_constant_one],
                       [GCTrue.new, assign_constant_two]])
    
    # Run the program 50 times, to make relatively sure
    # both possible results (y = 1 and y = 2) are seen.
    results = []
    50.times do results.push(GCL::stackEval([branch], [], emptyState).call(:y)) end

    assert_equal(true,results.include?(2), "An if statement which randomly assigns 1 or 2 never assigned 2.")
  end

  def test_oscillating
    x_var = GCVar.new(:x)
    assign_x_5 = GCAssign.new(:x,GCConst.new(5))
    inc_x_1 = GCAssign.new(:x,GCOp.new(x_var,GCConst.new(1),:plus))
    dec_x_1 = GCAssign.new(:x,GCOp.new(x_var,GCConst.new(1),:minus))
    check_x_less_8    = GCComp.new(x_var,GCConst.new(8),:less)
    check_x_greater_2 = GCComp.new(x_var,GCConst.new(2),:greater)
    check_x_within_3_7 = GCAnd.new(check_x_greater_2,check_x_less_8)
    
    # A program to increment or decrement the value of variable x
    # randomly until it is less than 3 or greater than 7,
    oscillate_x = GCDo.new([[check_x_within_3_7, dec_x_1],
                            [check_x_within_3_7, inc_x_1]])

    assign_then_oscillate = GCCompose.new(assign_x_5, oscillate_x)
    
    # Run the program 50 times, to make relatively sure
    # both possible results (x = 2 and x = 8) are seen.
    results = []
    50.times do results.push(GCL::stackEval([assign_then_oscillate], [], emptyState).call(:x)) end

    assert_equal(true,results.include?(2), "A do statement which oscillates the value of x between 2 and 8 never got to 2.")
    assert_equal(true,results.include?(8), "A do statement which oscillates the value of x between 2 and 8 never got to 8.")
  end

end
