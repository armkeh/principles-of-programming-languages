class STType end

class STNat < STType
  # Comparison and printing methods
  def ==(type); type.is_a?(STNat) end
  def to_s; "nat" end
end

class STBool < STType
  # Comparison and printing methods
  def ==(type); type.is_a?(STBool) end
  def to_s; "bool" end
end

# Functions have a domain type and a codomain type.
class STFun < STType
  attr_reader :dom
  attr_reader :codom
  
  def initialize(dom, codom)
    unless dom.is_a?(STType) && dom.is_a?(STType)
      throw "Constructing a type out of non-types"
    end
    @dom = dom; @codom = codom
  end

  # Comparison and printing methods
  def ==(type); type.is_a?(STFun) && type.dom == @dom && type.codom == @codom end 
  def to_s; "(" + dom.to_s + ") -> (" + codom.to_s + ")" end
end

# Example use: the type "nat -> bool" is written STFun.new(STNat.new,STBool.new)
