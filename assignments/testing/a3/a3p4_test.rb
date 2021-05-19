require "test/unit"
require_relative "a3"
include GCLe

class SimpleTests < Test::Unit::TestCase
  
  def test_wellscoped1
    assert_equal(true, GCLe::wellScoped(GCProgram.new([:x,:y], GCAssign.new(:x, GCVar.new(:x)))),
                 "global x y; x := x should be well scoped.")
  end

  def test_wellscoped2
    assert_equal(true, GCLe::wellScoped(GCProgram.new([:x,:y], GCAssign.new(:x, GCVar.new(:y)))),
                 "global x y; x := y should be well scoped.")
  end

  def test_wellscoped3
    assert_equal(true, GCLe::wellScoped(GCProgram.new([], GCLocal.new(:x, GCAssign.new(:x, GCVar.new(:x))))),
                 "global; local x in x := x should be well scoped. TEST UPDATED DEC16.")
  end

  def test_not_wellscoped1
    assert_equal(false, GCLe::wellScoped(GCProgram.new([:y], GCAssign.new(:x, GCVar.new(:x)))),
                 "global y; x := x should NOT be well scoped.")
  end

  def test_not_wellscoped2
    assert_equal(false, GCLe::wellScoped(GCProgram.new([:x], GCAssign.new(:x, GCVar.new(:y)))),
                 "global x; x := y should NOT be well scoped.")
  end

  def test_not_wellscoped3
    assert_equal(false, GCLe::wellScoped(GCProgram.new([], GCLocal.new(:y, GCAssign.new(:x, GCVar.new(:y))))),
                 "global; local y in x := y should NOT be well scoped. DESCRIPTION UPDATED DEC16.")
  end

  def test_assign_zero
    constant_one = GCConst.new(1)
    assign_constant_one = GCAssign.new(:z, constant_one)
    updated_state = GCLe::eval(GCProgram.new([:z],assign_constant_one))

    assert_equal(1, updated_state[:z], "Assigning 1 to z did not work.")
  end

  def test_two_possible_assignments_part1
    constant_one = GCConst.new(1)
    constant_two = GCConst.new(2)
    assign_constant_one = GCAssign.new(:t, constant_one)
    assign_constant_two = GCAssign.new(:t, constant_two)
    branch = GCIf.new([[GCTrue.new, assign_constant_one],
                       [GCTrue.new, assign_constant_two]])
    assign_t_to_y = GCAssign.new(:y, GCVar.new(:t))
    the_program = GCProgram.new([:y],GCLocal.new(:t,GCCompose.new(branch, assign_t_to_y)))

    # Run the program 50 times, to make relatively sure
    # both possible results (y = 1 and y = 2) are seen.
    results = []
    50.times do results.push(GCLe::eval(the_program)[:y]) end
  
    assert_equal(true,results.include?(1), "An if statement which randomly assigns 1 or 2 never assigned 1.")
  end

  def test_two_possible_assignments_part2
    constant_one = GCConst.new(1)
    constant_two = GCConst.new(2)
    assign_constant_one = GCAssign.new(:t, constant_one)
    assign_constant_two = GCAssign.new(:t, constant_two)
    branch = GCIf.new([[GCTrue.new, assign_constant_one],
                       [GCTrue.new, assign_constant_two]])
    assign_t_to_y = GCAssign.new(:y, GCVar.new(:t))
    the_program = GCProgram.new([:y],GCLocal.new(:t,GCCompose.new(branch, assign_t_to_y)))

    # Run the program 50 times, to make relatively sure
    # both possible results (y = 1 and y = 2) are seen.
    results = []
    50.times do results.push(GCLe::eval(the_program)[:y]) end
  
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

    the_program = GCProgram.new([:x],assign_then_oscillate)

    # Run the program 50 times, to make relatively sure
    # both possible results (x = 2 and x = 8) are seen.
    results = []
    50.times do results.push(GCLe::eval(the_program)[:x]) end
  
    assert_equal(true,results.include?(2), "A do statement which oscillates the value of x between 2 and 8 never got to 2.")
    assert_equal(true,results.include?(8), "A do statement which oscillates the value of x between 2 and 8 never got to 8.")
  end

end
