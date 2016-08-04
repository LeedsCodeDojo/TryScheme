; tree adder

(define (add-tree tree)
  (cond
    ((null? tree) 0)
    ((integer? (car tree)) (+ (car tree) (add-tree (cdr tree))))
    (else (+ (add-tree (car tree)) (add-tree (cdr tree))))))

(if (= (add-tree '(1 2 3)) 6)
    "Test 1 Passed"
    "Test 1 Failed!")

(if (= (add-tree '((1) 2 ((1 2 (3 4)) 3))) 16)
    "Test 2 Passed"
    "Test 2 Failed!")