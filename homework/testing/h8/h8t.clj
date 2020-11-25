(ns testing)
(use 'clojure.test)
(load-file "h8.clj")

(deftest naive-exponent
  (is (= (exponent 1 10)  1))
  (is (= (exponent 2  5) 32))
  (is (= (exponent 5  2) 25)))

(deftest tailrec-exponent
  (is (= (exponent-tr 1 10)  1))
  (is (= (exponent-tr 2  5) 32))
  (is (= (exponent-tr 5  2) 25)))

(deftest naive-sumlist
  (is (= (sumlist '(0 1 2 3)) 6))
  (is (= (sumlist '(0 0 0 0)) 0))
  (is (= (sumlist '(10 -1 -1 -1 -1 -1)) 5)))

(deftest tailrec-sumlist
  (is (= (sumlist-tr '(0 1 2 3)) 6))
  (is (= (sumlist-tr '(0 0 0 0)) 0))
  (is (= (sumlist-tr '(10 -1 -1 -1 -1 -1)) 5)))

(deftest naive-flattenlist
  (is (= (flattenlist '((1 2) (3 4) (5 6) (7 8))) '(1 2 3 4 5 6 7 8)))
  (is (= (flattenlist '((0))) '(0)))
  (is (= (flattenlist '((1) ((2) (3)))) '(1 (2) (3)))))

(deftest tailrec-flattenlist
  (is (= (flattenlist-tr '((1 2) (3 4) (5 6) (7 8))) '(1 2 3 4 5 6 7 8)))
  (is (= (flattenlist-tr '((0))) '(0)))
  (is (= (flattenlist-tr '((1) ((2) (3)))) '(1 (2) (3)))))

(deftest naive-postfixes
  (is (= (postfixes '(1 2 3 4 5 6)) '((1 2 3 4 5 6) (2 3 4 5 6) (3 4 5 6) (4 5 6) (5 6) (6) ())))
  (is (= (postfixes '(0)) '((0) ())))
  (is (= (postfixes '(6 5 4 3 2 1)) '((6 5 4 3 2 1) (5 4 3 2 1) (4 3 2 1) (3 2 1) (2 1) (1) ()))))

(deftest tailrec-postfixes
  (is (= (postfixes-tr '(1 2 3 4 5 6)) '((1 2 3 4 5 6) (2 3 4 5 6) (3 4 5 6) (4 5 6) (5 6) (6) ())))
  (is (= (postfixes-tr '(0)) '((0) ())))
  (is (= (postfixes-tr '(6 5 4 3 2 1)) '((6 5 4 3 2 1) (5 4 3 2 1) (4 3 2 1) (3 2 1) (2 1) (1) ()))))




(deftest test-ns-hook
  (naive-exponent)
  (naive-sumlist)
  (naive-flattenlist)
  (naive-postfixes)
  (tailrec-exponent)
  (tailrec-sumlist)
  (tailrec-flattenlist)
  (tailrec-postfixes))

(run-tests 'testing)
