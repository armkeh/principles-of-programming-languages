Pair = Struct.new(:fst,:snd)

def summingPairs(xs, sum)
  the_pairs = []
  len = xs.length

  for i in 0..(len-1)
    for j in (i+1)..(len-1)
      if xs[i] + xs[j] <= sum
        the_pairs.push(Pair.new(xs[i],xs[j]))
      end
    end
  end

  return the_pairs
end

require 'date'
require_relative 'collection'

puts "Starting at:   #{DateTime.now.sec} seconds, #{DateTime.now.strftime("%9N")} nanoseconds"
puts summingPairs(INPUT,2020)
puts "Ending at:     #{DateTime.now.sec} seconds, #{DateTime.now.strftime("%9N")} nanoseconds"
