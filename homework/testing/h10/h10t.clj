(ns testing)
(use 'clojure.test)
(load-file "collection.clj") ;; The `collection` file provided with the homework.
(load-file "h10.clj")

(deftest contains-checks
  (let [result (summingPairs input 2020)]
    (is (contains? (set result) [374 150]))
    (is (contains? (set result) [626 1030]))
    (is (contains? (set result) [150 1850]))))




(deftest test-ns-hook
  (contains-checks))

(run-tests 'testing)
