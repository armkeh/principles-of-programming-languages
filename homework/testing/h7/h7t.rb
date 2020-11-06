require_relative "h7"

x = ULVar.new(0)
y = ULVar.new(1)
z = ULVar.new(2)
u = ULVar.new(3)

appvars = ULApp.new(ULApp.new(x,y), ULApp.new(z,u))
lappvars = ULAbs.new(appvars)
lllappvars = ULAbs.new(ULAbs.new(lappvars))

puts "a                                                       Sample"
puts x.prettify
puts "b                                                       Sample"
puts y.prettify
puts "((a) (b)) ((c) (d))                                     Sample"
puts appvars.prettify
puts "lambda a . ((a) (b)) ((c) (d))                          Sample"
puts lappvars.prettify
puts "lambda a . lambda b . lambda c . ((c) (b)) ((a) (d))    Sample"
puts lllappvars.prettify
