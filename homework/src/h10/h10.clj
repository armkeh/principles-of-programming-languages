(defn summingPairs [xs sum]
  (letfn [(summingPairsHelper [xs the_pairs]

            (if (empty? xs) the_pairs


                (let [[fst & rest] xs]


                  (recur
                   rest






                   (doall 
                    (concat the_pairs
                            (for [snd rest ;; For each `snd` in `rest`...
                                  :when (<= (+ fst snd) sum)]

                              [fst snd])))))))]
    (summingPairsHelper xs [])))

(load-file "./collection.clj")

(println (str
          "Starting at:   "
          (.getSecond (java.time.LocalDateTime/now))
          " seconds, "
          (.getNano (java.time.LocalDateTime/now))
          " nanoseconds"))
(println (summingPairs input 2020))
(println (str
          "Ending at:     "
          (.getSecond (java.time.LocalDateTime/now))
          " seconds, "
          (.getNano (java.time.LocalDateTime/now))
          " nanoseconds"))
