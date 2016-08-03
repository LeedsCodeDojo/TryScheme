Scheme Quick Reference
======================

### Atoms

-3 ; integer literal
4.3 ; floating point literal
3/4 ; rational literal
#t ; boolean literal, true
#f ; boolean literal, false
"hello" ; string literal
'winter ; symbol

### Lists

’(3 4) ; a two element list
’((4 3) 3) ; lists can be nested
’() ; empty list
’("hi" 43 ("joe")) ; lists can be heterogeneous

**Note**: the quote ' prevents the expression being evaluated - without it, the first argument is assumed to be a function.

### Function Application

(+ 1 2 3) ==> 6
(string-append "hi " "mum") ==> "hi mum"

### Comparison Functions

(= 2 3) ==> #f ; are all the integer operands equal?
(eqv? "abs" "abs") ==> #t ; are all the operands equal?
(< 2 3) ==> #t ; less than (also >, <=, >=, etc.)
(or #f #t) ==> #t ; or (also not, and, etc.)
(integer? 2) ==> #t ; are all the operands integers?

### List Functions

’(a b) ==> '(a b) ; quote suspends evaluation of the list
(car ’(a b)) ==> a ; get head of list (contents of address reg)
(cdr ’(a b)) ==> '(b) ; get rest of list (contents of decrement reg)
(cons "one" '(2 3)) ==> ("one" 2 3) ; put element on head of list
(length ’(a b c)) ==> 3 ; what is the length of a list?
(append ’(a b) ’(y z)) ==> '(a b y z) ; append one list to another
(reverse ’(a b c)) ==> '(c b a) ; reverse a list
(null? ’()) ==> #t ; is the list empty?

### Special Forms

;; Define is used to define new names.  Names may refer to any value
;; (which may be data or a function)
(define x 10)
(define double (lambda (x) (* x 2)))

;; Quote is used to "quote" literal data (symbols or lists)
(quote hello)           => hello
(quote (1 2 3))         => (1 2 3)
'(1 2 foo bar)          => (1 2 foo bar)  ; the tick-mark ' is syntactic sugar

;; Lambda is used to generate new functions
(lambda (x) (+ x 10)                    ; an anonymous function
(define plus10 (lambda (x) (+ x 10)))   ; we've named the function now

;; Cond is a general conditional
(cond 
  ((eq? 'foo 'bar) 'hello)
  ((= 10 20) 'goodbye)
  (#t 'sorry))                  => sorry

;; Let is used to declare/use temporary variables
(let
  ((x 10)
   (y 20))
  (+ x y))
  
### Built-in types and functions

;; arithmetic:  +, -, *, / 
;; relational: <, <=, >, >=, =
(+ 1 2)                    => 3       
(= 1 2)                    => #f   ; use = for numbers

;; Equality and identity:  eq? and equal?
(eq? 'hello 'goodbye)      => #f   ; eq? is an identity test
(eq? 'hello 'hello)        => #t   ; two values are eq if they are the same
(eq? '(1 2) '(1 2))        => #f   ; object...
(define foo '(1 2))      
(define foo bar)
(eq? foo bar)              => #t
(equal? foo bar)           => #t   ; two values are equal if they look the same
(equal? foo '(1 2))        => #t

;; Lists:  cons, car, and cdr
;; Making new lists, via quoting, cons, or list
(define foo '(1 2 3))     
(define bar (cons 1 (cons 2 (cons 3 ()))))
(define baz (list 1 2 3))

;; Process lists with car, cdr, and null?
(null? '(1 2))             => #f
(null? ())                 => #t
(car '(1 2))               => 1
(cdr '(1 2))               => (2)

### Recursion

;; Exponentiation function x^n
(define expt 
  (lambda (x n)
    (cond ((= n 0) 1)
	  (#t (* x (expt x (- n 1)))))))

;; List length
(define length
  (lambda (a-list)
    (cond ((null? a-list) 0)
	  (#t (+ 1 (length (cdr a-list)))))))

### Higher order functions

;; takes two functions and an argument, returns (f (g x))
(define compose 
  (lambda (f g x)
    (f (g x))))

(compose even? (lambda (x) (- x 1)) 10)   => #f

;; takes a function and applies it to every element of a list
(define map 
  (lambda (f a-list)
    (cond ((null? a-list) a-list)
	  (#t (cons (f (car a-list)) (map f (cdr a-list)))))))

(map even? '(1 2 3 4))        => (#f #t #f #t)
