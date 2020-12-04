def summingPairs(xs: Vector[Int], sum: Int): Vector[Tuple2[Int,Int]] = {
  def summingPairsHelper(xs: Vector[Int],
                         the_pairs: Vector[Tuple2[Int,Int]]): Vector[Tuple2[Int,Int]] =
    xs match {
      case fst +: rest =>
        // Search through `rest` for numbers `snd` such that `fst + snd` is the `sum`.
        val pairs_here = rest.collect({case snd if fst + snd <= sum => (fst,snd)})
        // Make the recursive call, adding in the pairs we just found.
        summingPairsHelper(rest, the_pairs ++ pairs_here)
      case _ => the_pairs // If there's no head element, the vector is empty.
    }
  
  summingPairsHelper(xs,Vector())
}

import java.time.LocalDateTime
import $file.collection, collection._

println(s"Starting at:   ${LocalDateTime.now.getSecond} seconds, ${LocalDateTime.now.getNano} nanoseconds")
println(summingPairs(input,2020))
println(s"Ending at:     ${LocalDateTime.now.getSecond} seconds, ${LocalDateTime.now.getNano} nanoseconds")
