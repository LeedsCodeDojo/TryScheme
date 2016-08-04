(define (group-symbols a-list)

  (define (make-symbol-list list)
    (cond
      ((null? list) '())
      ((integer? (car list)) (cons (car list) (make-symbol-list (cdr list))))
      (else '())))
  
  (cond
    ((null? a-list) '())
    ((symbol? (car a-list)) (list (car a-list) (make-symbol-list (cdr a-list))))
    (else (group-symbols (cdr a-list)))))

; assume:
     ;the input is well formed
     ;the first item is always a symbol
     ;the non-symbols are always integers?

(if (eqv? (group-symbols '(a 1 2 3 b 4 5 c d 8 9 e)) '((a (1 2 3)) (b (4 5)) (c ()) (d (8 9)) (e ())))
    "Test Passed"
    "Test Failed!")
