(define (addGraph aList)
  (display aList)
  (cond
    ((null? aList) 0)
    ((integer? (car aList)) (+ (car aList) (addGraph (cdr aList))))
    ((list? (car aList)) (+  (addGraph (car aList)) (addGraph(cdr aList))))
    (else (+ 0 (addGraph (cdr aList))))
))

(addGraph '(4 3 6 6 2 3 4))
(addGraph '((4 (3 6) 6)(2 #t (3 4))))