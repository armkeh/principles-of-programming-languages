class Tree
  def sumtree()
    case self
    when Leaf
      0
    when Branch
      # Non-concurrent solution:
      # self.data + self.lchild.sumtree + self.rchild.sumtree

      # Concurrent solution:
      # To communicate betwen processes, we use an IO pipe.
      reader, writer = IO.pipe
      fork do
        sum = self.lchild.sumtree 
        writer.puts(sum) # Print the result to the pipe.
      end
      fork do
        sum = self.rchild.sumtree
        writer.puts(sum) # Print the result to the pipe.
      end
      Process.waitall
      sum1 = reader.gets.to_i   # Read one result and convert it to an integer.
      sum2 = reader.gets.to_i   # Read the other result and convert it.

      self.data + sum1 + sum2
    end
  end
end

class Leaf < Tree
end

class Branch < Tree
  attr_reader :lchild
  attr_reader :rchild
  attr_reader :data

  def initialize(l,v,r)
    @lchild = l
    @rchild = r
    @data = v
  end
end

x = Leaf.new
puts x.sumtree

x = Branch.new(Branch.new(Branch.new(Leaf.new,
                                     5,
                                     Leaf.new),
                         3,
                         Leaf.new),
               1,
               Branch.new(Leaf.new,
                          2,
                          Leaf.new))
puts x.sumtree
