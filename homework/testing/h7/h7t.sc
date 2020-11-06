import $file.h7, h7._

val x = ULVar(0)
val y = ULVar(1)
val z = ULVar(2)
val u = ULVar(3)

val appvars = ULApp(ULApp(x,y), ULApp(z,u))
val lappvars = ULAbs(appvars)
val lllappvars = ULAbs(ULAbs(lappvars))

println("a                                                       Sample")
println(prettify(x))
println("b                                                       Sample")
println(prettify(y))
println("((a) (b)) ((c) (d))                                     Sample")
println(prettify(appvars))
println("lambda a . ((a) (b)) ((c) (d))                          Sample")
println(prettify(lappvars))
println("lambda a . lambda b . lambda c . ((c) (b)) ((a) (d))    Sample")
println(prettify(lllappvars))
