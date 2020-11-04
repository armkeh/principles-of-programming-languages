# Our top-level ULTerm class defines some default
# methods to track what kind of term we have
# (which must be overidden in non-default cases)
# as well as the shift, substitute and eval methods
# which are defined in terms of other methods
# defined by the subclasses.
class ULTerm

  # By default, we assume terms are irreducible,
  # not abstractions, and not values.
  # Subclasses which should have these properties
  # must override these methods.
  # (In our basic calculus with call-by-value semantics,
  # only applications are reducible and only abstractions
  # are values. This can be changed for different calculi/semantics.)
  def reduce; nil end
  def absBody; nil end
  def isValue?; false end

  # Shifting is just walking, where in the base case,
  # we either increment the variable by shiftAmount or
  # leave it alone.
  def shift(shiftAmount)
    # walk is an iterator.
    # The block tells us what to do with variables.
    walk(0) { |x,currentBinders|
      if x >= currentBinders
        ULVar.new(x+shiftAmount)
      else
        ULVar.new(x)
      end }
  end

  # Substitution is just walking, where we either
  # replace the variable, or leave it alone.
  def substitute(x,r)
    walk(0) { |y,currentBinders|
      if y == x + currentBinders
        r
      else
        ULVar.new(y)
      end }
  end

  def eval
    r = nil
    r_next = self
    # Keep reducing until it fails (reduce returns nil.)
    # This is the recommended "do...while" form in Ruby.
    loop do
      r = r_next
      r_next = r.reduce
      break unless r_next
    end

    return r
  end
end

class ULVar < ULTerm
  attr_reader :index

  # We require our variables are only indexed by integers.
  def initialize(i)
    unless i.is_a?(Integer)
      throw "Constructing a lambda term out of non-lambda terms"
    end
    @index = i
  end
  
  def walk(currentBinders,&block)
    # This is a variable. Run the code in &block.
    # (yield does this; it "yields" control to the block.)
    yield(@index, currentBinders)
  end

  def to_s
    @index.to_s
  end
end

class ULAbs < ULTerm
  attr_reader :t

  def initialize(t)
    unless t.is_a?(ULTerm)
      throw "Constructing a lambda term out of a non-lambda term"
    end
    @t = t
  end
  
  def walk(currentBinders,&block)
    # Increment the local variable counter within the variable binder.
    t = @t.walk(currentBinders+1,&block)
    ULAbs.new(t)
  end

  # Abstractions are an abstraction (of course),
  # with body @t,
  # and are also considered values.
  def absBody; @t end
  def isValue?; true end
  
  def to_s
    "lambda . " + @t.to_s
  end
end

class ULApp < ULTerm
  attr_reader :t1
  attr_reader :t2

  def initialize(t1,t2)
    unless t1.is_a?(ULTerm) && t2.is_a?(ULTerm)
      throw "Constructing a lambda term out of non-lambda terms"
    end
    @t1 = t1; @t2 = t2
  end
  
  def walk(currentBinders,&block)
    t1 = @t1.walk(currentBinders,&block)
    t2 = @t2.walk(currentBinders,&block)
    ULApp.new(t1,t2)
  end

  # Applications can be reduced.
  def reduce
    if @t1.absBody && @t2.isValue?
      body = @t1.absBody
      (body.substitute(0,@t2.shift(1))).shift(-1)
    elsif @t1.isValue?
      print "Reducing an argument\n"
      r = @t2.reduce
      if r
        ULApp.new(@t1,r)
      else
        nil
      end
    else
      print "Reducing a function\n"
      r = @t1.reduce
      if r
        ULApp.new(r,@t2)
      else
        nil
      end
    end
  end

  def to_s
    "(" + @t1.to_s + ") (" + @t2.to_s + ")" 
  end
end
