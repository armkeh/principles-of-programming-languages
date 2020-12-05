(ns testing)
(use 'clojure.test)
(load-file "h9.clj")



(def compare-10-10
  (let [x 10
        y 10]
    [(GuardedCommand. `(>= ~x ~y) (str x " is >= " y))
     (GuardedCommand. `(=  ~x ~y) (str x " is =  " y))
     (GuardedCommand. `(<= ~x ~y) (str x " is <= " y))]))

(def compare-5-10
  (let [x  5
        y 10]
    [(GuardedCommand. `(>= ~x ~y) (str x " is >= " y))
     (GuardedCommand. `(=  ~x ~y) (str x " is =  " y))
     (GuardedCommand. `(<= ~x ~y) (str x " is <= " y))]))

(def compare-10-5
  (let [x 10
        y  5]
    [(GuardedCommand. `(>= ~x ~y) (str x " is >= " y))
     (GuardedCommand. `(=  ~x ~y) (str x " is =  " y))
     (GuardedCommand. `(<= ~x ~y) (str x " is <= " y))]))






(defn times [n f]
  "Repeatedly evaluate `f` `n` times and concatenate together the results."
  (concat
   (repeatedly n #(eval f))))



(deftest allowed-commands-compare-10-10
  (is (some #(= "10 is >= 10" %) (allowed-commands compare-10-10))
            "When comparing 10 and 10, the \">=\" command was not allowed!")
  (is (some #(= "10 is =  10" %) (allowed-commands compare-10-10))
            "When comparing 10 and 10, the \"=\" command was not allowed!")
  (is (some #(= "10 is <= 10" %) (allowed-commands compare-10-10))
            "When comparing 10 and 10, the \"<=\" command was not allowed!"))

(deftest allowed-commands-compare-5-10
  (is (not (some #(= "5 is >= 10" %) (allowed-commands compare-5-10)))
            "When comparing 5 and 10, the \">=\" command was incorrectly allowed!")
  (is (not (some #(= "5 is =  10" %) (allowed-commands compare-5-10)))
            "When comparing 5 and 10, the \"=\" command was incorrectly allowed!")
  (is      (some #(= "5 is <= 10" %) (allowed-commands compare-5-10))
            "When comparing 5 and 10, the \"<=\" command was not allowed!"))

(deftest allowed-commands-compare-10-5
  (is      (some #(= "10 is >= 5" %) (allowed-commands compare-10-5))
            "When comparing 10 and 10, the \">=\" command was not allowed!")
  (is (not (some #(= "10 is =  5" %) (allowed-commands compare-10-5)))
            "When comparing 10 and 10, the \"=\" command was incorrectly allowed!")
  (is (not (some #(= "10 is <= 5" %) (allowed-commands compare-10-5)))
            "When comparing 10 and 10, the \"<=\" command was incorrectly allowed!"))

(deftest guarded-if-compare-10-10
  (is (some #(= "10 is >= 10" %) (times 100 '(guarded-if (nth compare-10-10 0) (nth compare-10-10 1) (nth compare-10-10 2)))))
  (is (some #(= "10 is =  10" %) (times 100 '(guarded-if (nth compare-10-10 0) (nth compare-10-10 1) (nth compare-10-10 2)))))
  (is (some #(= "10 is <= 10" %) (times 100 '(guarded-if (nth compare-10-10 0) (nth compare-10-10 1) (nth compare-10-10 2))))))




(deftest gcd-test
  (is 5 (gcd 10 25))
  (is 1 (gcd 1024 625))
  (is 100 (gcd 100 10000)))





(deftest test-ns-hook
  (allowed-commands-compare-10-10)
  (allowed-commands-compare-5-10)
  (allowed-commands-compare-10-5)
  (guarded-if-compare-10-10)
  (gcd-test))

(run-tests 'testing)
