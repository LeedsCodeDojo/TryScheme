(define (fizzBuzz number)
  (cond
    
    ((and (=(remainder number 3) 0) (= (remainder number 5) 0)) '"FIZZBUZZ")
    ((= (remainder number 3) 0) '"FIZZ")
    ((= (remainder number 5) 0) '"BUZZ")
    (else number))
)

(fizzBuzz 2)
(fizzBuzz 9)
(fizzBuzz 10)
(fizzBuzz 15)

